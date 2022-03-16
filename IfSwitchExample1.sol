/*
    The if statement can be used for conditionally executing code. 
    No “else” block can be defined. 
    Consider using “switch” instead (see below) if you need multiple alternatives.
*/

if lt(calldatasize(), 4) { revert(0, 0) }

/*
    You can use a switch statement as an extended version of the if statement. 
    It takes the value of an expression and compares it to several literal constants. 
    The branch corresponding to the matching constant is taken. 
    Contrary to other programming languages, for safety reasons, control flow does not continue from one case to the next. 
    There can be a fallback or default case called default which is taken if none of the literal constants matches.
*/

{
    let x := 0
    switch calldataload(4)

    // if the switch 'value' is 0
    case 0 {
        x := calldataload(0x24)
    } 

    // else if the switch 'value' is 1
    case 1 { ... }
    

    // else:
    default {
        x := calldataload(0x44)
    }
    
    sstore(0, div(x, 2))
}