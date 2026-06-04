# Day 1: Introduction to PowerShell

## 📚 Learning Objectives

By the end of Day 1, you will:
- Understand what PowerShell is and why it matters
- Know the differences between PowerShell and other shells
- Navigate the PowerShell console
- Execute your first commands
- Understand the PowerShell philosophy

## 🎯 Key Concepts

### What is PowerShell?

PowerShell is a powerful task automation and configuration management framework from Microsoft. Unlike traditional shells (CMD, Bash), PowerShell:

- **Object-oriented**: Works with objects instead of plain text
- **Verb-Noun syntax**: Commands follow a predictable pattern
- **Built for Windows**: Native integration with Windows systems
- **Scripting language**: Full programming capabilities
- **Cross-platform**: Now available on Linux and macOS

### Comparison with Other Shells

| Feature | PowerShell | CMD | Bash |
|---------|-----------|-----|------|
| Object pipeline | ✅ Yes | ❌ No | ❌ No |
| Scripting language | ✅ Full | ⚠️ Limited | ✅ Full |
| Cross-platform | ✅ Yes | ❌ Windows only | ✅ Unix/Linux |
| Windows integration | ✅ Excellent | ⚠️ Basic | ❌ Limited |
| Learning curve | ⚠️ Medium | ✅ Easy | ⚠️ Medium |

### PowerShell Versions

- **Windows PowerShell 5.1**: Built into Windows 7 and later
- **PowerShell 7+**: Open-source, cross-platform version
- **Recommendation**: Both are valid; examples work in both

## 💻 Getting Started

### Opening PowerShell

**Windows 11/10:**
- Press `Win + X`, then select "Windows PowerShell" or "Terminal"
- Or search for "PowerShell" in the Start menu

**Windows 7/8:**
- Press `Win + R`, type `powershell`, press Enter

**Run as Administrator:**
- Right-click PowerShell → "Run as administrator"
- Many administrative tasks require elevated privileges

### Your First Command

Type the following and press Enter:

```powershell
Write-Host "Hello, PowerShell!"
```

You should see:
```
Hello, PowerShell!
```

Congratulations! You've executed your first PowerShell command!

## 📖 Key Concepts

### Cmdlets (Command-lets)

PowerShell commands are called **Cmdlets** and follow a consistent **Verb-Noun** pattern:

```
Verb-Noun -Parameter
```

Examples:
- `Get-Help` - Get help information
- `Get-ChildItem` - List files and folders
- `Set-Location` - Change directory
- `Write-Host` - Display text to console

### Common Verbs

- **Get**: Retrieve information
- **Set**: Configure something
- **New**: Create something
- **Remove**: Delete something
- **Start**: Begin a process
- **Stop**: End a process
- **Test**: Verify something
- **Invoke**: Execute something

### The PowerShell Pipeline

One of PowerShell's most powerful features is the **pipe** (`|`), which sends output from one command to another:

```powershell
Command1 | Command2 | Command3
```

This is fundamentally different from traditional shells - PowerShell pipes **objects**, not just text!

## 🎓 Understanding Your Environment

### Check PowerShell Version

```powershell
$PSVersionTable
```

This shows your PowerShell version and platform information.

### Get Current Location

```powershell
Get-Location
```

Or the shorthand:
```powershell
pwd  # Same as Get-Location
```

### List Files and Folders

```powershell
Get-ChildItem
```

Or use common aliases:
```powershell
ls    # Short for Get-ChildItem
dir   # Another alias for Get-ChildItem
```

## 🔍 Getting Help

PowerShell has excellent built-in help:

```powershell
Get-Help Get-ChildItem
```

See examples:
```powershell
Get-Help Get-ChildItem -Examples
```

Open full documentation in separate window:
```powershell
Get-Help Get-ChildItem -Full
```

## 📝 Important Notes

1. **Case-insensitive**: `get-childitem` = `Get-ChildItem`
2. **Tab completion**: Press Tab to auto-complete commands
3. **History**: Press Up/Down arrows to recall previous commands
4. **Escape**: Press Ctrl+C to stop a running command
5. **Clear screen**: Use `Clear-Host` or `cls`

## ✏️ Practice

Try these commands to familiarize yourself:

```powershell
# Check your version
$PSVersionTable

# Get current location
Get-Location

# List files in current directory
Get-ChildItem

# Get help
Get-Help Get-ChildItem

# Display some text
Write-Host "PowerShell is awesome!"
```

## 🎯 Summary

- PowerShell is an object-oriented automation framework
- Commands follow Verb-Noun naming convention
- The pipeline sends objects between commands
- Help is readily available with Get-Help
- PowerShell is case-insensitive

**Next**: [Day 2 - Cmdlets and Aliases](../day-02/README.md)
