::  hoon school week 4 assignment
::
::  threefive.hoon
::
::  returns the sum of all multiples of three or five between 1 and a @ud value
::  (non-inclusive) supplied to the generator.
::
::  assignment note:  as the assignment was to solve this for 1.000, i just
::  used this generator to figure out the answer, which is 233.168.  none of
::  the week's readings struck me as highly relevant to the assignment, although
::  i'm certainly modifying wings as i call the arm of my gate again and again.
::    
::  this assignment also includes "modified breathing comments"-style comments,
::  because i'm unsettled by having the breathing space between between the
::  executable code line and the comment that describes it, rather than between
::  one comment-executable pair and the next.
::
::  create a gate with that takes an unsigned decimal as its sample
|=  lessthanthis=@ud  
::  
::  declare a type-checked counter variable t that starts at 1
=/  t=@ud  1
::
::  declare a type-checked variable to track the running total
=/  total=@ud  0
::
::  create a trap and evaluate its one arm (called $)
|-
::
::  check to see if t is equal to the gate's sample
?~  =(t lessthanthis)
::
  ::  if so, return the accumulated running total (cast to an unsigned decimal
  ::  for good output hygiene)
  `@ud`total
::
::  if not, logical-or test to see if t is a multiple of 3 or 5
?:  |(=(0 (mod t 3)) =(0 (mod t 5)))
::
  ::  if so, re-evaluate the arm of the trap but with total increased by t, and
  ::  and with t replaced with t incremented by 1
  $(total (add total t), t +(t))
::
::  if not, just re-evaluate the arm of the trap but with t incremented by 1
$(t +(t))
