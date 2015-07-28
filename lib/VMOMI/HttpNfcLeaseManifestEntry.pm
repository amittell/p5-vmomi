package VMOMI::HttpNfcLeaseManifestEntry;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['sha1', undef, 0, 1],
    ['size', undef, 0, 1],
    ['disk', 'boolean', 0, 1],
    ['capacity', undef, 0, 0],
    ['populatedSize', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
