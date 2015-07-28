package VMOMI::VMwareVspanPort;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['portKey', undef, 1, 0],
    ['uplinkPortName', undef, 1, 0],
    ['wildcardPortConnecteeType', undef, 1, 0],
    ['vlans', undef, 1, 0],
    ['ipAddress', undef, 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
