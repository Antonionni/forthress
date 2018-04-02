include parity.frt
: prime
    dup 2 < if drop 0 exit endif
    dup 2 = if drop 1 exit endif
    dup parity if drop 0 exit endif
    dup 2 / >r
    repeat
        dup r>
        dup 1 - >r % 
    not until
    drop r> 0 =
;

: print_prime_result
    1 = if ." prime " else ." not prime " endif cr
;

: prime_test
    20 0 do
        ." is number " r@ . ."  prime? - "
        r@ prime print_prime_result
    loop
;
prime_test