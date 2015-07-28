package VMOMI::IscsiPortInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['vnicDevice', undef, 0, 0],
    ['vnic', 'HostVirtualNic', 0, 0],
    ['pnicDevice', undef, 0, 0],
    ['pnic', 'PhysicalNic', 0, 0],
    ['switchName', undef, 0, 0],
    ['switchUuid', undef, 0, 0],
    ['portgroupName', undef, 0, 0],
    ['portgroupKey', undef, 0, 0],
    ['portKey', undef, 0, 0],
    ['complianceStatus', 'IscsiStatus', 0, 0],
    ['pathStatus', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
