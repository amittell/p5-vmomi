package VMOMI::GuestMappedAliases;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['base64Cert', undef, 0, 1],
    ['username', undef, 0, 1],
    ['subjects', 'GuestAuthSubject', 1, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;