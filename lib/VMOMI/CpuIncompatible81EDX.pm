package VMOMI::CpuIncompatible81EDX;
use parent 'VMOMI::CpuIncompatible';

our @class_members = ( 
    ['nx', 'boolean', 0, 1],
    ['ffxsr', 'boolean', 0, 1],
    ['rdtscp', 'boolean', 0, 1],
    ['lm', 'boolean', 0, 1],
    ['other', 'boolean', 0, 1],
    ['otherOnly', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
