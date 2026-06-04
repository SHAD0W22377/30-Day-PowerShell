# Day 2: Practice Exercises - Cmdlets and Aliases

## Exercise 1: Discover Cmdlets by Verb

**Objective**: Learn to find related commands using verbs

**Tasks**:
1. Run `Get-Command -Verb Get` and count the results
2. Run `Get-Command -Verb Set` and observe
3. Run `Get-Command -Verb New` and see what can be created
4. Run `Get-Command -Verb Remove` and identify dangerous commands

**Question**: Which verb returns the most commands?

---

## Exercise 2: Discover Available Aliases

**Objective**: Find and understand PowerShell aliases

**Tasks**:
1. Run `Get-Alias` and observe the full list
2. Run `Get-Alias ls` - what is it aliased to?
3. Run `Get-Alias -Definition Get-ChildItem` - how many aliases exist for this?
4. Run `Get-Alias cd` and `Get-Alias pwd`

**Question**: Why do you think so many Unix-like aliases exist?

---

## Exercise 3: Navigate File System

**Objective**: Practice navigation cmdlets

**Tasks**:
1. Run `Get-Location` to see where you are
2. Run `Set-Location C:\` to go to root
3. Run `Get-Location` again - verify you moved
4. Run `Get-ChildItem` to list contents
5. Run `Set-Location C:\Windows` to go to Windows folder
6. Run `Get-ChildItem -Filter *.exe` to list executables
7. Run `Pop-Location` to return (only works if you used Push-Location)

**Question**: What's the difference between `-Path` parameter and positional parameter?

---

## Exercise 4: Compare Full Names and Aliases

**Objective**: Understand the relationship between names and aliases

**Tasks**:
1. Run: `Get-ChildItem`
2. Run: `ls`
3. Run: `dir`
4. Observe they produce identical output
5. Do the same for: `Get-Location`, `pwd`, `cd C:\`
6. Run: `Get-Alias ls` and `Get-Alias dir` to see what they point to

**Question**: When would you use each version?

---

## Exercise 5: Create Temporary Aliases

**Objective**: Create and use custom aliases

**Tasks**:
1. Create alias: `New-Alias -Name lls -Value Get-Location`
2. Test it: `lls` - should show current location
3. Create alias: `New-Alias -Name myfiles -Value Get-ChildItem`
4. Test it: `myfiles` - should list current directory
5. Create alias: `New-Alias -Name ghelp -Value Get-Help`
6. Test it: `ghelp Get-Date`

**Note**: These aliases only exist in your current session!

---

## Exercise 6: File Filtering and Recursive Search

**Objective**: Practice advanced Get-ChildItem usage

**Tasks**:
1. Navigate to a directory with subdirectories: `Set-Location C:\`
2. List only directories: `Get-ChildItem -Directory`
3. List only files: `Get-ChildItem -File`
4. Show hidden files: `Get-ChildItem -Hidden`
5. Search recursively: `Get-ChildItem -Recurse`
6. Search recursively with filter: `Get-ChildItem -Recurse -Filter *.txt`

**Question**: How would you find all `.exe` files on C: drive?

---

## Challenge Exercise: Combining Navigation and Discovery

**Objective**: Use multiple cmdlets together

**Tasks**:
1. Get current location
2. List all folders in current location
3. Navigate to Windows folder: `Set-Location C:\Windows`
4. Find all `.exe` files using Get-ChildItem with -Filter
5. Count how many `.exe` files there are
6. Navigate back to your starting location

**Bonus**: Try to discover the command to count items (hint: it starts with "Measure")

---

## Reflection Questions

1. How does the Verb-Noun pattern help you discover new commands?
2. What are the advantages and disadvantages of using aliases?
3. When would you prefer to use full cmdlet names?
4. How can you use Get-Help to learn about unfamiliar cmdlets?
5. What parameters did you find most useful for Get-ChildItem?
