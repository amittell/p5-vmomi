package VMOMI::VirtualMachineStorageSummary;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['committed', undef, 0, 1],
    ['uncommitted', undef, 0, 1],
    ['unshared', undef, 0, 1],
    ['timestamp', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
