package VMOMI::HostInternetScsiHbaDigestCapabilities;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['headerDigestSettable', 'boolean', 0, 0],
    ['dataDigestSettable', 'boolean', 0, 0],
    ['targetHeaderDigestSettable', 'boolean', 0, 0],
    ['targetDataDigestSettable', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
