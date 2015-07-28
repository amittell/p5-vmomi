package VMOMI::ServiceInstance;
use parent 'VMOMI::ServiceInstanceOps';

use constant NAMESPACE => 'VMOMI';

use strict;
use warnings;

use IO::Socket::SSL;

sub new {
    my ($class, %args) = @_;
    my ($self, $scheme, $host, $port, $path, $sslKey, $sslCrt, $service_uri, $user_agent,
        $cookie_jar, $conn_cache, $ssl_opts, $version, $namespace);
    
    $scheme     = delete($args{'scheme'})           || 'https';
    $host       = delete($args{'host'})             || 'localhost';
    $port       = delete($args{'port'})             || '443';
    $path       = delete($args{'path'})             || '/sdk';
    $sslKey     = delete($args{'sslKey'})           || 'ssl/client.key';
    $sslCrt     = delete($args{'sslCrt'})           || 'ssl/client.crt';
    #$tunnelPort = delete($args{'sdkTunnelPort'})   || '8089';
    #$tunnelHost = delete($args{'sdkTunnelHost'})   || 'sdkTunnel';
    
    $service_uri = new URI();
    $service_uri->scheme($scheme);
    $service_uri->host($host);
    $service_uri->port($port);
    $service_uri->path($path);
    
    #$tunnel_uri = new URI();
    #$tunnel_uri->scheme($scheme);
    #$tunnel_uri->host($tunnelHost);
    #$tunnel_uri->port($tunnelPort);
    #$tunnel_uri->path($path);
    
    $self = bless {
        'user_agent'    => undef,
        'error'         => undef,
        'soap_action'   => '""',
        'service_uri'   => $service_uri,
    }, $class;
    
    $ssl_opts = {
        verify_hostname => 0,
        SSL_verify_mode => IO::Socket::SSL::SSL_VERIFY_NONE,
#       SSL_key_file    => $sslKey,
#       SSL_cert_file   => $sslCrt, 
    };
    
    $user_agent = new LWP::UserAgent(
        agent    => $self->agent_string,
        ssl_opts => $ssl_opts,
        timeout  => 10,
    );
    
    $conn_cache = new LWP::ConnCache();
    $cookie_jar = new HTTP::Cookies(ignore_discard => 1);
    
    $user_agent->cookie_jar($cookie_jar);
    $user_agent->protocols_allowed(['http', 'https']);
    $user_agent->conn_cache($conn_cache);
    
    $self->user_agent($user_agent);
    
    # Query service namespace and version; generate soap_action
    $version = $self->service_version;
    $namespace = $self->service_namespace;
    
    if (defined $namespace and defined $version) {
        $self->soap_action($namespace . "/" . $version);
    } else {
        return undef;
    }
    
    return $self;
}

sub agent_string {
    return "MinimalVim";
}

sub service_version {
    my $self = shift;
    
    return $self->{'service_version'} if defined $self->{'service_version'};
    
    my ($req, $res, $uri, $xml, $doc, $namespaces, $version);
    
    $uri = $self->service_uri->clone;
    $uri->path($uri->path . "/vimServiceVersions.xml");
    
    $req = new HTTP::Request();
    $req->uri($uri);
    $req->method('GET');
    $req->content_type('text/xml');
    
    $res = $self->user_agent->request($req);
    $xml = new XML::LibXML();
    
    # Verify is_error will not have false positives for non 200 codes from the vSphere API
    if ($res->is_error) {
        Exception::Protocol->throw(
            message => "Failed to retrieve server version at '" . $uri->as_string . "' (" .
            $res->status_line . ")\n"
        );
    }
            
    eval { 
        $doc = $xml->parse_string($res->content) 
    };
    
    # If parse_string() does not parse clean, there must have been a connection or other
    # protocol error.  Set error to the response status line as the XML error should be 
    # non-descriptive.
    if ($@) {
        $self->error($res->status_line);
        return $self->{'service_version'} = undef;
    }
    
    $namespaces = $doc->documentElement->getChildrenByTagName('namespace');
    foreach my $ns (@{ $namespaces || [ ] }) {
        my ($name);
        $name = $ns->getChildrenByTagName('name')->shift;
        if ($name->textContent eq 'urn:vim25') {
            $version = $ns->getChildrenByTagName('version')->shift->textContent;
        }
    }
    $self->error(undef);
    return $self->{'service_version'} = $version;
}

sub service_namespace {
    my $self = shift;
    
    return $self->{'service_namespace'} if defined $self->{'service_namespace'};
    
    my ($req, $res, $uri, $xml, $doc, $target, $namespace);
    
    $uri = $self->service_uri->clone;
    $uri->path($uri->path . "/vimService.wsdl");
    
    $req = new HTTP::Request();
    $req->uri($uri);
    $req->method('GET');
    $req->content_type('text/xml');
    
    $res = $self->user_agent->request($req);
    $xml = new XML::LibXML();

    # Verify is_error will not have false positives for non 200 codes from the vSphere API 
    if ($res->is_error) {
        Exception::Protocol->throw(
            message => "Failed to retrieve server namespace at '" . $uri->as_string . 
                "' (" . $res->status_line . ")\n"
        );
    }
    
    eval { 
        $doc = $xml->parse_string($res->content) 
    };
    
    # If parse_string() does not parse clean, there must have been a connection or other
    # protocol error.  Set error to the response status line as the XML error should be 
    # non-descriptive.
    if ($@) {
        $self->error($res->status_line);
        return $self->{'service_namespace'} = undef;
    }
    
    $target = $doc->documentElement->getAttribute('targetNamespace');
    if (defined $target) {
        ($namespace) = $target =~ /^(urn:vim[0-9a-zA-Z]+)(?:Service)/;
        $self->error(undef);
    } else {
        $self->error("Service target namespace (" . $uri->path . ") unavailable: $@");
    }
    return $self->{'service_namespace'} = $namespace;
}



1;
