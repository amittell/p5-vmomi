package VMOMI::InsufficientStandbyMemoryResource;
use parent 'VMOMI::InsufficientStandbyResource';

our @class_members = ( 
    ['available', undef, 0, 1],
    ['requested', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;