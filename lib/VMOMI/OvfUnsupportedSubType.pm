package VMOMI::OvfUnsupportedSubType;
use parent 'VMOMI::OvfUnsupportedPackage';

our @class_members = ( 
    ['elementName', undef, 0, 1],
    ['instanceId', undef, 0, 1],
    ['deviceType', undef, 0, 1],
    ['deviceSubType', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;