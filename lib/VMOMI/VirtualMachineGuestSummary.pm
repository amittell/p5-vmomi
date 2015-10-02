package VMOMI::VirtualMachineGuestSummary;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['guestId', undef, 0, 0],
    ['guestFullName', undef, 0, 0],
    ['toolsStatus', 'VirtualMachineToolsStatus', 0, 0],
    ['toolsVersionStatus', undef, 0, 0],
    ['toolsVersionStatus2', undef, 0, 0],
    ['toolsRunningStatus', undef, 0, 0],
    ['hostName', undef, 0, 0],
    ['ipAddress', undef, 0, 0],
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
