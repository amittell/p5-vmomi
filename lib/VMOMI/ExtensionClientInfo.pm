package VMOMI::ExtensionClientInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['version', undef, 0, 1],
    ['description', 'Description', 0, 1],
    ['company', undef, 0, 1],
    ['type', undef, 0, 1],
    ['url', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
