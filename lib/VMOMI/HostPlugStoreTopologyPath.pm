package VMOMI::HostPlugStoreTopologyPath;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['name', undef, 0, 1],
    ['channelNumber', undef, 0, 0],
    ['targetNumber', undef, 0, 0],
    ['lunNumber', undef, 0, 0],
    ['adapter', undef, 0, 0],
    ['target', undef, 0, 0],
    ['device', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
