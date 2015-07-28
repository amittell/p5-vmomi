package VMOMI::IoFilterInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['id', undef, 0, 1],
    ['name', undef, 0, 1],
    ['vendor', undef, 0, 1],
    ['version', undef, 0, 1],
    ['summary', undef, 0, 0],
    ['releaseDate', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
