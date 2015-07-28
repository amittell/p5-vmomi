package VMOMI::PerfEntityMetricCSV;
use parent 'VMOMI::PerfEntityMetricBase';

our @class_members = ( 
    ['sampleInfoCSV', undef, 0, 1],
    ['value', 'PerfMetricSeriesCSV', 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
