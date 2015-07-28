package VMOMI::HttpNfcLeaseDatastoreLeaseInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['datastoreKey', undef, 0, 1],
    ['hosts', 'HttpNfcLeaseHostInfo', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;