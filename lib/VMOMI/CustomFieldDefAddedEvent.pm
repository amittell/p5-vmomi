package VMOMI::CustomFieldDefAddedEvent;
use parent 'VMOMI::CustomFieldDefEvent';

our @class_members = ( );

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;