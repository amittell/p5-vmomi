package VMOMI::VirtualMachineVMCIDeviceOptionFilterSpecOption;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['action', 'ChoiceOption', 0, 1],
    ['protocol', 'ChoiceOption', 0, 1],
    ['direction', 'ChoiceOption', 0, 1],
    ['lowerDstPortBoundary', 'LongOption', 0, 1],
    ['upperDstPortBoundary', 'LongOption', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
