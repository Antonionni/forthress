: parity
    2 % not
;

: print_parity_result
    1 = if ." parity " else ." not parity " endif cr
;

: parity_test
    20 0 do
        ." is " r@ . ."  parity number? " cr
        r@ parity print_parity_result
    loop
;
parity_test