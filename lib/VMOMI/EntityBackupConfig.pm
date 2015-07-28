package VMOMI::EntityBackupConfig;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['entityType', undef, 0, 1],
    ['configBlob', undef, 0, 1],
    ['key', undef, 0, 0],
    ['name', undef, 0, 0],
    ['container', 'ManagedObjectReference', 0, 0],
    ['configVersion', undef, 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
