package VMOMI::VasaProviderContainerSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['vasaProviderInfo', 'VimVasaProviderInfo', 1, 0],
    ['scId', undef, 0, 1],
    ['deleted', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
