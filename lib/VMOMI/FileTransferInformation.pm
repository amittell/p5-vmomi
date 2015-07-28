package VMOMI::FileTransferInformation;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['attributes', 'GuestFileAttributes', 0, 1],
    ['size', undef, 0, 1],
    ['url', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
