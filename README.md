# Verilog HDL Design Task

## Overview

This project involves the creation of a Verilog HDL code that implements a digital circuit with specific requirements. The circuit takes two 3-bit signed integers in 2's complement form and selection inputs to produce a 3-bit signed integer output based on the specified operations.

## Components Used

- Full-adders: 2
- 4x1 Multiplexers: 2
- 2x1 Multiplexers: 1
- OR gates: 2
- AND gates: 2
- NOT gates: 2
- XOR gates: 2

## Functionality

- **00 Selection Input**: Increment A by 1
- **01 Selection Input**: Add A and B
- **10 Selection Input**: Subtract A from B
- **11 Selection Input**: Subtract B from 1

The implementation strictly uses structural Verilog descriptions for the multiplexers as per the guidelines provided in the book "Computer System Architecture".

## Test Bench

A comprehensive test bench is provided that tests all aspects of the implemented circuit with at least 40 test cases on various input values.

## Compilation

The Verilog HDL code is compiled following the instructions provided at the top of the lab samples.

## Comments

The code is extensively commented, explaining each line of the code and the test cases.

## Usage

To use this code, replace the placeholder values with your actual data and compile it using your preferred synthesis and simulation tools.

