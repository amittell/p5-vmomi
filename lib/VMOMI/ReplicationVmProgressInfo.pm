package VMOMI::ReplicationVmProgressInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['progress', undef, 0, 1],
    ['bytesTransferred', undef, 0, 1],
    ['bytesToTransfer', undef, 0, 1],
    ['checksumTotalBytes', undef, 0, 0],
    ['checksumComparedBytes', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
