# Day 1: Introduction to PowerShell - Commands to Practice
# Copy and paste these commands into PowerShell to practice

# ===== Display Text =====
Write-Host "Hello, PowerShell!"
Write-Host "Welcome to your PowerShell journey!" -ForegroundColor Green

# ===== Check PowerShell Version =====
$PSVersionTable
Write-Host "Your PowerShell version is: $($PSVersionTable.PSVersion)"

# ===== Current Location =====
Get-Location  # Full command
pwd           # Alias for Get-Location

# ===== List Files and Directories =====
Get-ChildItem  # Full command
ls             # Alias
dir            # Another alias

# ===== Get Help =====
Get-Help Get-ChildItem                    # Basic help
Get-Help Get-ChildItem -Examples          # Show examples
Get-Help Get-ChildItem -Full              # Complete documentation
Get-Help Get-ChildItem -Online            # Open in browser (if available)

# ===== Clear the Screen =====
Clear-Host
cls  # Alias

# ===== Display System Information =====
Get-ComputerInfo -Property WindowsVersion
Hostname  # Shows computer name

# ===== List All Available Cmdlets =====
Get-Command

# ===== Find Commands by Verb =====
Get-Command -Verb Get
Get-Command -Verb Set
Get-Command -Verb New

# ===== Search for Commands by Name =====
Get-Command -Name *item*

# ===== Display Date and Time =====
Get-Date
Get-Date -Format "yyyy-MM-dd HH:mm:ss"
