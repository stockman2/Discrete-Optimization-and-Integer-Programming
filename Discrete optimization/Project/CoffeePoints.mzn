% COFFEE POINTS LOCATIONS
% We need to decide how many coffee points to build in the town and where this points should be located.   
%  
% [
%   Figure 1 in matrix for where non-zero number indicates a household with number of citizens. 
%        
%    1 2 3 4 5 6 7 8 9 10
%    0,0,0,5,0,0,0,2,2,4, % 1
%    0,0,0,9,0,0,1,0,0,0, % 2
%    0,0,0,0,0,0,0,1,1,0, % 3
%    0,1,0,0,0,0,0,0,0,0, % 4
%    4,0,0,0,0,0,0,0,0,0, % 5
%    0,1,0,0,6,9,0,0,0,0, % 6
%    0,0,0,0,1,0,0,0,3,0, % 7
%    0,0,1,0,4,0,0,0,0,0, % 8
%    0,0,0,0,2,0,0,0,9,0, % 9
%    0,0,0,0,0,0,6,0,0,0, % 10
%  ]
% 
% The map in Figure 1 shows the locations of 20 homes in a small town.  
% Our objective is to build coffee points so that no citizen has to travel more than M-km to reach them.  
% You can build as many restaurants as you like and restaurants can be built on 
% any cell (including one that has a home on it).
% 
% Use a direct line between cells to calculate travel distance (i.e the euclidean distance). The distance 
% between two adjacent cells is 1km and the distance between two diagonal cells is 1.41 km. 
% 
% Criterion 1: Minimum number of coffee points do we need to satisfy all citizen for M=4 and M=3? 
% Criterion 2: Suppose that citizens goes to their closest coffee point (if there more than one, you can choose in which one). Propose the solution which is optimal by criterion 1 with minimum difference between coffee points with largest and lowest loads (number of serviced citizens).   
% """