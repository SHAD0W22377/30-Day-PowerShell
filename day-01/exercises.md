# Day 1: Practice Exercises

## Exercise 1: Explore the Help System

**Objective**: Learn how to navigate PowerShell's help system

**Tasks**:
1. Run `Get-Help Get-Date` and read the description
2. Run `Get-Help Get-Date -Examples` and study the examples
3. Try running one of the examples from the help output
4. Use `Get-Help Get-Date -Full` to see all available parameters

**Expected Output**: You should understand how to use Get-Date and see various examples of its usage

---

## Exercise 2: List Your Current Directory

**Objective**: Understand basic file system navigation

**Tasks**:
1. Run `Get-Location` to see your current directory
2. Run `Get-ChildItem` to list files and folders
3. Try the aliases `pwd` and `ls` to confirm they work the same way
4. Note: What files/folders are in your current directory?

**Expected Output**: A list of files and directories in your current location

---

## Exercise 3: Explore PowerShell Verbs

**Objective**: Understand the Verb-Noun structure

**Tasks**:
1. Run `Get-Command -Verb Get` and count how many commands start with "Get"
2. Run `Get-Command -Verb Set` and observe the results
3. Run `Get-Command -Verb New` and see what types of things can be "created"
4. Run `Get-Command -Verb Remove` and observe what can be removed

**Expected Output**: Lists of commands grouped by verb

---

## Exercise 4: System Information

**Objective**: Retrieve basic system information

**Tasks**:
1. Run `$PSVersionTable` and note your PowerShell version
2. Run `Get-Date` to see current date and time
3. Run `Hostname` to see your computer name
4. Run `Get-ComputerInfo -Property WindowsVersion` to see your Windows version

**Expected Output**: Information about your system and PowerShell installation

---

## Exercise 5: Write Custom Messages

**Objective**: Learn to use Write-Host for output

**Tasks**:
1. Run: `Write-Host "My name is YOUR_NAME"`
2. Run: `Write-Host "Today is $(Get-Date -Format 'dddd, MMMM dd, yyyy')"`
3. Run: `Write-Host "PowerShell is cool!" -ForegroundColor Cyan`
4. Try different colors: Green, Red, Yellow, Blue, Magenta

**Expected Output**: Text displayed with your chosen formatting

---

## Challenge Exercise: Combine Commands

**Objective**: Start thinking about combining PowerShell operations

**Task**:
Write a series of commands that:
1. Gets your current location and stores it in a variable
2. Displays "You are currently in: [location]"
3. Lists all items in your current directory
4. Shows the current date and time with a custom message

**Hint**: Use `$variable = ` to store values and `$(Get-Date)` to embed commands

---

## Reflection Questions

1. What's the difference between `Get-ChildItem`, `ls`, and `dir`?
2. Why is the Verb-Noun naming convention useful?
3. How is PowerShell help different from what you might expect?
4. What did you find most surprising about PowerShell so far?
