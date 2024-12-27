int: n; %number of vertices

array[1..n,1..n] of var 0..1:graph;

var int: num_edges;

constraint forall(i in 1..n)(
  graph[i,i] = 0
);

constraint forall(i,j in 1..n)(
  graph[i,j] = graph[j,i]
);

constraint forall(i,j,k,l in 1..n where i!=k /\ j!=l)(
  graph[i,j]*graph[j,k]*graph[k,l]*graph[l,i] = 0
);

constraint num_edges = sum([graph[i,j] | i,j in 1..n]) div 2;

solve maximize num_edges;

output["num of edges: ",show(num_edges),"\n"];
