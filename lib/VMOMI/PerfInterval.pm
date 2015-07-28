package VMOMI::PerfInterval;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['key', undef, 0, 1],
    ['samplingPeriod', undef, 0, 1],
    ['name', undef, 0, 1],
    ['length', undef, 0, 1],
    ['level', undef, 0, 0],
    ['enabled', 'boolean', 0, 1],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
