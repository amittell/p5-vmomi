package VMOMI::HostDigestInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['digestMethod', undef, 0, 1],
    ['digestValue', undef, 1, 1],
    ['objectName', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;