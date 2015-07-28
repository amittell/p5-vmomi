package VMOMI::PerfEntityMetric;
use parent 'VMOMI::PerfEntityMetricBase';

our @class_members = ( 
    ['sampleInfo', 'PerfSampleInfo', 1, 0],
    ['value', 'PerfMetricSeries', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
