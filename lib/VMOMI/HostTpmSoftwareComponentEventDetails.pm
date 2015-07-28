package VMOMI::HostTpmSoftwareComponentEventDetails;
use parent 'VMOMI::HostTpmEventDetails';

our @class_members = ( 
    ['componentName', undef, 0, 1],
    ['vibName', undef, 0, 1],
    ['vibVersion', undef, 0, 1],
    ['vibVendor', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
