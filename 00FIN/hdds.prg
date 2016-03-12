oDrives=CREATEOBJECT('Scripting.FileSystemObject')
?oDrives.Drives('d:').SerialNumber


loWBEMLocator = Createobject("wbemScripting.SwbemLocator")
loWMIService = loWBEMLocator.ConnectServer('', '\root\cimv2')

If !Isnull(loWMIService)
  loLogicalDrives = loWMIService.ExecQuery('Select * from Win32_LogicalDisk')
  ? 'Logical disk'
  For Each loLogicalDrive In loLogicalDrives
    ? 'opis= '+loLogicalDrive.Description, ;
      +'uredaj= '+loLogicalDrive.DeviceID, ;
      +'ime diska= '+loLogicalDrive.VolumeName, ;
      +' serijski broj= '+loLogicalDrive.VolumeSerialNumber
  Endfor
  ?
  ? 'Physical Disk'
  loPhyDrives = loWMIService.ExecQuery('Select * from Win32_PhysicalMedia')
  For Each loPhyDrive In loPhyDrives
    ? loPhyDrive.Tag,;
      loPhyDrive.SerialNumber
  Endfor
Endif