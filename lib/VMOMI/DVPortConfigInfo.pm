package VMOMI::DVPortConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['name', undef, 0, 0],
    ['scope', 'ManagedObjectReference', 1, 0],
    ['description', undef, 0, 0],
    ['setting', 'DVPortSetting', 0, 0],
    ['configVersion', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;