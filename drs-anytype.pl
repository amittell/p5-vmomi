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
    $session = $sm->Login(userName => $user, password => $pass);
} catch {
	die $_;
};

#print Dumper($si->capability);

print "Current session userName: " . $sm->currentSession->userName . "\n";

print "rootFolder name: " . $content->rootFolder->name . "\n";
print "Connected to vSphere API version: " . $content->about->version . "\n";

my $vm1 = new VMOMI::VirtualMachine(
    $stub, 
    new VMOMI::ManagedObjectReference(
        type => 'VirtualMachine',
        value => 'vm-982'
    )
);

my $cluster = new VMOMI::ClusterComputeResource($stub,
    new VMOMI::ManagedObjectReference(
        type => 'ClusterComputeResource',
        value => 'domain-c3351'
    )
);

print "A cluster name is: ";
print $cluster->name . "\n";

my $rules = $cluster->configurationEx->rule;

foreach my $rule ( @$rules ) {
    print $rule->name . "\n";
    print $rule->enabled . "\n";
    $rule->enabled(0);
    $rule->name('renamed2');
}

my $rulespec = new VMOMI::ClusterRuleSpec(
    info => $rules->[0], 
    operation => new VMOMI::ArrayUpdateOperation('remove'),
    removeKey => new VMOMI::PrimitiveType($rules->[0]->key, "int"),
);
my $spec = new VMOMI::ClusterConfigSpec(rulesSpec => [$rulespec], modify => 0);

try {
    $cluster->ReconfigureCluster_Task(spec => $spec, modify => 1);
} catch {
    die $_;
};

$sm->Logout( );

