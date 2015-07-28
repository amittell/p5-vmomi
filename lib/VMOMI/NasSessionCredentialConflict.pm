package VMOMI::NasSessionCredentialConflict;
use parent 'VMOMI::NasConfigFault';

our @class_members = ( 
    ['remoteHost', undef, 0, 1],
    ['remotePath', undef, 0, 1],
    ['userName', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
