package VMOMI::DvsOutOfSyncHostArgument;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['outOfSyncHost', 'HostEventArgument', 0, 1],
    ['configParamters', undef, 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
