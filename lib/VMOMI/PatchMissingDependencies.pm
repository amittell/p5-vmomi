package VMOMI::PatchMissingDependencies;
use parent 'VMOMI::PatchNotApplicable';

our @class_members = ( 
    ['prerequisitePatch', undef, 1, 0],
    ['prerequisiteLib', undef, 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
