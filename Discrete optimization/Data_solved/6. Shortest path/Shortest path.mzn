%DATA
% vertice ids 1 to N
int: N = 9;
% vertex a
%case 1
int: a = 1;
%case 2
%int: a = 2;
%case 3
%int: a = 4;

% vertex b
%case 1
int: b = 9;
%case 2
%int: b = 8;
%case 3
%int: b = 2;

% edge distances matrix 
array[1..N, 1..N] of int: l = 
[|0, 8, 12, -1, -1, -1, -1, -1, -1|
 -1, 0, 13, 25, 9, -1, -1, -1, -1|
 -1, -1, 0, 14, -1, -1, 21, -1, -1|
 -1, -1, -1, 0, 20, 8, 12, 12, 16|
 -1, 9, -1, -1, 0, 19, -1, -1, -1|
 -1, -1, -1, -1, -1, 0, -1, 11, -1|
 -1, -1, -1, -1, -1, -1, 0, -1, 11|
 -1, -1, -1, -1, -1, -1, -1, 0, 9|
 -1, -1, -1, -1, -1, -1, -1, -1, 0|];

array[1..N, 1..N] of var 0..1: path;
var int: length;
%OBJECTIVE

%CONSTRAINTS
constraint sum([path[a, i] - path[i, a] | i in 1..N]) = 1;

constraint sum([path[i, b] - path[b, i]| i in 1..N]) = 1;

constraint forall(i,j in 1..N)(
  path[i, j]*l[i, j] >= 0
);

constraint forall(i in 1..N where i != a /\  i != b)(
  sum([path[j, i] - path[i, j] | j in 1..N]) = 0
);  

constraint length = sum([l[i, j]*path[i, j] | i,j in 1..N]);

solve minimize length;

output["length: ", show(length)];