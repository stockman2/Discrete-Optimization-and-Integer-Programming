int: s = 3;

int: n = 9;

set of int: PuzzleRange = 1..n;

int: digs = ceil(log(10.0,int2float(n)));

set of int: SubQuad = 1..s;

set of int: byte = 0..1;

array[1..n, 1..n] of 0..n: start; % 0 represents an empty square

array[1..n, 1..n] of var PuzzleRange: puzzle;

array[1..n, 1..n, 1..n] of var byte: Bigpuzzle;

constraint forall(i,j,k in PuzzleRange)(
  if start[i,j] = k then Bigpuzzle[i,j,k] = 1 else true endif 
);
  
constraint forall(j,k in PuzzleRange)(
  sum([Bigpuzzle[i,j,k] | i in PuzzleRange]) = 1
);

constraint forall(i,k in PuzzleRange)(
  sum([Bigpuzzle[i,j,k] | j in PuzzleRange]) = 1
);

constraint forall(k in PuzzleRange, i,j in SubQuad)(
  sum([Bigpuzzle[3*(i - 1) + g, 3*(j - 1) + h, k] | g, h in SubQuad]) = 1
);

constraint forall(i,j in PuzzleRange)(
  puzzle[i,j] = sum([Bigpuzzle[i,j,k] * k | k in PuzzleRange]));

solve satisfy;

output [ show_int(digs,puzzle[i,j]) ++ " " ++
  if j mod s == 0 then " " else "" endif ++
  if j == n then
    if i != n then
      if i mod s == 0 then "\n\n" else "\n" endif
else "" endif else "" endif | i,j in PuzzleRange ] ++ ["\n"];
  
