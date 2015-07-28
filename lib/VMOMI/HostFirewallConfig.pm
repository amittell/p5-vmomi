package VMOMI::HostFirewallConfig;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['rule', 'HostFirewallConfigRuleSetConfig', 1, 0],
    ['defaultBlockingPolicy', 'HostFirewallDefaultPolicy', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
