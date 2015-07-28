package VMOMI::FileTooLarge;
use parent 'VMOMI::FileFault';

our @class_members = ( 
    ['datastore', undef, 0, 1],
    ['fileSize', undef, 0, 1],
    ['maxFileSize', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
