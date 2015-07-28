package VMOMI::CustomizationLinuxPrep;
use parent 'VMOMI::CustomizationIdentitySettings';

our @class_members = ( 
    ['hostName', 'CustomizationName', 0, 1],
    ['domain', undef, 0, 1],
    ['timeZone', undef, 0, 0],
    ['hwClockUTC', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
