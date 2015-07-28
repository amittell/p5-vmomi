package VMOMI::HostDatastoreBrowserSearchSpec;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['query', 'FileQuery', 1, 0],
    ['details', 'FileQueryFlags', 0, 0],
    ['searchCaseInsensitive', 'boolean', 0, 0],
    ['matchPattern', undef, 1, 0],
    ['sortFoldersFirst', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
