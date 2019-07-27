::  hoon school week 3 assignment
::
::  thethirdelement.hoon
::
::  returns the third element of a list (or ~ if fewer than 3 elements) by
::  returning the head of the tail of the tail of the original list.
::
::  this assignment also includes "breathing comments"-style comments.
::
::  create a gate with that takes a list of nouns
::
|=  inputlist=(list *)  
::  declare a counter variable that starts at 1
::                               
=/  t=@ud  1
::  establish a recursion point
::
|-
::  test the list of nouns to see if it's null
::
?~  inputlist
::  if it is, return null.  i confess to not yet understanding why this prints
::  as a 0 in this case.  it never did it before until i began entering all of
::  the comments, interestingly.
::
  ~
::  if it's a non-null list, that mean's it a lest with a head and a tail.
::  cool.  now let's see how our counter is doing to see what we should do
::  with our lest.  test to see if it's reached three or not.
::
?:  =(t 3)
::  if it has, then return the head of our lest and we're done.
::
  i.inputlist
::  if not, recurse with an incremented copy of our counter, and with the tail
::  of the lest replacing the inputted list of nouns
::
$(t +(t), inputlist t.inputlist)
