( m" Беллавин" string-hash 3 % . --> 1)

include prime.frt

: sq
    dup *
;

: primarity
    dup ( value )
    prime 
    if
        drop 0 
        exit
    endif ( if number is prime -> return false )

    dup ( value )
    2 ( count ) 
    do
        r@ prime
        if
            dup ( value )
            r@ sq ( count ^2 )
            % ( value % count ^2 )
            not 
            if
                r> r> ( free heap )
                drop 0
                exit
            endif
        endif
    loop
    drop 1
;


: print_primarity_result
    1 = if ." primarity " else ." not primarity " endif cr
;

: primarity_test
    40 2 do
        ." is number " r@ . ."  primarity? - "
        r@ primarity print_primarity_result
    loop
;