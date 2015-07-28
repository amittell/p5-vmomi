package VMOMI::HostFirewallRuleset;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['label', undef, 0, 1],
    ['required', 'boolean', 0, 1],
    ['rule', 'HostFirewallRule', 1, 1],
    ['service', undef, 0, 0],
    ['enabled', 'boolean', 0, 1],
    ['allowedHosts', 'HostFirewallRulesetIpList', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
