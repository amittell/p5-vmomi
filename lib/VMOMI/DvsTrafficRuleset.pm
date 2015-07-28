package VMOMI::DvsTrafficRuleset;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 0],
    ['enabled', 'boolean', 0, 0],
    ['precedence', undef, 0, 0],
    ['rules', 'DvsTrafficRule', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;