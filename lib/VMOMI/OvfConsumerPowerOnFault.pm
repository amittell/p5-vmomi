package VMOMI::OvfConsumerPowerOnFault;
use parent 'VMOMI::InvalidState';

our @class_members = ( 
    ['extensionKey', undef, 0, 1],
    ['extensionName', undef, 0, 1],
    ['description', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
