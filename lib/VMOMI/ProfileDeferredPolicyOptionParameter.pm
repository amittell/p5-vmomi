package VMOMI::ProfileDeferredPolicyOptionParameter;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['inputPath', 'ProfilePropertyPath', 0, 1],
    ['parameter', 'KeyAnyValue', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
