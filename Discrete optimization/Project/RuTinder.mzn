% DATING SERVICE

% As you know Tinder left Russia. So, let's build our own dating service!
%  Below is a brief  explanation of "business logic" behind the proposed online dating service:
%
%     - Each person creates a profile defining their preferences
%     - The rules check the profiles to determine all the possible matches for a person
%     - The matches are scored. Higher scores indicate a better match
%     - Scoring (once the matching criteria are met) is based on the age difference and the 
%       number of matching interests

% Each profile includes:
%     - Name
%     - Gender
%     - City
%     - Age
%     - List of interests
%     - Minimum and Maximum acceptable age
%     - Acceptable genders 
%     - Minimum number of matching interests.
%
% And here are the rules (applied to both persons):
%
%     - Gender of the other person must be one of the acceptable genders
%     - Age of the other person must be within the acceptable range
%     - City must match exactly
%     - Matching interests of the other person must match at least the number specified
%
% Find top-2 candidates for each profile.
%
% They even provided an example of a compatible match:
%
%     Anna (age 26, lives in Rybinsk, interests are skydiving, knitting, reading) is looking for a male age 28-32 
%         with at least one of those interests
%     Sergey (age 29, lives in Rybinsk, interests are skydiving, soccer, knitting) is looking for a female age 24-29 
%         with at least two of those interests
% """

% """
%  name     age gender minMatches  acceptableSex city        minAge maxAge minInterests interests              
%  ---------------------------------------------------------------------------------------------------------------------
%  Anna     26    F      1           M           Rybinsk     28     32        1   sky diving,knitting,reading
%  Sergey   29    M      2           F           Rybinsk     24     29        2   sky diving,soccer,knitting
%  Veronika 31    F      2           M           Yaroslavl   35     45        3   soccer,paddle boarding,kayaking
%  Olga     29    F      1           M           Yaroslavl   29     40        2   soccer,paddle boarding,hiking
%  Victor   34    M      2           F           Rybinsk   24     29        2   paddle boarding,kayaking,skiing
%  Maria    23    F      1           M           Yaroslavl   25     30        3   soccer,skiing,reading,kayaking
%  Igor     29    M      1           F           Yaroslavl   21     25        1   soccer,kayaking,skiing,reading
%  Oleg     41    M      1           F           Rybinsk   21     40        1   soccer,skiing,reading
%  Andrew   43    M      1           F           Yaroslavl   21     35        1   soccer,kayaking,paddle boarding,reading
%  Ekaterina27    F      2           M           Rybinsk     27     35        1   jogging,voleyball
% """
%
%TEST DATA 
var int: x;
solve satisfy;
