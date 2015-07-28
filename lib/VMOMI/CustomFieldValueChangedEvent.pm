package VMOMI::CustomFieldValueChangedEvent;
use parent 'VMOMI::CustomFieldEvent';

our @class_members = ( 
    ['entity', 'ManagedEntityEventArgument', 0, 1],
    ['fieldKey', undef, 0, 1],
    ['name', undef, 0, 1],
    ['value', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
