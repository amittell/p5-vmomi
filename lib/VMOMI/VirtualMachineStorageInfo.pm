package VMOMI::VirtualMachineStorageInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['perDatastoreUsage', 'VirtualMachineUsageOnDatastore', 1, 0],
    ['timestamp', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;