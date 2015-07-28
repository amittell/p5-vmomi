package VMOMI::UserSearchResult;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['principal', undef, 0, 1],
    ['fullName', undef, 0, 0],
    ['group', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
