 z←GameOfLife x;neigh_num;neighbours;nextgen ⍝ x is the input matrix
 neighbours←{({(⊂3 3⍴1 1 1 1 0)×⊂⍵}⌺3 3)⍵}x ⍝ here i divide the matrix for each element in the matrix, giving a 5 5 matrix of 3 3 matrices containing the element and the neightbours, witch is later filtered by the multiplication
 neigh_num←{+/¨,¨⍵}neighbours ⍝ i transform the 3 3 matrices into vectors and sum them up to get the number of neighbours
 ⊢nextgen←{(3=⍵)+2=⍵∧x}neigh_num ⍝ if it has three neightbours anyways it is alive, if it has only two i have to check if it was alive the previous generation, and print the resulting matrix 
 ⎕DL 1 ⍝ delay 
 GameOfLife nextgen ⍝ i recall the function with the previous result, and so it goes on until you stop it
