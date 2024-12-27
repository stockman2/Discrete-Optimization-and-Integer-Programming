% SINGLE MACHINE SCHEDULING
% There are n tasks which should be processed by a single machine for the time interval [0,..,T]. We consider only discrete time moments.
% Each task has release time, processing time and deadline. Only one task can be processed by the machine at each time moment. 
% Makespan of given schedule is the completion time of the latest task. Find a minimal makespan schedule.

% DATA
int: T;                  % time horizon
int: n;                  % num tasks
array[1..n] of int: r;   % release times
array[1..n] of int: p;   % processing times
array[1..n] of int: d;   % deadlines

% VARIABLES
array[1..n,1..n] of var 0..1: table;
array[1..n] of var 0..T: end_times;

constraint forall(i in 1..n)(
    sum([table[i, j] | j in 1..n]) = 1
);

constraint forall(j in 1..n)(
    sum([table[i, j] | i in 1..n]) = 1
);

constraint forall(i in 1..n)(
    end_times[i] <= d[i]
);

constraint forall(j in 1..n)(
    sum([table[i, j] * (r[i] + p[i]) | i in 1..n]) <= end_times[j]
);

constraint forall(j in 2..n)(
    sum([table[i, j] * p[i] | i in 1..n]) + end_times[j - 1] <= end_times[j]
);

solve minimize end_times[n];

output["end time: ", show(end_times[n])];
