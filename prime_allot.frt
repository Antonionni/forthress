include prime.frt

: prime_allot
    prime
    cell% allot
    dup -rot
    !
;

: test_prime_allot
    20 0 do
        ." is number " r@ . ."  prime? - "
        r@ prime_allot @ print_prime_result
    loop
;

test_prime_allot