% COUNTING SOLDIERS PROBLEM 

% ----------------------------- %
%      PROBLEM FORMULATION      %
% ----------------------------- %


% DECISION VARIABLES

var int: NB_SOLDIERS;



% OBJECTIVE FUNCTION 

solve satisfy;



% CONSTRAINTS

constraint NB_SOLDIERS >= 0;
constraint NB_SOLDIERS <= 496; % 496 = 392 + 104 \\ see problem 1
constraint NB_SOLDIERS mod 5 = 2;
constraint NB_SOLDIERS mod 7 = 2;
constraint NB_SOLDIERS mod 12 = 1;
