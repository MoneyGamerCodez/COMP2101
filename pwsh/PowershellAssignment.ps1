"
+-------------------+
| PC Identification |
+-------------------+
"
Get-WmiObject -Class win32_computersystem |
Select Manufacturer, Model, Caption, PrimaryOwnerName, SystemType

"
+---------------------+
| BIOS Identification |
+---------------------+
"
Get-WmiObject -Class win32_bios |
select Manufacturer, Description, Version, SMBIOSVersion

"
+--------------------------+
| Processor Identification |
+--------------------------+
"
Get-WmiObject -Class win32_processor |
select Manufacturer, Name, NumberOfCores, MaxClockSpeed

"
+---------------------------------+
| Memory Identification and Usage |
+---------------------------------+
"
Get-WmiObject -Class win32_physicalmemory |
Select-Object Manufacturer,
    @{n='Size(MB)';e={$_.Capacity/1mb -as [int]}},
    Speed,
    @{n='Bank';e={$_.BankLabel}},
    @{n='Slot';e={$_.DeviceLocator}}|
    ft -AutoSize

"
+---------------+
| Storage Usage |
+---------------+
"
Get-WmiObject -Class win32_logicaldisk |
Where Freespace -gt 0|
Select-Object deviceid,
    @{n='Size(GB)';e={$_.size/1gb -as [int]}},
    @{n='Free(GB)';e={$_.freespace/1gb -as [int]}},
    @{n='% Free';e={100 * $_.freespace/$_.size -as [int]}},
    ProviderName |
    ft -AutoSize

"
+------------------------------------------+
| Network Identification and Configuration |
+------------------------------------------+
"


"
+----------------------+
| Graphics Information |
+----------------------+
"
Get-WmiObject -Class win32_videocontroller | 
select name, videoprocessor

"
+-----------------------+
| Operating System Info |
+-----------------------+
"
Get-WmiObject -Class win32_operatingsystem | 
select Manufacturer, Caption, Version, OSArchitecture, RegisteredUser