package VMOMI::HostPowerSystem;
use parent 'VMOMI::ManagedObject';

our @class_members = (
    ['capability', 'PowerSystemCapability', 0, 1],
    ['info', 'PowerSystemInfo', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;