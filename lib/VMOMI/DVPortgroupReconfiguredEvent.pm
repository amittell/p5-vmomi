package VMOMI::DVPortgroupReconfiguredEvent;
use parent 'VMOMI::DVPortgroupEvent';

our @class_members = ( 
    ['configSpec', 'DVPortgroupConfigSpec', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
