function [Y,Xf,Af] = COLasPintas15(X,~,~)
%COLASPINTAS15 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:01.
% 
% [Y] = COLasPintas15(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 8xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.241545893719807;14.7058823529412;0.0179856115107914;0.0558659217877095;0.00576368876080692;0.212765957446809];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.8079945529659198;-2.3064938652649798;-1.6893038403986416;-1.5345241098760412;-1.2693051460216354;-2.6103435907535877;-0.71946809266721978;-0.24758487425988079;-2.3657362212445774;-1.6832100263259087;1.0952981297439093;0.058692897496862746;0.72279218488363262;1.9000618138812513];
IW1_1 = [-0.39396121108696236 -2.4486593350341082 0.68681211882700655 0.87056150268766408 -0.46870601909335102 -0.45472522018685263 -0.025085451913303643 0.75578161503849761;0.36657506198181611 -1.5193469230616024 1.0364183221755312 -2.3760905328024053 -1.1682614640272706 1.4291927739645141 -0.099135336804315299 -0.48712927748889895;0.21507067123014489 3.2831386083217367 0.7843156806069711 -0.95596835292260907 -1.2591001865665254 -1.672212356377458 1.1302530406084605 0.6154110600099495;2.3592723674269567 0.337920662688523 0.12253708070725952 0.41562899694573463 -0.099267303010460398 -1.7739603631767735 0.052625146881390493 -0.032280717669839018;0.59981091460468672 4.404288061451366 0.89169632704287771 0.14052232382079063 0.73703050115294966 -0.19821512626963664 -0.65644703217230149 -0.14962625706022173;0.64667158376440359 -0.69595140201065808 -1.3349600356754923 -0.9798620540648123 0.41706969453713261 0.79593996458180449 -0.089933739772110638 -0.096116047516877079;0.7998540465744044 -0.35509183133258226 0.69159443965736622 -0.046658186838607354 -0.63035074972624028 1.3556497766568252 0.92879246768991597 1.0411107273673399;-1.6206753572239332 0.99670370362488625 -0.56754271652342514 0.54695590184273335 0.015236807826496522 -0.72137695457267359 -0.10323689974502442 0.49248644523863194;-4.2878640025049437 -1.4157838159331728 0.66485137257565807 -0.73159918194611517 1.8264109653042178 2.2926332317115476 0.22657500399949754 -0.40929212705745188;-0.1353289871801098 4.7967393958092739 0.52443898149883217 0.32739058985337416 0.084882675074512401 -0.012290404222932958 0.19741637482185348 0.76326233982204206;0.87969253190059904 1.0668135861278416 0.3566677479380016 -0.33414566216542879 2.4419067027530561 1.3177620451251073 0.30992390768637162 -0.22774429041905345;-0.12699681863206902 1.6829897390874859 0.93328546270740109 -0.57251250215096383 -0.97020473213723368 -0.46133755696309231 -1.3395406863527637 -0.31584391015739899;0.17827117853700425 -0.6247275316470362 0.41731693323033558 -1.31300197851276 -1.8906549569449613 -0.85626584520933158 -0.10680302955809712 -1.1071739828650626;-0.25597321372992154 -0.36284379159426478 0.71250771728415307 -0.050905494264208401 1.9584532346737618 1.1021053577971438 -0.068654551710564685 -0.60087794315149035];

