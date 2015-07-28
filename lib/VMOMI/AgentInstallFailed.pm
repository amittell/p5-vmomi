package VMOMI::AgentInstallFailed;
use parent 'VMOMI::HostConnectFault';

our @class_members = ( 
    ['reason', undef, 0, 0],
    ['statusCode', undef, 0, 0],
    ['installerOutput', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
