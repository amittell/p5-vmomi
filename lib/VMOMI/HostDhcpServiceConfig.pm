package VMOMI::HostDhcpServiceConfig;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['changeOperation', undef, 0, 0],
    ['key', undef, 0, 1],
    ['spec', 'HostDhcpServiceSpec', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;