package VMOMI::VmDasBeingResetWithScreenshotEvent;
use parent 'VMOMI::VmDasBeingResetEvent';

our @class_ancestors = ( 
    'VmDasBeingResetEvent',
    'VmEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['screenshotFilePath', undef, 0, 1],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
