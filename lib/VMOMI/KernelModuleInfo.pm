package VMOMI::KernelModuleInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['id', undef, 0, 1],
    ['name', undef, 0, 1],
    ['version', undef, 0, 1],
    ['filename', undef, 0, 1],
    ['optionString', undef, 0, 1],
    ['loaded', 'boolean', 0, 1],
    ['enabled', 'boolean', 0, 1],
    ['useCount', undef, 0, 1],
    ['readOnlySection', 'KernelModuleSectionInfo', 0, 1],
    ['writableSection', 'KernelModuleSectionInfo', 0, 1],
    ['textSection', 'KernelModuleSectionInfo', 0, 1],
    ['dataSection', 'KernelModuleSectionInfo', 0, 1],
    ['bssSection', 'KernelModuleSectionInfo', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
