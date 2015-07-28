package VMOMI::VirtualAppImportSpec;
use parent 'VMOMI::ImportSpec';

our @class_members = ( 
    ['name', undef, 0, 1],
    ['vAppConfigSpec', 'VAppConfigSpec', 0, 1],
    ['resourcePoolSpec', 'ResourceConfigSpec', 0, 1],
    ['child', 'ImportSpec', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
