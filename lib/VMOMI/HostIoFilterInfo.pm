package VMOMI::HostIoFilterInfo;
use parent 'VMOMI::IoFilterInfo';

our @class_members = ( 
    ['available', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
