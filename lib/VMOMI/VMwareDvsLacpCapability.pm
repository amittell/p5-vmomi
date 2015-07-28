package VMOMI::VMwareDvsLacpCapability;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['lacpSupported', 'boolean', 0, 0],
    ['multiLacpGroupSupported', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
