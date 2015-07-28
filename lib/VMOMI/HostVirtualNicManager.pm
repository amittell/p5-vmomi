package VMOMI::HostVirtualNicManager;
use parent 'VMOMI::ExtensibeManagedObject';

our @class_members = (
    ['info', 'HostVirtualNicManagerInfo', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;