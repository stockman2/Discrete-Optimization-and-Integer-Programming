%  BRIDGES
% 
% The five residents of Village live in houses represented by the 
% letters "A" through "F" as shown on the left side of Figure 1. The offices 
% where they will be working are represented by their matching letters on the island of Worktown.
% 
% Because a river lies between Village and Worktown, the residents are unable 
% to get to work. They have in their budget enough funds to build two bridges 
% that could connect Village to Worktown. The locations where these bridges could 
% be built are indicated by the 1x3 numbered tiles (4 types). Bridges can 
% only be built in these approved areas.
% 
% Once the bridges are built, the residents would then be able to commute to 
% work. A commuter will always take the shortest path from home to work and can 
% only travel in up, down, left or right directions (no diagonals). Each tile 
% represents a 1-km-by-1-km distance. As an example, if bridge four were built, 
% resident "E" would have to travel 10 km to reach his workplace.
% 
%    Figure 1:
%   
%    Village     Bridge  Worktown
%    0,0,0,0,0,  0,0,0,  0,0,0,0,0, % 1
%    0,0,0,A,0,  1,1,1,  0,B,0,0,0, % 2
%    0,B,0,0,0,  0,0,0,  0,0,0,0,0, % 3
%    0,0,0,0,0,  0,0,0,  0,0,0,0,0, % 4
%    0,0,0,0,0,  0,0,0,  0,0,0,0,0, % 5
%    0,0,C,0,0,  0,0,0,  0,0,0,A,0, % 6
%    0,D,0,0,0,  2,2,2,  0,0,0,0,0, % 7
%    0,0,0,0,0,  0,0,0,  0,0,0,0,F, % 8
%    0,0,0,0,0,  0,0,0,  0,C,0,0,0, % 9
%    0,E,0,0,0,  3,3,3,  0,0,0,0,0, % 10
%    0,0,0,0,0,  0,0,0,  0,0,0,0,0, % 11
%    0,0,0,F,0,  4,4,4,  0,E,0,D,0, % 12
%    0,0,0,0,0,  0,0,0,  0,0,0,0,0, % 13
%

% 
% Question:
% Which (1-2-3) bridges should be built in order to:
% Criterion 1:  minimize the maximum commuting distance of all residents?
% Criterion 2:  for solution optimal by criterion 1, minimize the total commuting distance of all residents?