::  hoon school week 1 assignment
::
::  hoping i did this sufficiently.  i chose to cast to a signed integer
::  because i didn't want to choose a target cast type that might not work
::  with certain ranges of atoms.  i don't even know if that's something
::  that even happens!, but i figured anything can be made into a signed
::  integer!
::
::  i didn't test to see if the input was _already_ a signed integer, but
::  i'm guessing that wasn't a week 1 necessity.
::
|=  a=@                                                 ::  gate w/atom a
^-  @s  ^-  @  a                                        ::  cast a to @ to @s
