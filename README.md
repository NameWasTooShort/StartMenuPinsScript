How to run:
1. Run PowerShell as Administrator
2. Set-ExecutionPolicy Unrestricted -Scope Process
	- Yes to All
3. Navigate to script location in PowerShell
	- D:\Start Menu Pins Script
4. .\StartMenuScript.ps1

-----

How it works:
Each user in Windows 11 gets its start menu from a file called Start2.bin. By taking a preexisting start2.bin file and overwriting the old one, we can apply a template.
