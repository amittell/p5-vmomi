package VMOMI::HostLowLevelProvisioningManagerVmMigrationStatus;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['migrationId', undef, 0, 1],
    ['type', undef, 0, 1],
    ['source', 'boolean', 0, 1],
    ['consideredSuccessful', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
