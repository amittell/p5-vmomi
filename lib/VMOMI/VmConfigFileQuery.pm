package VMOMI::VmConfigFileQuery;
use parent 'VMOMI::FileQuery';

our @class_members = ( 
    ['filter', 'VmConfigFileQueryFilter', 0, 0],
    ['details', 'VmConfigFileQueryFlags', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
