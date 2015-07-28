package VMOMI::ModeInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['browse', undef, 0, 0],
    ['read', undef, 0, 1],
    ['modify', undef, 0, 1],
    ['use', undef, 0, 1],
    ['admin', undef, 0, 0],
    ['full', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
