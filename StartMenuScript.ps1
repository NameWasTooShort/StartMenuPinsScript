# This scripts takes the start2.bin file inside the StartMenuTemplate folder and replaces the Default user start2.bin file with it.

# Default functionality: only do this for the Default user (applies to all future users).
# -AllUsers functionality: do this for all current users and all future users.
# -User functionality: replace the start menu for the specific user.

param (
	[switch]$AllUsers,
	[string]$User
)

if($AllUsers) {
	Write-Output "Option -AllUsers is currently not implemented."
}
elseif($User) {
	Write-Output "Option -User is currently not implemented"
}
else {
	Write-Output "No option is being used"
}

# Path of the start menu template that will be applied.
$startMenuTemplate = "$PSScriptRoot/StartMenuTemplate/start2.bin"

# Path where the default start menu is saved
$defaultProfile = "C:\Users\Default\AppData\Local\Packages\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy\LocalState"

# Create folder if it doesn't exist
if(-not(Test-Path $defaultProfile)) {
   new-item $defaultProfile -ItemType Directory -Force
}

# Copy file
Copy-Item -Path $startmenuTemplate -Destination $defaultProfile -Force