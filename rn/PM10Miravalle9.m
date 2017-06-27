function [Y,Xf,Af] = PM10Miravalle9(X,~,~)
%PM10MIRAVALLE9 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:16.
% 
% [Y] = PM10Miravalle9(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 6xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.00382043935052531;0.0208986415882968;0.056980056980057;0.0063552589768033];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.8368908420150043;2.2668967400135562;-1.0565992796740802;0.17617594586169291;0.23840277408676974;0.060989271695970987;-1.7176974710747797;-0.34793274068615609;-1.6577025268002101;-0.18016964812927772;-0.54322260705592207;-0.77754878178816877;1.4163732394362027;0.61199930716961137];
IW1_1 = [0.8309119324910359 3.0174379348076577 1.6488580120946734 1.4424782739503299 1.7197857263143177 0.0063246964830810729;-1.1945535966073226 -1.130237023028114 1.0737342308935569 -1.4443607471669417 0.53358332272425646 0.85010391989120526;1.8584611334161927 -1.1323666323287878 0.35892086356116354 1.4920520648263054 2.9626134491266414 -0.095628802765289386;0.78288315744142445 -1.5685348472417366 -0.77895856958341336 -0.37180959876944714 -1.1393858670404347 0.05729097810419035;0.69103222367050221 -0.91668021487610696 -0.228222456243941 -0.31842378454319165 -1.5859627655180395 0.0039463339384697583;-0.96368999596527338 -0.1952633886158632 -0.74899468379374334 0.16306892362930506 -0.016920913076421185 0.26571547344120083;2.0267958560719728 -0.24152444051600716 0.7460850624652372 -2.5589581612638148 0.38570388115727738 -0.38965605350128552;0.25918757565350448 -0.79729475054409571 -1.3294142012352486 -0.56247025391437799 -0.88113410749647869 1.2088593380487966;-1.949564576823626 0.85035265153102491 -0.31474046560358765 -0.55505488733400554 -1.254377926928167 0.11939280546046895;-0.64024572619788223 -0.63074386603707078 0.36621910958792803 0.18271296642338231 0.74455144606984658 -0.52014988214171576;-0.26898781718633452 -0.040011049421637343 0.089033541436701891 -0.45900419482050636 0.31493561582825358 -0.34497329101400692;-1.8389759770305256 0.21339496086699425 0.025607393276081809 -0.45226191106952274 -1.1449916272277798 0.12777704087102965;0.46901855881543442 0.1832343527781726 1.0617995517186525 -0.25262256068606542 -0.87800760802532185 0.57026571658747338;0.23582054576272904 -0.045270436844027401 0.44957308345403246 0.75137208961622581 0.22119834846962419 -0.14956939945381256];

