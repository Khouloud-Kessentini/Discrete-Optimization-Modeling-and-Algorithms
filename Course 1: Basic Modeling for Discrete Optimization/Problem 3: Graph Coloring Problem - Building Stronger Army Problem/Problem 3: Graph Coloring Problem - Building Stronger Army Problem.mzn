% GRAPH- COLORING - BUILDING STRONGER ARMY PROBLEM

% ----------------------------- %
%      PROBLEM PARAMETERS       %
% ----------------------------- %

enum COLORS = {GREEN, BLUE, PINK, YELLOW};

% ----------------------------- %
%      PROBLEM FORMULATION      %
% ----------------------------- %

% DECISION VARIABLES

var COLORS: Liang; 
var COLORS: Yong;
var COLORS: Yi;
var COLORS: Jiao;
var COLORS: Jing;
var COLORS: Si;
var COLORS: Bing;
var COLORS: You;
var COLORS: Ji;
var COLORS: Yan;
var COLORS: Yu;
var COLORS: Yang;
var COLORS: Xu;
var COLORS: Qing;


% OBJECTIVE FUNCTION

solve satisfy;


% CONSTRAINTS

constraint Liang != Yong;

constraint Yong != Si;
constraint Yong != Yi;
constraint Yong != Jing;

constraint Yi != Jing;
constraint Yi != Jiao;

constraint Si != Bing;
constraint Si != Ji;
constraint Si != Yan;
constraint Si != Yu;
constraint Si != Jing;

constraint Jiao != Jing;
constraint Jiao != Yang;

constraint Jing != Yu;
constraint Jing != Yang;

constraint Yang != Yu;
constraint Yang != Xu;

constraint Xu != Yu;
constraint Xu != Yan;
constraint Xu != Qing;

constraint Yu != Yan;

constraint Yan != Qing;
constraint Yan != Ji;

constraint Qing != Ji;

constraint Ji != You;
constraint Ji != Bing;

constraint Bing != You;
