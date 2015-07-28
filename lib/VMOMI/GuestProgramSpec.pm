package VMOMI::GuestProgramSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['programPath', undef, 0, 1],
    ['arguments', undef, 0, 1],
    ['workingDirectory', undef, 0, 0],
    ['envVariables', undef, 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
