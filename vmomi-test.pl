#!/usr/bin/perl

use strict;
use warnings;

use lib 'lib';

use VMOMI;
use Getopt::Long;
use Data::Dumper;
use Try::Tiny;

my ($host, $user, $pass, $stub, $si, $content, $fault, $sm, $session, $session_ok);

$user = undef;
$pass = undef;
$host = 'localhost';

GetOptions(
	"user=s" => \$user,
	"pass=s" => \$pass,
	"host=s" => \$host,
);

die "Must specify user and pass parameters" if not (defined $user and defined $pass);

$stub = new VMOMI::SoapStub(host => $host) || die "Failed to initialize SoapStub";

$si = new VMOMI::ServiceInstance(
    $stub, 
    new VMOMI::ManagedObjectReference(
        type => 'ServiceInstance',
        value => 'ServiceInstance',
    ),
);

$content = $si->RetrieveServiceContent(_this => $si);
$sm = $content->sessionManager;

try {
    $session = $sm->Login(
        userName => $user, 
        password => $pass 
    );
} catch {
	die $_;
};

#print Dumper($si->capability);


print "Current session userName: " . $sm->currentSession->userName . "\n";

print "rootFolder name: " . $content->rootFolder->name . "\n";
print "Connected to vSphere API version: " . $content->about->version . "\n";

print "A VM name is: ";
print $content->rootFolder->childEntity->[0]->vmFolder->childEntity->[3]->name . "\n";


$sm->Logout( );

