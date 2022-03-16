/*
    In the following example, 3 and 2 are added resulting in 5 and then the bitwise and with the string “abc” is computed. 
    The final value is assigned to a local variable called x.
*/
let x := and("abc", add(3, 2))

/*
    Unless it is the default type, the type of a literal has to be specified after a colon
*/
let x := and("abc":u32, add(3:u256, 2:u256))