<#Written by Pieter Goossens.
Script to change regedit values to personal preferences.
piegoossens@hotmail.com#>

#Logfile path
$logfile = [System.Environment]::CurrentDirectory + "\log.txt"

#Test 2

function WriteLog{
    param([String]$message)
    $timestamp = (Get-Date).toString("dd/MM/yyyy HH:mm:ss")
    $logentry = "$timestamp - $message"
    Add-content $logfile -value $logentry
}



#Set Numlock to always on.
Set-ItemPropery -Path "HKEY_USERS\.DEFAULT\Control Panel\Keyboard" -Name "InitialKeyboardIndicators" -Value "2"  -PropertyType "String"
WriteLog "Numlock turned on succesfull"

#Disable cortana


#Disable sticky keys.
Set-ItemPropery -Path "HKCU:\Control Panel\Accessibility\StickyKeys" -Name "Flags" -Type String -Value "506"
WriteLog "Sticky keys turned off succesfull"

#Switch Windows With a Single Click on the Taskbar.


#Add Apps to the Desktop Context Menu.


#Show Seconds in the Taskbar Clock.


#Remove 3D Objects (and Other Folders) From This PC.



#Ditch the Lock Screen.


#Remove Bing Search from the Start Menu.


#Disable Shake to Minimize.


#script complete.
WriteLog "Whole script ran succesfully"