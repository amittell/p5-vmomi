package VMOMI::NetworkRollbackEvent;
use parent 'VMOMI::Event';

our @class_ancestors = ( 
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['methodName', undef, 0, 1],
    ['transactionId', undef, 0, 1],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
