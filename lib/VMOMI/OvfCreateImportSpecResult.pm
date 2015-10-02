package VMOMI::OvfCreateImportSpecResult;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['importSpec', 'ImportSpec', 0, 0],
    ['fileItem', 'OvfFileItem', 1, 0],
    ['warning', 'LocalizedMethodFault', 1, 0],
    ['error', 'LocalizedMethodFault', 1, 0],
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
