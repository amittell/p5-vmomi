package VMOMI::ExtendedElementDescription;
use parent 'VMOMI::ElementDescription';

our @class_members = ( 
    ['messageCatalogKeyPrefix', undef, 0, 1],
    ['messageArg', 'KeyAnyValue', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
