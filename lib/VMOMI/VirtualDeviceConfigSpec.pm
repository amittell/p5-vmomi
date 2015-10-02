package VMOMI::VirtualDeviceConfigSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['operation', 'VirtualDeviceConfigSpecOperation', 0, 0],
    ['fileOperation', 'VirtualDeviceConfigSpecFileOperation', 0, 0],
    ['device', 'VirtualDevice', 0, 1],
    ['profile', 'VirtualMachineProfileSpec', 1, 0],
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
