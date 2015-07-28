package VMOMI::CpuIncompatible;
use parent 'VMOMI::VirtualHardwareCompatibilityIssue';

our @class_members = ( 
    ['level', undef, 0, 1],
    ['registerName', undef, 0, 1],
    ['registerBits', undef, 0, 0],
    ['desiredBits', undef, 0, 0],
    ['host', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
