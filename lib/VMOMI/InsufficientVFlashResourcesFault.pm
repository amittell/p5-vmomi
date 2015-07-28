package VMOMI::InsufficientVFlashResourcesFault;
use parent 'VMOMI::InsufficientResourcesFault';

our @class_members = ( 
    ['freeSpaceInMB', undef, 0, 0],
    ['freeSpace', undef, 0, 1],
    ['requestedSpaceInMB', undef, 0, 0],
    ['requestedSpace', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
