package VMOMI::StoragePodSummary;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['name', undef, 0, 1],
    ['capacity', undef, 0, 1],
    ['freeSpace', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
