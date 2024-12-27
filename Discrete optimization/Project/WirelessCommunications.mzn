% SCHEDULING IN WIRELESS COMMUNICATIONS

% A cellular base station can transmit data to N users (e.g. mobile phones) using a fixed set of M frequencies, 
% and the base station can use these frequencies simultaneously and independently. For each discrete time moment t = 0, ..., T-1 
% for each frequency m = 0, ..., M-1 the base station can choose a user n = 0, ..., N-1 to transmit some data to it. 
% Let R_{m, n} be the rate of the user n on the frequency m, i.e. the amount of bits that the base station can transmit 
% to the user n on the frequency m in one time moment. 
    
% For each user n there is a data packet of the size D_n bits, and the base station needs to transmit it to the user n
% before its deadline tau_n. This means that the base station has tau_n time moments to send to the user n at least D_n bits
% of data summarily, and if this happens, the user n is called served. The problem is the following: maximize the number of served users.
    
% Input
int: N; % = the number of users,
int: M; % = the number of frequencies,
int: T; % = the number of time moments that we consider,
array[1..M, 1..N] of int: R; % = the MxN-matrix of rates: R_{m, n} \in \mathbb{N} is the rate of the user n on the frequency m,
array[1..N] of int: D; % = the vector of sizes of packets: D_n\in \mathbb{N} is the packet size of the user n,
array[1..N] of int: tau; % = the vector of deadlines: tau_n \in \mathbb{N} is the deadline of the user n; it is guaranteed that tau_n < T.

% Output
%    L = maximum number of served users,
%    y = Boolean vector of length N such that y_n = 1 if the user n is served, and y_n = 0 otherwise.  
%    A = the TxM-matrix representing an optimal solution: if at a time moment t on a frequency m 
%        the base station transmitted data to a user n then A_{t, m} = n. If the base station transmitted 
%        nothing at this moment on this frequency then A_{t, m} = -1. 
