package VMOMI::VirtualMachineImportSpec;
use parent 'VMOMI::ImportSpec';

our @class_members = ( 
    ['configSpec', 'VirtualMachineConfigSpec', 0, 1],
    ['resPoolEntity', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
