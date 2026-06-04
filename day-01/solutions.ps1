# Day 1: Practice Exercise Solutions
# Use these as reference to check your work

# ===== Exercise 1: Explore the Help System =====
# Solution:
Get-Help Get-Date
Get-Help Get-Date -Examples
Get-Help Get-Date -Full
# You should have read through the help and tried at least one example

# ===== Exercise 2: List Your Current Directory =====
# Solution:
Get-Location
Get-ChildItem
pwd        # Alias for Get-Location
ls         # Alias for Get-ChildItem

# ===== Exercise 3: Explore PowerShell Verbs =====
# Solution:
Get-Command -Verb Get      # Lists all Get- commands
Get-Command -Verb Set      # Lists all Set- commands
Get-Command -Verb New      # Lists all New- commands
Get-Command -Verb Remove   # Lists all Remove- commands

# You could also count results:
(Get-Command -Verb Get).Count
(Get-Command -Verb Set).Count

# ===== Exercise 4: System Information =====
# Solution:
$PSVersionTable
Get-Date
Hostname
Get-ComputerInfo -Property WindowsVersion

# ===== Exercise 5: Write Custom Messages =====
# Solution:
Write-Host "My name is YOUR_NAME"
Write-Host "Today is $(Get-Date -Format 'dddd, MMMM dd, yyyy')"
Write-Host "PowerShell is cool!" -ForegroundColor Cyan

# Try different colors:
Write-Host "This is Green" -ForegroundColor Green
Write-Host "This is Red" -ForegroundColor Red
Write-Host "This is Yellow" -ForegroundColor Yellow
Write-Host "This is Blue" -ForegroundColor Blue
Write-Host "This is Magenta" -ForegroundColor Magenta

# ===== Challenge Exercise: Combine Commands =====
# Solution:
$currentLocation = Get-Location
Write-Host "You are currently in: $currentLocation"
Get-ChildItem
Write-Host "Current date and time: $(Get-Date -Format 'dddd, MMMM dd, yyyy HH:mm:ss')"

# Alternative approach:
Write-Host "System Status Report"
Write-Host "==================="
Write-Host "Location: $(Get-Location)"
Write-Host "Date/Time: $(Get-Date)"
Write-Host "Computer: $env:COMPUTERNAME"
Write-Host ""
Write-Host "Files in current directory:"
Get-ChildItem