% Layer 2
b2 = [-1.9617469159644441;1.9987859171636004;1.4745313170245264;-2.0252642890999182;-0.95508358211689159;-0.39945356861715903;0.47169608140346636;1.736402591671862;-0.44063987544236177;-1.1697350941703037;-1.3335152892547326;-1.5107658956589332;-2.8051828919013291;-1.8634235300261823];
LW2_1 = [1.9963547393466596 -0.23077879040118862 0.85619299719486508 0.27069010738493948 1.4798103093535802 0.021404730660506001 -0.52894831517633878 0.8195518502812511 0.99367111716048717 -0.21863521280060777 0.22594449570028796 0.22062311049460187 1.25585040933553 -1.0866755019925061;-0.52965534436760664 0.26169878619824116 0.81925106894644606 0.079941935298770445 0.48009362400805089 0.75033276608174715 -1.0539762148757783 0.23055629639404787 0.16438104763220682 -1.1631689897406343 -0.88162760801436169 0.41046342925154938 -0.12954243398128196 -0.67064116329725165;0.080353293685076196 0.039442495074194568 0.049592571074114647 0.92372810188828114 0.17256876409683194 0.78183162949586427 0.47666855781415562 0.77438938665734813 0.2639505010872028 0.56009665540031461 0.029013349415024911 -0.62193691283888641 0.58163743871181328 1.021414762543287;1.1000772741096281 -0.29363753245305591 -0.4989619258736116 0.17776030983924576 -0.87907910431719116 -0.096937514041179465 0.80643811339687466 0.58347580830930734 -0.96814448944981701 -0.022616810829304366 0.410572550337024 0.74838053483038081 -0.46492222471686573 1.4471755197418832;-0.052828683854460212 0.32946803456799945 -0.0264584431135454 0.70077850334703085 0.30303072644918883 0.23071712487786922 0.5600682071473706 1.024033261412661 -1.251321833941061 -0.32099976317709689 0.52410187440810119 0.49571441532224525 -0.051780805228295833 0.059825409738484922;1.5683125302095331 0.018474877756047496 0.23861611119392589 -1.0368839391501594 0.63056005164784057 0.55968279010689848 0.39940141822207265 0.41901005741043784 0.63806026779125247 -0.79657011275793033 1.752395942556606 -0.52402702862162776 0.9680728061590318 0.21189300091339464;0.83901985682177782 -0.55728151097589829 0.51119262521592013 0.051978231980674618 0.69891729371567757 0.15580746903346168 0.80808853901054978 -0.40031239359813658 -0.52422570279993252 -0.49354974587205208 0.32012953828490442 0.54105462588120368 -0.36949607214761249 0.50382078622237192;0.56526282974858366 -0.22423910755897189 -0.98846398159326188 0.83287861932316809 0.08329402103608069 1.2779102935394953 1.0045352075078227 0.076728637636272704 0.81585128332390711 -0.14664253229405458 0.58823131549367669 -0.52416634077643953 -0.52997057708355366 -0.15558290215635642;-1.1087506049583054 0.50668855266030444 -0.59979995151521204 -0.43287650202281153 -0.50872871894983707 -0.23439920092332911 -0.95440288104220872 -0.22257171643377249 0.95505126238774041 0.30927732855634915 -0.29101141733648245 -0.7324393160558702 0.20560992872649389 -1.2183893520820126;-0.027206860322002049 -0.421799010741294 1.4513365349743799 -0.2750080925463857 0.13414882003564615 0.15245610181208671 -0.27173241528130004 0.72348703896536681 -0.13850448185475384 -2.3985782186212767 -0.31861341622495487 0.023545063543292725 0.44978325598483992 -0.077735684427853891;-2.4058726092731817 0.0010892004776603958 -0.9370163798600748 -0.22096532546795283 -0.17979434219751333 -1.1514298720317175 -1.3552621458736618 -0.49384629999775986 -0.48753016282727601 -0.46238137229320742 -1.0452200824822713 -0.50157683213030846 0.03598321207447025 0.4293793703829249;-0.31611883904839022 0.55217808402392821 0.36473753654123525 0.24028542774167402 -0.84051199537358279 -0.22989048291724812 0.25564266275705827 0.83281964070220238 0.1765294591331712 -0.2108956612717276 0.6333098783801473 -0.75516557542594454 0.65657287134427755 -1.0398847523728729;-0.52102124080999301 -0.62130627295254237 0.4168012155850252 -0.59116043628319592 1.2649221915520781 -0.61232129805245383 0.87191885902499966 -0.31851821032727506 -0.25222138664475169 -1.124296704428535 1.0362641886044455 0.44493016233880939 -0.18958613685730186 -0.78235541868852387;-0.36163012886590423 -0.65961555266998106 0.41574353472392628 -0.38050635342664541 1.3982265315623919 -0.32799821368988868 0.25420260322696558 -0.80068722046898821 0.48233046367403687 -0.15715443312211475 0.19089226341589766 0.24813023887505647 -0.36618720604792232 -0.57978284398584234];

% Layer 3
b3 = -0.1082473345116996;
LW3_2 = [0.73389573029881883 0.36815180393346608 0.79828096700933959 0.72357162462268754 -0.72795710251469448 -0.49402226641356534 1.3778526616826097 -0.39046801731002034 1.3513035752902387 -0.37148294528107201 0.25850910301097718 0.83735354884988755 1.0657388114832822 -1.2168476061916735];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.448430493273543;
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