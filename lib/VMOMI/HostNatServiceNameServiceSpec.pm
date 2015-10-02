package VMOMI::HostNatServiceNameServiceSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['dnsAutoDetect', 'boolean', 0, 1],
    ['dnsPolicy', undef, 0, 1],
    ['dnsRetries', undef, 0, 1],
    ['dnsTimeout', undef, 0, 1],
    ['dnsNameServer', undef, 1, 0],
    ['nbdsTimeout', undef, 0, 1],
    ['nbnsRetries', undef, 0, 1],
    ['nbnsTimeout', undef, 0, 1],
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
