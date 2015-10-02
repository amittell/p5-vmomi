package VMOMI::CpuIncompatible1ECX;
use parent 'VMOMI::CpuIncompatible';

our @class_ancestors = ( 
    'CpuIncompatible',
    'VirtualHardwareCompatibilityIssue',
    'VmConfigFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['sse3', 'boolean', 0, 1],
    ['pclmulqdq', 'boolean', 0, 0],
    ['ssse3', 'boolean', 0, 1],
    ['sse41', 'boolean', 0, 1],
    ['sse42', 'boolean', 0, 1],
    ['aes', 'boolean', 0, 0],
    ['other', 'boolean', 0, 1],
    ['otherOnly', 'boolean', 0, 1],
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
