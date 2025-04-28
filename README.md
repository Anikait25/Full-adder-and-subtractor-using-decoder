# 1-bit Full Adder and Subtractor with 7-Segment Display in Verilog

This project implements a **1-bit Full Adder and Subtractor** in Verilog HDL,  
along with a display module to show the result on a 7-segment display and a testbench for verification.

## Project Structure

| File | Description |
| --- | --- |
| `full_adder_and_subtractor.v` | 1-bit Full Adder and Subtractor module with carry-out or borrow-out handling. |
| `full_adder_and_subtractor_disp.v` | Converts sum or difference output into 7-segment display code. |
| `full_adder_and_subtractor_tb.v` | Testbench to simulate and verify the design. |

## How It Works

- **Inputs**:
  - `a`, `b` : 1-bit binary inputs
  - `cin` : Carry-in or Borrow-in input
  - `mode` : Operation select (0 for addition, 1 for subtraction)

- **Outputs**:
  - `sum_diff` : Sum (if addition) or Difference (if subtraction)
  - `cout_borrow` : Carry-out (if addition) or Borrow-out (if subtraction)
  - `seg` : 7-segment display encoding of the result

- **Operation**:
  - If `mode = 0`, performs full addition (`sum = a + b + cin`).
  - If `mode = 1`, performs full subtraction (`diff = a - b - cin`).

- The result (`sum_diff`) is encoded and displayed on a 7-segment display.

## Simulation Instructions

1. Use any Verilog simulator (ModelSim, Vivado, etc.).
2. Compile all the following files:
   - `full_adder_and_subtractor.v`
   - `full_adder_and_subtractor_disp.v`
   - `full_adder_and_subtractor_tb.v`
3. Run the testbench to observe the sum/difference and corresponding 7-segment outputs.

## Example Operation

| a | b | cin | Mode | Operation | Result (sum_diff) | Carry/Borrow |
|:-:|:-:|:---:|:----:|:---------:|:----------------:|:------------:|
| 1 | 0 | 0 | 0 (Add) | 1 + 0 + 0 = 1 | 1 | 0 |
| 1 | 1 | 0 | 0 (Add) | 1 + 1 + 0 = 10 | 0 | Carry=1 |
| 1 | 0 | 0 | 1 (Sub) | 1 - 0 - 0 = 1 | 1 | 0 |
| 0 | 1 | 0 | 1 (Sub) | 0 - 1 - 0 = Borrow | 1 | Borrow=1 |

*Result is automatically shown on the 7-segment display.*

## Requirements

- Basic Verilog knowledge
- Verilog simulator (ModelSim, Vivado, Quartus Prime, etc.)

## Author

Anikait Sarkar  
RSA SEIP VLSI Trainee
