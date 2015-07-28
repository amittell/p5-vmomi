package VMOMI::BackupBlobWriteFailure;
use parent 'VMOMI::DvsFault';

our @class_members = ( 
    ['entityName', undef, 0, 1],
    ['entityType', undef, 0, 1],
    ['fault', 'LocalizedMethodFault', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;