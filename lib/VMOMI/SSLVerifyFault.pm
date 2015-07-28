package VMOMI::SSLVerifyFault;
use parent 'VMOMI::HostConnectFault';

our @class_members = ( 
    ['selfSigned', 'boolean', 0, 1],
    ['thumbprint', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
