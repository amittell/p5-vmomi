package VMOMI::ThirdPartyLicenseAssignmentFailed;
use parent 'VMOMI::RuntimeFault';

our @class_members = ( 
    ['host', 'ManagedObjectReference', 0, 1],
    ['module', undef, 0, 1],
    ['reason', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
