package VMOMI::HostNasVolumeSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['remoteHost', undef, 0, 1],
    ['remotePath', undef, 0, 1],
    ['localPath', undef, 0, 1],
    ['accessMode', undef, 0, 1],
    ['type', undef, 0, 0],
    ['userName', undef, 0, 0],
    ['password', undef, 0, 0],
    ['remoteHostNames', undef, 1, 0],
    ['securityType', undef, 0, 0],
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
