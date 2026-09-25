#!/bin/bash

Linux File Permissions Assignment
---------------------------------
Complete this script by adding the required chmod commands.
Files:
starter/test_files/numeric.txt
starter/test_files/symbolic.txt
starter/test_files/conditions.txt
Do not modify the test files themselves.

NUMERIC_FILE="starter/test_files/numeric.txt"
SYMBOLIC_FILE="starter/test_files/symbolic.txt"
CONDITIONS_FILE="starter/test_files/conditions.txt"

============================================================
PART 1: NUMERIC METHOD
============================================================
Set numeric.txt permission to:
rw-r-----
Numeric value: 640
Set conditions.txt permission to:
rwxr-x---
Numeric value: 750
============================================================
PART 2: SYMBOLIC METHOD
============================================================
Set symbolic.txt initially to:
rw-------
Add execute permission for the owner:
Expected: rwx------
Add read permission for the group:
Expected: rwxr-----
Add read permission for others:
Expected: rwxr--r--
============================================================
PART 3: CONDITIONS
============================================================
Set conditions.txt using the required permissions:
Owner : read, write, execute
Group : read, execute
Others : no permissions
Expected: rwxr-x---
