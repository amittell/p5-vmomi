package VMOMI::PerformanceManagerCounterLevelMapping;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['counterId', undef, 0, 1],
    ['aggregateLevel', undef, 0, 0],
    ['perDeviceLevel', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;