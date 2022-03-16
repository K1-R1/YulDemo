
/*
    The following example program is written in the EVM dialect and computes exponentiation. 
    It can be compiled using solc --strict-assembly. 
    The builtin functions mul and div compute product and division, respectively.
*/
{
    function power(base, exponent) -> result
    {
        switch exponent
        case 0 { result := 1 }
        case 1 { result := base }
        default
        {
            result := power(mul(base, base), div(exponent, 2))
            swith mod(exponent, 2)
                case 1 { result := mul(base, result ) }
        }
    }
}
