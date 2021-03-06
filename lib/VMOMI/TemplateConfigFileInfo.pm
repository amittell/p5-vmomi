package VMOMI::TemplateConfigFileInfo;
use parent 'VMOMI::VmConfigFileInfo';

our @class_ancestors = ( 
    'VmConfigFileInfo',
    'FileInfo',
    'DynamicData',
);

our @class_members = ( );

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
