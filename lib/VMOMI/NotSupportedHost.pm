package VMOMI::NotSupportedHost;
use parent 'VMOMI::HostConnectFault';

our @class_members = ( 
    ['productName', undef, 0, 0],
    ['productVersion', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
