/*
    A variable is only visible inside the {...}-block it was defined in. 
    When compiling to the EVM, a new stack slot is created that is reserved for the variable 
    and automatically removed again when the end of the block is reached. 
    You can provide an initial value for the variable. 
    If you do not provide a value, the variable will be initialized to zero.
*/

{
    let zero := 0
    let v := calldataload(zero)
    {
        let y := add(sload(v), 1)
        v := y
    } // y is "deallocated" here
    sstore(v, zero)
} // v and zero are "deallocated" here