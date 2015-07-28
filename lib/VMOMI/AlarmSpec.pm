package VMOMI::AlarmSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['name', undef, 0, 1],
    ['systemName', undef, 0, 0],
    ['description', undef, 0, 1],
    ['enabled', 'boolean', 0, 1],
    ['expression', 'AlarmExpression', 0, 1],
    ['action', 'AlarmAction', 0, 0],
    ['actionFrequency', undef, 0, 0],
    ['setting', 'AlarmSetting', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
