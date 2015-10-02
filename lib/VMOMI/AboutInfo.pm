package VMOMI::AboutInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['name', undef, 0, 1],
    ['fullName', undef, 0, 1],
    ['vendor', undef, 0, 1],
    ['version', undef, 0, 1],
    ['build', undef, 0, 1],
    ['localeVersion', undef, 0, 0],
    ['localeBuild', undef, 0, 0],
    ['osType', undef, 0, 1],
    ['productLineId', undef, 0, 1],
    ['apiType', undef, 0, 1],
    ['apiVersion', undef, 0, 1],
    ['instanceUuid', undef, 0, 0],
    ['licenseProductName', undef, 0, 0],
    ['licenseProductVersion', undef, 0, 0],
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
