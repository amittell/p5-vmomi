package VMOMI::HostAccessControlEntry;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['principal', undef, 0, 1],
    ['group', 'boolean', 0, 1],
    ['accessMode', 'HostAccessMode', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
