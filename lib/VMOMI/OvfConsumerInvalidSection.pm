package VMOMI::OvfConsumerInvalidSection;
use parent 'VMOMI::OvfConsumerCallbackFault';

our @class_members = ( 
    ['lineNumber', undef, 0, 1],
    ['description', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
