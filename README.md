# Compilation Pipeline

This repository contains a simple hello_world.c program, a Makefile with predefined targets, and supporting documentation.

Its purpose is to see how a program transforms from source code to machine code.

The Compilation Pipeline is the step-by-step process by which a high-level programming language is transformed into an executable binary that a computer can run.

It consists of several stages, each handled by a different tool: Preprocessor, Compiler, Assembler, and Linker.

The targets of this Makefile allow to stop the Compilation Pipeline in different stages:

- "make", "make all", or "make hello_assembly" stop at Linking, which is the final step
- "make assembly" stops at Assembly
- "make compilation" stops at Compilation
- "make preprocessing" stops at Preprocessing
