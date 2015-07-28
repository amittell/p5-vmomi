package VMOMI::VirtualMachineConfigOption;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['version', undef, 0, 1],
    ['description', undef, 0, 1],
    ['guestOSDescriptor', 'GuestOsDescriptor', 1, 1],
    ['guestOSDefaultIndex', undef, 0, 1],
    ['hardwareOptions', 'VirtualHardwareOption', 0, 1],
    ['capabilities', 'VirtualMachineCapability', 0, 1],
    ['datastore', 'DatastoreOption', 0, 1],
    ['defaultDevice', 'VirtualDevice', 1, 0],
    ['supportedMonitorType', undef, 1, 1],
    ['supportedOvfEnvironmentTransport', undef, 1, 0],
    ['supportedOvfInstallTransport', undef, 1, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
