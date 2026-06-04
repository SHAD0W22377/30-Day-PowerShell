# Day 2: Cmdlets and Aliases

## 📚 Learning Objectives

By the end of Day 2, you will:
- Understand what cmdlets are and their structure
- Use common cmdlets effectively
- Learn and create aliases
- Discover useful aliases and shortcuts
- Understand the relationship between full names and aliases

## 🎯 Key Concepts

### Cmdlets: The Building Blocks

Cmdlets (pronounced "command-lets") are lightweight commands used in PowerShell. Every cmdlet follows this structure:

```
Verb-Noun -Parameter1 Value1 -Parameter2 Value2
```

**Examples**:
```powershell
Get-ChildItem -Path C:\ -Recurse
Set-Location -Path "C:\Windows"
New-Item -ItemType File -Name "test.txt"
```

### Why Verb-Noun Naming?

1. **Discoverability**: Once you know the verb, you can guess related commands
2. **Consistency**: All commands follow the same pattern
3. **Predictability**: New users can understand what a command does
4. **Organization**: Commands are logically grouped

## 📋 Common Cmdlet Verbs

### Data Retrieval Verbs
| Verb | Purpose | Example |
|------|---------|----------|
| **Get** | Retrieve information | `Get-ChildItem` |
| **Find** | Search for something | `Find-Module` |
| **Measure** | Calculate metrics | `Measure-Object` |
| **Select** | Choose specific items | `Select-Object` |

### Data Modification Verbs
| Verb | Purpose | Example |
|------|---------|----------|
| **Set** | Configure a value | `Set-Location` |
| **New** | Create something | `New-Item` |
| **Copy** | Duplicate something | `Copy-Item` |
| **Move** | Relocate something | `Move-Item` |
| **Remove** | Delete something | `Remove-Item` |
| **Rename** | Change a name | `Rename-Item` |

### Process Control Verbs
| Verb | Purpose | Example |
|------|---------|----------|
| **Start** | Begin a process | `Start-Process` |
| **Stop** | End a process | `Stop-Process` |
| **Restart** | Reboot something | `Restart-Computer` |
| **Suspend** | Pause temporarily | `Suspend-Service` |
| **Resume** | Continue | `Resume-Service` |

### Other Common Verbs
| Verb | Purpose | Example |
|------|---------|----------|
| **Test** | Verify functionality | `Test-Connection` |
| **Invoke** | Execute code | `Invoke-Command` |
| **Write** | Output data | `Write-Host` |
| **Format** | Change display | `Format-Table` |

## 🔗 Understanding Aliases

### What are Aliases?

An **alias** is a nickname for a cmdlet. PowerShell comes with many built-in aliases for common commands:

```powershell
Get-ChildItem  # Full cmdlet name
ls             # Alias
dir            # Another alias
```

All three commands do exactly the same thing!

### Why Use Aliases?

1. **Speed**: Faster to type
2. **Familiarity**: Resembles Unix/Linux commands
3. **Efficiency**: Great for interactive use
4. **Backward compatibility**: Familiar for shell veterans

### When NOT to Use Aliases

- **In scripts**: Always use full cmdlet names for clarity and maintainability
- **For others to read**: Full names are more readable
- **In production**: Explicit commands are safer

## 📚 Common Aliases

| Alias | Full Cmdlet | Purpose |
|-------|-------------|----------|
| `ls`, `dir` | `Get-ChildItem` | List files |
| `cd` | `Set-Location` | Change directory |
| `pwd` | `Get-Location` | Show current location |
| `mkdir` | `New-Item -ItemType Directory` | Create folder |
| `cp` | `Copy-Item` | Copy files |
| `mv` | `Move-Item` | Move files |
| `rm`, `del` | `Remove-Item` | Delete files |
| `cat` | `Get-Content` | Show file contents |
| `clear`, `cls` | `Clear-Host` | Clear screen |
| `sort` | `Sort-Object` | Sort items |
| `select` | `Select-Object` | Choose properties |
| `where` | `Where-Object` | Filter items |

## 🔍 Discovering Cmdlets and Aliases

### Find All Commands

```powershell
Get-Command
```

### Find Commands by Verb

```powershell
Get-Command -Verb Get      # All Get- commands
Get-Command -Verb Set      # All Set- commands
Get-Command -Verb New      # All New- commands
```

### Find Commands by Noun

```powershell
Get-Command -Noun Service  # All Service-related commands
Get-Command -Noun Process  # All Process-related commands
```

### Find All Aliases

```powershell
Get-Alias
```

### Find Alias for Specific Cmdlet

```powershell
Get-Alias -Definition Get-ChildItem
```

### Find Cmdlet for Specific Alias

```powershell
Get-Alias ls
```

## 🛠️ Creating Custom Aliases

### Create a Temporary Alias

```powershell
New-Alias -Name myalias -Value Get-ChildItem
myalias  # This now works like Get-ChildItem
```

This alias only exists for the current session!

### Create a Permanent Alias

To make aliases permanent, add them to your PowerShell profile:

```powershell
# Open your profile
notepad $PROFILE

# Add this line to your profile:
New-Alias -Name myalias -Value Get-ChildItem
```

## 💡 Working with Cmdlets

### Using Parameters

Most cmdlets accept parameters:

```powershell
# List files in specific directory
Get-ChildItem -Path C:\Windows

# List files recursively
Get-ChildItem -Recurse

# Combine multiple parameters
Get-ChildItem -Path C:\Windows -Recurse -Filter *.exe
```

### Parameter Names vs Positional

```powershell
# Using parameter names (explicit)
Get-ChildItem -Path C:\Windows

# Using positional (first parameter)
Get-ChildItem C:\Windows

# Both do the same thing!
```

### Tab Completion

Press `Tab` after typing a parameter to see available options:

```powershell
Get-ChildItem -
# Press Tab to see available parameters
```

## 📖 Essential Cmdlets

### Navigation
```powershell
Get-Location           # Show current directory
Set-Location C:\Temp   # Change directory (cd)
Push-Location          # Save current location
Pop-Location           # Return to saved location
```

### File Operations
```powershell
Get-ChildItem          # List files/folders
New-Item -ItemType File -Name "file.txt"
Copy-Item source dest
Move-Item source dest
Remove-Item file
Rename-Item oldname newname
```

### Content
```powershell
Get-Content file.txt           # Show file contents
Set-Content -Path file.txt -Value "text"
Add-Content -Path file.txt -Value "more text"
```

### Information
```powershell
Get-Help cmdname          # Show help
Get-Member                # Show object properties
Get-Command               # List available commands
Get-Alias                 # List aliases
```

## ✏️ Practice

```powershell
# Try these commands
Get-Command -Verb Get
Get-Alias
Get-Alias -Definition Get-ChildItem
ls              # Using alias
Get-ChildItem   # Using full name
cd \            # Using alias
Set-Location C:\ # Using full name
```

## 🎯 Summary

- Cmdlets follow the Verb-Noun naming convention
- Aliases provide shortcuts for common commands
- Use full names in scripts, aliases in interactive sessions
- PowerShell provides many common aliases for Linux/Unix familiarity
- You can create custom aliases for your workflow
- Tab completion helps discover parameters

**Next**: [Day 3 - Getting Help](../day-03/README.md)
