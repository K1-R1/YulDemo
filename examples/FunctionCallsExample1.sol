/*
     If the function returns a single value, it can be directly used inside an expression again. 
     If it returns multiple values, they have to be assigned to local variables.
*/

function f(x, y) -> a, b { /* ... */ }
mstore(0x80, add(mload(0x80), 3))
// Here, the user-defined function `f` returns two values.
let x, y := f(1, mload(0))

/*
    For built-in functions of the EVM, 
    functional expressions can be directly translated to a stream of opcodes. 
    You just read the expression from right to left to obtain the opcodes. 
    In the case of the first line in the example, this is:
    PUSH1 3 PUSH1 0x80 MLOAD ADD PUSH1 0x80 MSTORE.

    For calls to user-defined functions, 
    the arguments are also put on the stack from right to left and this is the order in which argument lists are evaluated. 
    The return values, though, are expected on the stack from left to right.
    i.e. in this example, y is on top of the stack and x is below it.
*/