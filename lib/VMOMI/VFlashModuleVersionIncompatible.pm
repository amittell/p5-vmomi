package VMOMI::VFlashModuleVersionIncompatible;
use parent 'VMOMI::VimFault';

our @class_members = ( 
    ['moduleName', undef, 0, 1],
    ['vmRequestModuleVersion', undef, 0, 1],
    ['hostMinSupportedVerson', undef, 0, 1],
    ['hostModuleVersion', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
