package VMOMI::GuestProcessInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['name', undef, 0, 1],
    ['pid', undef, 0, 1],
    ['owner', undef, 0, 1],
    ['cmdLine', undef, 0, 1],
    ['startTime', undef, 0, 1],
    ['endTime', undef, 0, 0],
    ['exitCode', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
