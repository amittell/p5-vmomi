package VMOMI::ServiceConsolePortGroupProfile;
use parent 'VMOMI::PortGroupProfile';

our @class_ancestors = ( 
    'PortGroupProfile',
    'ApplyProfile',
    'DynamicData',
);

our @class_members = ( 
    ['ipConfig', 'IpAddressProfile', 0, 1],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
