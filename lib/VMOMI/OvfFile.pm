package VMOMI::OvfFile;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['deviceId', undef, 0, 1],
    ['path', undef, 0, 1],
    ['compressionMethod', undef, 0, 0],
    ['chunkSize', undef, 0, 0],
    ['size', undef, 0, 1],
    ['capacity', undef, 0, 0],
    ['populatedSize', undef, 0, 0],
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
