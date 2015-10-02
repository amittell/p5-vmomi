package VMOMI::OvfCpuCompatibility;
use parent 'VMOMI::OvfImport';

our @class_ancestors = ( 
    'OvfImport',
    'OvfFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['registerName', undef, 0, 1],
    ['level', undef, 0, 1],
    ['registerValue', undef, 0, 1],
    ['desiredRegisterValue', undef, 0, 1],
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
