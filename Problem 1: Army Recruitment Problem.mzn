% ARMY RECRUITMENT PROBLEM

% ----------------------------- %
%      PROBLEM PARAMETERS       %
% ----------------------------- %

int: FENG_POWER = 6;
int: LUI_POWER = 10;
int: ZHAO_POWER = 8;
int: JIAN_POWER = 40;

int: FENG_COST = 13;
int: LUI_COST = 21;
int: ZHAO_COST = 17;
int: JIAN_COST = 100;

int: FENG_MAX_NB = 1000;
int: LUI_MAX_NB = 400;
int: ZHAO_MAX_NB = 500;
int: JIAN_MAX_NB = 150;

int: MAX_BUDGET = 10000;

% ----------------------------- %
%      PROBLEM FORMULATION       %
% ----------------------------- %

% DECISION VARIABLES

var int: NB_FENG;
var int: NB_LUI;
var int: NB_ZHAO;
var int: NB_JIAN;

% OBJECTIVE FUNCTION

var int: objective = FENG_POWER * NB_FENG + LUI_POWER * NB_LUI + ZHAO_POWER * NB_ZHAO + JIAN_POWER * NB_JIAN;

solve maximize objective;

% CONSTRAINTS

constraint NB_FENG <= FENG_MAX_NB;
constraint NB_LUI <= LUI_MAX_NB;
constraint NB_ZHAO <= ZHAO_MAX_NB;
constraint NB_JIAN <= JIAN_MAX_NB;
constraint NB_FENG * FENG_COST + NB_LUI * LUI_COST + NB_ZHAO * ZHAO_COST + NB_JIAN * JIAN_COST <= MAX_BUDGET;
constraint NB_FENG >= 0;
constraint NB_LUI >= 0;
constraint NB_ZHAO >= 0;
constraint NB_JIAN >= 0;

output [" FENG: \(NB_FENG) \n LUI: \(NB_LUI) \n ZHAO: \(NB_ZHAO) \n JIAN: \(NB_JIAN) \n OBJECTIVE: \(objective)"]
