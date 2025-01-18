# VHDL Counter Overflow Bug
This repository demonstrates a common bug in VHDL code: counter overflow.  The `counter.vhdl` file contains a counter that increments on each clock edge.  However, it lacks proper handling of the case when the counter reaches its maximum value.  This can result in unpredictable behavior.

The `counter_solution.vhdl` file provides a corrected version that addresses the overflow issue.  This solution uses a modulo operator to ensure the counter wraps around gracefully when it reaches its limit.  See the detailed explanation below for a better understanding of the fix.

## Bug Explanation
The original `counter.vhdl` code has a simple counter that increments the `temp_count` signal. If this signal reaches its maximum value (15), the next increment will cause an overflow, which is undefined in VHDL and may lead to unexpected results such as simulation errors, incorrect output, or even synthesis issues.

## Solution
The solution incorporates a modulo operator to wrap the counter around after it reaches the maximum value.  This ensures that the counter seamlessly restarts from 0 instead of overflowing. 