# Ada: Incorrect Array Access Leading to Runtime Errors

This repository demonstrates a common error in Ada programming: attempting to access an array outside of its defined bounds.  While Ada's strong typing helps prevent many errors at compile time, unchecked array access can lead to runtime crashes or unpredictable results.

The `bug.ada` file shows the erroneous code.  The `bugSolution.ada` file provides a corrected version that demonstrates how to safely handle array accesses.

## The Problem

Ada's array bounds are checked at runtime. Accessing an element outside the declared range results in a Constraint_Error exception.  The code in `bug.ada` attempts to access array elements beyond the bounds, leading to such an exception.

## The Solution

The `bugSolution.ada` file demonstrates how to prevent the error.  By adding explicit bounds checking or using safer iteration techniques such as the `for` loop, the code prevents runtime errors.
