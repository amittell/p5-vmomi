package VMOMI::VirtualPCIPassthroughVmiopBackingOption;
use parent 'VMOMI::VirtualPCIPassthroughPluginBackingOption';

our @class_members = ( 
    ['vgpu', 'StringOption', 0, 1],
    ['maxInstances', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
