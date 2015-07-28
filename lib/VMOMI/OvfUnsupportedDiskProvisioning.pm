package VMOMI::OvfUnsupportedDiskProvisioning;
use parent 'VMOMI::OvfImport';

our @class_members = ( 
    ['diskProvisioning', undef, 0, 1],
    ['supportedDiskProvisioning', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
