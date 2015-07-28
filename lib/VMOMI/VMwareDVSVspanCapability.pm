package VMOMI::VMwareDVSVspanCapability;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['mixedDestSupported', 'boolean', 0, 1],
    ['dvportSupported', 'boolean', 0, 1],
    ['remoteSourceSupported', 'boolean', 0, 1],
    ['remoteDestSupported', 'boolean', 0, 1],
    ['encapRemoteSourceSupported', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
