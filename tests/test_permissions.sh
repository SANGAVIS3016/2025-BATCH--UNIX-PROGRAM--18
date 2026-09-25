#!/bin/bash

============================================================
Linux File Permissions - Autograding Script
============================================================

set -u

BASE_DIR="starter/test_files"

NUMERIC_FILE="$BASE_DIR/numeric.txt"
SYMBOLIC_FILE="$BASE_DIR/symbolic.txt"
CONDITIONS_FILE="$BASE_DIR/conditions.txt"

PASS=0
FAIL=0

check_permission() {
FILE="$1"
EXPECTED="$2"
DESCRIPTION="$3"

if [ ! -e "$FILE" ]; then
    echo "FAIL: $DESCRIPTION"
    echo "      File not found: $FILE"
    FAIL=$((FAIL + 1))
    return
fi

ACTUAL=$(stat -c "%a" "$FILE")

if [ "$ACTUAL" = "$EXPECTED" ]; then
    echo "PASS: $DESCRIPTION"
    echo "      Expected: $EXPECTED"
    echo "      Actual:   $ACTUAL"
    PASS=$((PASS + 1))
else
    echo "FAIL: $DESCRIPTION"
    echo "      Expected: $EXPECTED"
    echo "      Actual:   $ACTUAL"
    FAIL=$((FAIL + 1))
fi


}

echo "=========================================="
echo " Linux File Permission Autograder"
echo "=========================================="
echo

------------------------------------------------------------
Numeric method
------------------------------------------------------------

check_permission
"$NUMERIC_FILE"
"640"
"numeric.txt should have permission 640"

check_permission
"$CONDITIONS_FILE"
"750"
"conditions.txt should have permission 750"

------------------------------------------------------------
Symbolic method final result
------------------------------------------------------------

check_permission
"$SYMBOLIC_FILE"
"744"
"symbolic.txt should have final permission 744"

echo
echo "=========================================="
echo " Result"
echo "=========================================="

echo "Passed: $PASS"
echo "Failed: $FAIL"

echo

if [ "$FAIL" -eq 0 ]; then
echo "All tests passed."
exit 0
else
echo "Some tests failed."
exit 1
fi
