: concat 
  dup count >r
  swap
  dup count
  r@ + 1 + heap-alloc dup >r
  rot 
  dup >r
  string-copy
  r> heap-free
  r> r> swap dup >r + swap 
  dup >r
  string-copy
  r> heap-free
  r>
;

( m" hello"
m" world"
concat
prints )