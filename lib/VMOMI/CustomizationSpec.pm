package VMOMI::CustomizationSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['options', 'CustomizationOptions', 0, 0],
    ['identity', 'CustomizationIdentitySettings', 0, 1],
    ['globalIPSettings', 'CustomizationGlobalIPSettings', 0, 1],
    ['nicSettingMap', 'CustomizationAdapterMapping', 1, 0],
    ['encryptionKey', undef, 1, 0],
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
