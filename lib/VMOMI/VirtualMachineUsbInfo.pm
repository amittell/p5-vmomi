package VMOMI::VirtualMachineUsbInfo;
use parent 'VMOMI::VirtualMachineTargetInfo';

our @class_ancestors = ( 
    'VirtualMachineTargetInfo',
    'DynamicData',
);

our @class_members = ( 
    ['description', undef, 0, 1],
    ['vendor', undef, 0, 1],
    ['product', undef, 0, 1],
    ['physicalPath', undef, 0, 1],
    ['family', undef, 1, 0],
    ['speed', undef, 1, 0],
    ['summary', 'VirtualMachineSummary', 0, 0],
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
