package VMOMI::DiskChangeInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['startOffset', undef, 0, 1],
    ['length', undef, 0, 1],
    ['changedArea', 'DiskChangeExtent', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
