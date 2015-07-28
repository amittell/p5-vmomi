package VMOMI::GuestOsDescriptor;
use parent 'VMOMI::DynamicData';

our @class_members = ( 
    ['id', undef, 0, 1],
    ['family', undef, 0, 1],
    ['fullName', undef, 0, 1],
    ['supportedMaxCPUs', undef, 0, 1],
    ['numSupportedPhysicalSockets', undef, 0, 0],
    ['numSupportedCoresPerSocket', undef, 0, 0],
    ['supportedMinMemMB', undef, 0, 1],
    ['supportedMaxMemMB', undef, 0, 1],
    ['recommendedMemMB', undef, 0, 1],
    ['recommendedColorDepth', undef, 0, 1],
    ['supportedDiskControllerList', undef, 1, 1],
    ['recommendedSCSIController', undef, 0, 0],
    ['recommendedDiskController', undef, 0, 1],
    ['supportedNumDisks', undef, 0, 1],
    ['recommendedDiskSizeMB', undef, 0, 1],
    ['recommendedCdromController', undef, 0, 0],
    ['supportedEthernetCard', undef, 1, 1],
    ['recommendedEthernetCard', undef, 0, 0],
    ['supportsSlaveDisk', 'boolean', 0, 0],
    ['cpuFeatureMask', 'HostCpuIdInfo', 1, 0],
    ['smcRequired', 'boolean', 0, 0],
    ['supportsWakeOnLan', 'boolean', 0, 1],
    ['supportsVMI', 'boolean', 0, 0],
    ['supportsMemoryHotAdd', 'boolean', 0, 0],
    ['supportsCpuHotAdd', 'boolean', 0, 0],
    ['supportsCpuHotRemove', 'boolean', 0, 0],
    ['supportedFirmware', undef, 1, 0],
    ['recommendedFirmware', undef, 0, 0],
    ['supportedUSBControllerList', undef, 1, 0],
    ['recommendedUSBController', undef, 0, 0],
    ['supports3D', 'boolean', 0, 0],
    ['recommended3D', 'boolean', 0, 0],
    ['smcRecommended', 'boolean', 0, 0],
    ['ich7mRecommended', 'boolean', 0, 0],
    ['usbRecommended', 'boolean', 0, 0],
    ['supportLevel', undef, 0, 0],
    ['supportedForCreate', 'boolean', 0, 0],
    ['vRAMSizeInKB', 'IntOption', 0, 0],
    ['numSupportedFloppyDevices', undef, 0, 0],
    ['wakeOnLanEthernetCard', undef, 1, 0],
    ['supportsPvscsiControllerForBoot', 'boolean', 0, 0],
    ['diskUuidEnabled', 'boolean', 0, 0],
    ['supportsHotPlugPCI', 'boolean', 0, 0],
);

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
