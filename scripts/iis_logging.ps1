##https://www.jorgebernhardt.com/iis-logging-powershell/




Import-Module -Name WebAdministration

Get-ItemProperty -Path 'IIS:\Sites\Default Web Site' -Name logfile

$LogfileDirectory = (Get-ItemProperty -Path 'IIS:\Sites\Default Web Site' -Name logfile).directory
$LogfileFolder = [System.Environment]::ExpandEnvironmentVariables("$LogfileDirectory")
Get-ChildItem -Path $LogfileFolder -Recurse

Set-ItemProperty -Path 'IIS:\Sites\Default Web Site' -Name logfile.directory -Value 'D:\IISLogs'
(Get-ItemProperty -Path 'IIS:\Sites\Default Web Site' -Name logfile).directory

Get-ItemProperty -Path 'IIS:\Sites\Default Web Site' -Name logfile.logformat 
Set-ItemProperty -Path 'IIS:\Sites\Default Web Site' -Name logfile.logFormat -Value 'W3C'

Get-ItemProperty -Path 'IIS:\Sites\Default Web Site' -Name logfile.logTargetW3C
Set-ItemProperty -Path 'IIS:\Sites\Default Web Site' -Name logfile.logTargetW3C -Value 'File,ETW'

Get-ItemProperty -Path 'IIS:\Sites\Default Web Site' -Name logfile.period
Set-ItemProperty -Path 'IIS:\Sites\Default Web Site' -Name logfile.period -Value weekly