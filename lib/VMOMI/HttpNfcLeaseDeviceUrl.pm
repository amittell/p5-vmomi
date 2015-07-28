package VMOMI::HttpNfcLeaseDeviceUrl;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['importKey', undef, 0, 1],
    ['url', undef, 0, 1],
    ['sslThumbprint', undef, 0, 1],
    ['disk', 'boolean', 0, 0],
    ['targetId', undef, 0, 0],
    ['datastoreKey', undef, 0, 0],
    ['fileSize', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
