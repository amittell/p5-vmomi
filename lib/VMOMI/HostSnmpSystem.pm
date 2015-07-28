package VMOMI::HostSnmpSystem;
use parent 'VMOMI::ManagedObject';

our @class_members = (
    ['configuration', 'HostSnmpConfigSpec', 0, 1],
    ['limit', 'HostSnmpSystemAgentLimits', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;