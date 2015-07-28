package VMOMI::InvalidDeviceOperation;
use parent 'VMOMI::InvalidDeviceSpec';

our @class_members = ( 
    ['badOp', 'VirtualDeviceConfigSpecOperation', 0, 0],
    ['badFileOp', 'VirtualDeviceConfigSpecFileOperation', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
