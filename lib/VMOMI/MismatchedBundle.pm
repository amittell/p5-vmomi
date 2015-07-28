package VMOMI::MismatchedBundle;
use parent 'VMOMI::VimFault';

our @class_members = ( 
    ['bundleUuid', undef, 0, 1],
    ['hostUuid', undef, 0, 1],
    ['bundleBuildNumber', undef, 0, 1],
    ['hostBuildNumber', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
