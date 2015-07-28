package VMOMI::VirtualMachineSnapshot;
use parent 'VMOMI::ManagedEntity';

our @class_members = ( 
    ['childSnapshot', 'ManagedObjectReference', 1, 0],
    ['config', 'VirtualMachineConfigInfo ', 0, 1],
    ['vm', 'ManagedObjectReference', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
