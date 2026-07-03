## Contract: Add function parameter support
### Description
Extend the mini C compiler to support function parameters according to the System V AMD64 ABI. The compiler should parse function declarations with parameters, store them in the symbol table, and generate appropriate prologue/epilogue code to access parameters via registers or stack. This includes handling int and char types, and generating correct code for using parameters in expressions.

## Contract: Add char type support
### Description
Add proper support for the char type in the mini C compiler. This includes distinguishing char from int in the symbol table, generating correct load/store instructions (movzbq/movsbq for loads, movb for stores), and ensuring arithmetic on chars is performed correctly (e.g., sign‑extension when needed). The compiler should also allow char arrays and pointers to char.