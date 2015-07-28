package VMOMI::VsanClusterConfigInfoHostDefaultInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['uuid', undef, 0, 0],
    ['autoClaimStorage', 'boolean', 0, 0],
    ['checksumEnabled', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
