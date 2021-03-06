package VMOMI::LocalizationManagerMessageCatalog;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['moduleName', undef, 0, 1],
    ['catalogName', undef, 0, 1],
    ['locale', undef, 0, 1],
    ['catalogUri', undef, 0, 1],
    ['lastModified', undef, 0, 0],
    ['md5sum', undef, 0, 0],
    ['version', undef, 0, 0],
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
