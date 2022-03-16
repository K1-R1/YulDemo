/*
    Yul supports for-loops which consist of a header containing an initializing part, a condition, a post-iteration part and a body. 
    The condition has to be an expression, while the other three are blocks. 
    If the initializing part declares any variables at the top level, the scope of these variables extends to all other parts of the loop.
    The break and continue statements can be used in the body to exit the loop or skip to the post-part, respectively.
    The following example computes the sum of an area in memory.
*/
{
    let x := 0
    for { let i := 0 } lt(i, 0x100) { i := add(i, 0x20) } {
        x := add(x, mload(i))
    }
}

/*
    For loops can also be used as a replacement for while loops;
    simply leave the initialization and post-iteration parts empty.
*/
{
    let x := 0
    let i := 0
    for { } lt(i, 0x100) { } {     // while(i < 0x100)
        x := add(x, mload(i))
        i := add(i, 0x20)
    }
}