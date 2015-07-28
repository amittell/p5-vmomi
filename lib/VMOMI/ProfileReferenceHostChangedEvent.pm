package VMOMI::ProfileReferenceHostChangedEvent;
use parent 'VMOMI::ProfileEvent';

our @class_members = ( 
    ['referenceHost', 'ManagedObjectReference', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
