package VMOMI::EventDescription;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['category', 'ElementDescription', 1, 1],
    ['eventInfo', 'EventDescriptionEventDetail', 1, 1],
    ['enumeratedTypes', 'EnumDescription', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
