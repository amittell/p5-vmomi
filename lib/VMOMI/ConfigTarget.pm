package VMOMI::ConfigTarget;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['numCpus', undef, 0, 1],
    ['numCpuCores', undef, 0, 1],
    ['numNumaNodes', undef, 0, 1],
    ['smcPresent', 'boolean', 0, 0],
    ['datastore', 'VirtualMachineDatastoreInfo', 1, 0],
    ['network', 'VirtualMachineNetworkInfo', 1, 0],
    ['opaqueNetwork', 'OpaqueNetworkTargetInfo', 1, 0],
    ['distributedVirtualPortgroup', 'DistributedVirtualPortgroupInfo', 1, 0],
    ['distributedVirtualSwitch', 'DistributedVirtualSwitchInfo', 1, 0],
    ['cdRom', 'VirtualMachineCdromInfo', 1, 0],
    ['serial', 'VirtualMachineSerialInfo', 1, 0],
    ['parallel', 'VirtualMachineParallelInfo', 1, 0],
    ['sound', 'VirtualMachineSoundInfo', 1, 0],
    ['usb', 'VirtualMachineUsbInfo', 1, 0],
    ['floppy', 'VirtualMachineFloppyInfo', 1, 0],
    ['legacyNetworkInfo', 'VirtualMachineLegacyNetworkSwitchInfo', 1, 0],
    ['scsiPassthrough', 'VirtualMachineScsiPassthroughInfo', 1, 0],
    ['scsiDisk', 'VirtualMachineScsiDiskDeviceInfo', 1, 0],
    ['ideDisk', 'VirtualMachineIdeDiskDeviceInfo', 1, 0],
    ['maxMemMBOptimalPerf', undef, 0, 1],
    ['resourcePool', 'ResourcePoolRuntimeInfo', 0, 0],
    ['autoVmotion', 'boolean', 0, 0],
    ['pciPassthrough', 'VirtualMachinePciPassthroughInfo', 1, 0],
    ['sriov', 'VirtualMachineSriovInfo', 1, 0],
    ['vFlashModule', 'VirtualMachineVFlashModuleInfo', 1, 0],
    ['sharedGpuPassthroughTypes', 'VirtualMachinePciSharedGpuPassthroughInfo', 1, 0],
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
