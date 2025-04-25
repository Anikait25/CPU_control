# CPU Control Unit - Verilog

This project implements a basic **CPU Control Unit** in Verilog. The control unit takes inputs for read, write, and interrupt signals, and provides an output that determines the state of a LED display. The behavior is controlled based on the given logic.

## Module Overview

The module `cpu_control` controls the output `Y` based on the following inputs:
- **A**: Read operation (1 for read operation)
- **B**: Write operation (1 for write operation)
- **C**: Interrupt signal (1 for interrupt triggered)

The output `Y` is:
- `1` if `A = 1` (read operation) or `B = 1` (write operation) and `C = 1` (interrupt).
- `0` otherwise.

Additionally, the module controls a 7-segment LED display (`o_led`), where:
- If `Y = 0`, the LED display shows a "0".
- If `Y = 1`, the LED display shows a "1".

### Output
- **AM**: Simply mirrors the value of `A`. If `A = 1`, the output `AM` will also be `1`, indicating morning. If `A = 0`, `AM = 0`, indicating afternoon.

## Author

Anikait Sarkar  
RSA SEIP VLSI Trainee

