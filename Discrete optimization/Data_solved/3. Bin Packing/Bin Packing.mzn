% BIN PACKING PROBLEM
% There are n items with different weights and m bins with equal capacity. These items should be packed into bins such that 
% total weight of items packed into one bin doesn't exceed capacity of this bin. Find minimal number of required bins. 

% DATA
int: num_stuff;                    % number of things to pack
array[1..num_stuff] of int: stuff; % the weight of the things to pack
int: bin_capacity;                 % all bins have the same capacity
int: num_bins;                     % total number of bins (some of them can be empty)
set of int: set_stuff =  1..num_stuff;
set of int: set_bins = 1..num_bins;

% VARIABLES
array [1..num_bins, 1..num_stuff] of var 0..1: setup;

array [1..num_bins] of var 0..1: bin_setup;
 
var 0..num_bins: bin_used;

constraint forall(i in set_bins)(
  sum([stuff[j]*setup[i,j] | j in  set_stuff]) <= bin_capacity*bin_setup[i]
);

constraint forall(j in set_stuff)(
  sum([setup[i,j] | i in set_bins]) = 1
);

constraint bin_used = sum([bin_setup[i] | i in set_bins]
);

solve minimize bin_used;

output["bin used:", show(bin_used), "\n"];