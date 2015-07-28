package VMOMI::ArrayOfVMwareDvsLacpGroupConfig;
use parent 'VMOMI::ComplexType';

our @class_members = ( 
    ['VMwareDvsLacpGroupConfig', 'VMwareDvsLacpGroupConfig', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
