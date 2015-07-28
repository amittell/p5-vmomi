package VMOMI::OvfManager;
use parent 'VMOMI::ManagedObject';

our @class_members = (
    ['ovfExportOption', 'OvfOptionInfo', 1, 0],
    ['ovfImportOption', 'OvfOptionInfo', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;