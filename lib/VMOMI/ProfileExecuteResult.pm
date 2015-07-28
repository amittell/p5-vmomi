package VMOMI::ProfileExecuteResult;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['status', undef, 0, 1],
    ['configSpec', 'HostConfigSpec', 0, 0],
    ['inapplicablePath', undef, 1, 0],
    ['requireInput', 'ProfileDeferredPolicyOptionParameter', 1, 0],
    ['error', 'ProfileExecuteError', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
