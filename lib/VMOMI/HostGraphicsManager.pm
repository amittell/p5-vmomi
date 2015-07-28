package VMOMI::HostGraphicsManager;
use parent 'VMOMI::ExtensibeManagedObject';

our @class_members = (
    ['graphicsInfo', 'HostGraphicsInfo', 1, 0],
    ['sharedPassthruGpuTypes', undef, 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;