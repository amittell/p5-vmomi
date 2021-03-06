package VMOMI::SendEmailAction;
use parent 'VMOMI::Action';

our @class_ancestors = ( 
    'Action',
    'DynamicData',
);

our @class_members = ( 
    ['toList', undef, 0, 1],
    ['ccList', undef, 0, 1],
    ['subject', undef, 0, 1],
    ['body', undef, 0, 1],
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
