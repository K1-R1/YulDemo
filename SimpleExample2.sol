/*
    It is also possible to implement the same function using a for-loop instead of with recursion. 
    Here, lt(a, b) computes whether a is less than b..
*/
{
    function power(base, exponent) -> result
    {
        result := 1
        for { let i := 0 } lt(i, exponent) { i := add(i, 1) }
        {
            result := mul(result, base)
        }
    }
}