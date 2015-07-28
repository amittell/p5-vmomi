package VMOMI::EventDescriptionEventDetail;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['description', undef, 0, 0],
    ['category', undef, 0, 1],
    ['formatOnDatacenter', undef, 0, 1],
    ['formatOnComputeResource', undef, 0, 1],
    ['formatOnHost', undef, 0, 1],
    ['formatOnVm', undef, 0, 1],
    ['fullFormat', undef, 0, 1],
    ['longDescription', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
