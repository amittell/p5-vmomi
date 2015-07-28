package VMOMI::ServiceLocator;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['instanceUuid', undef, 0, 1],
    ['url', undef, 0, 1],
    ['credential', 'ServiceLocatorCredential', 0, 1],
    ['sslThumbprint', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
