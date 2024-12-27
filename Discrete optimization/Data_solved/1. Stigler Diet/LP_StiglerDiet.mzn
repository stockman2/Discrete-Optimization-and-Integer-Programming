%DATA
% planning horizon
int: T = 365;
% food ids: 1 to F
int: F = 77;
% nutrient ids: 1 to N
int: N = 9;
% allowed violation of nutrition target
float: delta = 0.1;
% nutrition target per day
array[1..N] of float: k;
% food nutrition per 1$ (1939)
array[1..F, 1..N] of float: s;
array[1..F] of var float: values;
% VARIABLES
var float: cost = sum(f in 1..F) (values[f]);
% OBJECTIVE - MINIMIZE TOTAL COST
solve minimize cost;
% CONSTRAINTS
constraint  
forall(n in 1..N)  (
  sum(f in 1..F) (s[f,n] * values[f]) <= T*k[n]*(1 + delta)  
  );

constraint
forall(n in 1..N)  (
  sum(f in 1..F) (s[f,n] * values[f]) >= T*k[n]*(1 - delta)
  );

constraint cost >= 0;

constraint
forall(f in 1..F) (
    values[f] >= 0
  );

output [
  "cost: ", show(cost), "\n"
  ];
