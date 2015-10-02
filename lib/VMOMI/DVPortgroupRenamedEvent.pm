package VMOMI::DVPortgroupRenamedEvent;
use parent 'VMOMI::DVPortgroupEvent';

our @class_ancestors = ( 
    'DVPortgroupEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['oldName', undef, 0, 1],
    ['newName', undef, 0, 1],
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
