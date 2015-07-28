package VMOMI::NicSettingMismatch;
use parent 'VMOMI::CustomizationFault';

our @class_members = ( 
    ['numberOfNicsInSpec', undef, 0, 1],
    ['numberOfNicsInVM', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
