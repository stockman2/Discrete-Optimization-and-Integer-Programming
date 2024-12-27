% LOCOMOTIVE ASSIGNMENT

% There is a linear segment of two-ways (two-directions) railroad consisting of several railroad stations s_i.
% Distances d(s_i, s_{i+1}) are known. There is a given set of trains which are scheduled in time and space: 
% for each train i a departure event of time and station (td_i, sd_i) is known and the destination sf_i station is known too.
% The speed v=const of each train is known and constant. The problem is to find a minimal set of locomotives needed 
% to serve the given train schedule, if any locomotive can either stay at a station or run between stations 
% either with or without a train, with the same constant speed v. Each train needs exactly one locomotive and the time 
% for a locomotive to attach-deattach to or from the train is negligible (zero). 
% For the found minimal set of locomotives find the optimal assignment so that 
% the total empty runs and waiting times are minimal.

% Input

int: N; % = number of trains
int: S; % = number of stations

% All departure information for each train
array[1..N] of int: DepartureStation; 
array[1..N] of int: DepartureYear;
array[1..N] of int: DepartureMonth;
array[1..N] of int: DepartureDay;
array[1..N] of int: DepartureHour;
array[1..N] of int: DepartureMin;

% All departure information for each train
array[1..N] of int: ArrivalStation; 
array[1..N] of int: ArrivalYear;
array[1..N] of int: ArrivalMonth;
array[1..N] of int: ArrivalDay;
array[1..N] of int: ArrivalHour;
array[1..N] of int: ArrivalMin;



