package VMOMI::VimVasaProvider;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['url', undef, 0, 1],
    ['name', undef, 0, 0],
    ['selfSignedCertificate', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
