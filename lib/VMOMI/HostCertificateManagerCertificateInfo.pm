package VMOMI::HostCertificateManagerCertificateInfo;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['issuer', undef, 0, 0],
    ['notBefore', undef, 0, 0],
    ['notAfter', undef, 0, 0],
    ['subject', undef, 0, 0],
    ['status', undef, 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
