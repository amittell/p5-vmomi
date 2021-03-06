package VMOMI::VimVasaProviderStatePerArray;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['priority', undef, 0, 1],
    ['arrayId', undef, 0, 1],
    ['active', 'boolean', 0, 1],
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
