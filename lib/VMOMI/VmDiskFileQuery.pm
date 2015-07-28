package VMOMI::VmDiskFileQuery;
use parent 'VMOMI::FileQuery';

our @class_members = ( 
    ['filter', 'VmDiskFileQueryFilter', 0, 0],
    ['details', 'VmDiskFileQueryFlags', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
