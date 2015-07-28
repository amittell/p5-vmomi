package VMOMI::HostHyperThreadScheduleInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['available', 'boolean', 0, 1],
    ['active', 'boolean', 0, 1],
    ['config', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
