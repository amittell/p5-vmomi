package VMOMI::DvsPortLinkDownEvent;
use parent 'VMOMI::DvsEvent';

our @class_ancestors = ( 
    'DvsEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['portKey', undef, 0, 1],
    ['runtimeInfo', 'DVPortStatus', 0, 0],
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
