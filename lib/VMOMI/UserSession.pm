package VMOMI::UserSession;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['userName', undef, 0, 1],
    ['fullName', undef, 0, 1],
    ['loginTime', undef, 0, 1],
    ['lastActiveTime', undef, 0, 1],
    ['locale', undef, 0, 1],
    ['messageLocale', undef, 0, 1],
    ['extensionSession', 'boolean', 0, 0],
    ['ipAddress', undef, 0, 0],
    ['userAgent', undef, 0, 0],
    ['callCount', undef, 0, 0],
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
