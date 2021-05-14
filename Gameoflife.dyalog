 z←GameOfLife x;neigh_num;neighbours;nextgen
 neighbours←{({(⊂3 3⍴1 1 1 1 0)×⊂⍵}⌺3 3)⍵}x
 neigh_num←{+/¨,¨⍵}neighbours
 ⊢nextgen←{(3=⍵)+2=⍵∧x}neigh_num
 ⎕DL 1
 GameOfLife nextgen
