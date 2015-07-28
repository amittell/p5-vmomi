package VMOMI::StoragePod;
use parent 'VMOMI::Folder';

our @class_members = ( 
    ['podStorageDrsEntry', 'PodStorageDrsEntry', 0, 0],
    ['summary', 'StoragePodSummary', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
