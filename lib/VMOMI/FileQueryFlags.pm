package VMOMI::FileQueryFlags;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['fileType', 'boolean', 0, 1],
    ['fileSize', 'boolean', 0, 1],
    ['modification', 'boolean', 0, 1],
    ['fileOwner', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
