# Day 2: Cmdlets and Aliases - Commands to Practice

# ===== Discovering Commands =====
Get-Command                    # List all cmdlets
Get-Command -Verb Get          # All Get- commands
Get-Command -Verb Set          # All Set- commands
Get-Command -Noun Service      # All Service-related commands
Get-Command *item*             # Find commands with 'item' in name

# ===== Working with Aliases =====
Get-Alias                      # Show all aliases
Get-Alias ls                   # Show what 'ls' is aliased to
Get-Alias -Definition Get-ChildItem  # Show aliases for a cmdlet
Get-Alias -Verb Get           # Show aliases starting with Get

# ===== Common Aliases in Action =====
ls                             # Alias for Get-ChildItem
dir                            # Another alias for Get-ChildItem
pwd                            # Alias for Get-Location
cd \                           # Alias for Set-Location
clear                          # Alias for Clear-Host

# ===== File System Navigation =====
Get-ChildItem                  # Full name
ls                             # Alias
Get-Location                   # Show current location
Set-Location C:\               # Change directory
Push-Location C:\Temp          # Save location on stack
Pop-Location                   # Return to previous location

# ===== File Operations =====
Get-ChildItem -Path C:\        # List directory contents
Get-ChildItem -Recurse         # List recursively
Get-ChildItem -Filter *.txt    # Filter by pattern
Get-ChildItem -Hidden          # Show hidden files

# ===== Creating Custom Aliases (Temporary) =====
New-Alias -Name myls -Value Get-ChildItem
New-Alias -Name myhelp -Value Get-Help
myls                           # Now this works
myhelp Get-ChildItem           # And this too

# ===== Viewing Command Help =====
Get-Help Get-ChildItem         # Show basic help
Get-Help Get-ChildItem -Examples  # Show examples
Get-Help Get-ChildItem -Full   # Show full help
Get-Help Get-ChildItem -Online # Open in browser

# ===== Understanding Parameters =====
Get-ChildItem -Path C:\Windows -Recurse -Filter *.exe
# With explicit parameter names
Get-ChildItem C:\Windows        # Positional parameter
# Tab completion: type 'Get-ChildItem -' then press Tab

# ===== Exploring Objects =====
Get-ChildItem | Get-Member     # Show properties of items
Get-Process | Get-Member       # Show properties of processes
