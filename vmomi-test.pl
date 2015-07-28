#!/usr/bin/perl

use strict;
use warnings;

use lib 'lib';

use VMOMI;
use Getopt::Long;
use Data::Dumper;
use Try::Tiny;

my ($host, $user, $pass, $si, $content, $fault, $sm, $session, $session_ok);

$user = undef;
$pass = undef;
$host = 'localhost';

GetOptions(
	"user=s" => \$user,
	"pass=s" => \$pass,
	"host=s" => \$host,
);

die "Must specify user and pass parameters" if not (defined $user and defined $pass);

$si = new VMOMI::ServiceInstance(
    host => $host ) || die "Failed to initialize ServiceInstance";

$content = $si->RetrieveServiceContent(
    _this => new VMOMI::ManagedObjectReference(
    	type  => 'ServiceInstance', 
    	value => 'ServiceInstance',
    )
);

$sm = $content->sessionManager;

try {
    $session = $sm->Login(
        userName => $user, 
        password => $pass 
    );
} catch {
	die $_;
};

print "Current session userName: " . $sm->currentSession->userName . "\n";

print "rootFolder name: " . $content->rootFolder->name . "\n";
print "Connected to vSphere API version: " . $content->about->version . "\n";

print "A VM name is: ";
print $content->rootFolder->childEntity->[0]->vmFolder->childEntity->[2]->name . "\n";

$sm->Logout( );