% Layer 2
b2 = [-0.57469169535871423;9.9847471169733524;7.5219998069966403;-2.8262241565399946;0.74204878566392229;0.37019738328656709;-0.61515488588607781;-1.3037973489229833;-0.079765091537878169;-1.9405187894119118;-1.5458928975896653;-1.3750145958481359;-0.24690729601555128;1.2251827266648034];
LW2_1 = [4.411162851031099 1.6371780418490993 2.1693419795041291 -2.4419596216352826 4.2221908076237726 -2.2621846419628624 -6.4510842016419021 1.7184831748569998 2.7387623181059531 2.248580065887186 9.0077607764253163 4.9061489508744369 8.3335369739659999 6.6818445547255942;-0.44284524561229088 -2.3419991487273832 1.3001537060471877 -0.043392019830356676 -5.506154254000756 -1.7724196931080074 -0.31471826663790836 2.2035132614759578 1.529893247144847 1.0874316037513618 5.8421059224872653 -4.6855836096177246 -3.0706945230512841 -2.8911508039335296;-3.1342045205465827 -0.98354307129693452 -5.6984761986788035 14.665192832920965 -3.7661594899843704 -3.8491154344797809 11.27758361782398 -12.469652147990134 7.8902245701864446 -4.1148597139222201 -12.154129123276659 -5.4293625118838049 14.569012830027875 -22.743171701131672;-2.8245732193112674 -0.10005102164931473 0.89945460752695872 -5.2483430967438691 2.0817264110274691 -1.977860962030179 0.041592873702743449 0.81543809794802402 1.6780060616816572 -0.56507106882775004 -0.13022611554509395 2.9582373864532907 -1.5323281668953705 3.743784088077418;0.44515923992764772 -0.9746658984754536 2.8965268078864486 6.3786782174246044 -3.5303496483044685 5.7817932690358633 0.79798139854587002 -3.6014077688447643 2.3363146381291497 1.2338016429765319 -5.3535268409977004 -3.1798206185685758 0.43554407861370781 -8.5565780533482716;-0.46716765815241307 2.8436529808441624 -3.4519767723343602 -0.12133986838460301 1.6790748308749031 0.88691334401989841 2.8891560109361403 -2.1387332826792553 -1.8888804340578258 -4.6556733396469561 -2.4079493729513959 -0.2940750258249179 -1.2663016546841113 0.42573752171067991;0.67369092656805118 0.35011710654454781 -0.93471979405164918 -4.0230626815760706 2.1349170383827061 -4.2983015157807829 -3.301088942634097 3.6191954610760417 2.5101833995765879 3.7361858367519778 -0.37537892162287495 -1.059442943575577 -0.68129925850705919 3.2576871290897875;-9.4937202008031321 0.5745040335118512 0.89398246413292637 -12.652433573593569 -6.4210980019370671 -10.414338192749918 -8.5365856158087183 7.0265321328917141 -0.90463918874857163 3.6542803508577144 -2.0213057920063284 7.8263808436211804 -0.99761250121420952 3.6593843849168191;0.06644797106625655 0.17623153589396687 0.12890667572085684 -0.88404371252581593 0.99181912793253746 0.38470053557039224 -0.55535425780502479 0.36271110621576574 -0.19984615188428773 -0.44460939001951727 0.83973227298218145 0.29818588382823707 -0.24701191994187766 1.0818814939060832;-1.8787475332363086 -0.51044362460540582 -1.2972024788541887 -0.16202339182179809 -1.6884391330244248 -0.80341771268586548 1.3024091276397234 0.095213974488228728 -1.3552638016756602 2.3570745765831025 -8.4165756154274476 -0.40571005077615446 2.0959414368216556 -6.5053677414963929;0.91519048706346695 -0.64302795988143457 0.72892511410913152 1.8860530469798522 1.6696886338813299 3.8168371424392138 2.4729399289558076 2.8237678617402766 -2.4386462190175795 -1.3364835279801788 9.4570786704716934 1.1297856310738383 2.0865128743914969 8.6801236915687472;-0.096254413516030493 -0.1052763641702006 -2.2084978029359412 0.19768864787453949 -2.3794565590553813 0.21629634951852536 1.3223417501687205 -0.34414398791117173 1.5573480953985757 0.1823566089292124 1.6903160640894597 -1.5741512898297398 2.7273823335100569 3.0138305410287085;-0.61826929715465928 0.071395137795293134 -0.11117510295360891 0.57533065209116196 -1.3026525093425714 -2.8932403750208793 0.59136001549122374 -0.055607300547111535 -0.77198723373804123 0.24542537559435518 -1.7455955761179389 1.4049396675896444 -0.57168732724206683 -1.986707330324555;-0.55811774291913707 -1.0622670451437437 -5.6247423280106164 4.1967917780295831 -2.3995349890902875 1.5639471753914822 -3.9626751186264229 -1.9836203780377415 -0.78602753871745001 3.1763717649843657 -1.5941403940139798 2.9644816539611707 5.2777231780577329 -4.8075444448041313];

% Layer 3
b3 = -0.96880738409758316;
LW3_2 = [0.025350465597737269 -0.044268927560561576 -0.023406148668184999 -0.036913917354790056 0.1059757309871291 0.078948103161530711 0.11294991125242941 -0.052491590530679359 -0.9523302329616874 0.10387933522892119 0.10795100045130662 0.11351022449384664 -0.69125607228227437 -0.057112633136506018];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.00666000666000666;
y1_step1_xoffset = 0;

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX, X = {X}; end;

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
    Q = size(X{1},2); % samples/series
else
    Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS

    % Input 1
    Xp1 = mapminmax_apply(X{1,ts},x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = tansig_apply(repmat(b2,1,Q) + LW2_1*a1);
    
    % Layer 3
    a3 = repmat(b3,1,Q) + LW3_2*a2;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a3,y1_step1_gain,y1_step1_xoffset,y1_step1_ymin);
end

% Final Delay States
Xf = cell(1,0);
Af = cell(3,0);

% Format Output Arguments
if ~isCellX, Y = cell2mat(Y); end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings_gain,settings_xoffset,settings_ymin)
y = bsxfun(@minus,x,settings_xoffset);
y = bsxfun(@times,y,settings_gain);
y = bsxfun(@plus,y,settings_ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings_gain,settings_xoffset,settings_ymin)
x = bsxfun(@minus,y,settings_ymin);
x = bsxfun(@rdivide,x,settings_gain);
x = bsxfun(@plus,x,settings_xoffset);
end
