package VMOMI::HostPlugStoreTopologyPlugin;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['name', undef, 0, 1],
    ['device', undef, 1, 0],
    ['claimedPath', undef, 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
