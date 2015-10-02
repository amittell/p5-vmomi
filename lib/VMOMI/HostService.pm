package VMOMI::HostService;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['label', undef, 0, 1],
    ['required', 'boolean', 0, 1],
    ['uninstallable', 'boolean', 0, 1],
    ['running', 'boolean', 0, 1],
    ['ruleset', undef, 1, 0],
    ['policy', undef, 0, 1],
    ['sourcePackage', 'HostServiceSourcePackage', 0, 0],
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
