package VMOMI::HostAutoStartManagerConfig;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['defaults', 'AutoStartDefaults', 0, 0],
    ['powerInfo', 'AutoStartPowerInfo', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;