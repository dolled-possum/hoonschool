::  hoon school week 2 assignment
::
::  nountester.hoon
::
::  accepts a noun input, tests if it's a cell, or if it's not, if it's an even
::  or odd atom
::
|=  a=*                                             ::  gate with input noun a
?^  a                                               ::  wutket test for cell,
  "it's a cell"                                     ::  exec child 2 if cell or
?:  =(0 (mod a 2))                                  ::  if not, wutcol even/odd
  "it's an even atom"                               ::  exec child 2 if even or
"it's an odd atom"                                  ::  child three if odd
