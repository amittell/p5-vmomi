package VMOMI::DVSPolicy;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['autoPreInstallAllowed', 'boolean', 0, 0],
    ['autoUpgradeAllowed', 'boolean', 0, 0],
    ['partialUpgradeAllowed', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
