function [Y,Xf,Af] = PM10Centro22(X,~,~)
%PM10CENTRO22 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:07.
% 
% [Y] = PM10Centro22(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 7xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.281968137600451;3.74531835205992;0.00773694390715667;45.4545454545455;0.00462534690101758];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.4896154884272321;2.3436888309791941;3.6442065938832067;-0.5730239826065826;0.019281932446383709;0.14645318165818993;2.2949809885282901;0.29718652295821157;-1.4105384427931771;1.9972324167021969;-0.017234228882658846;-0.19570923367438725;-4.2025352613970464;-3.253969976012614];
IW1_1 = [-1.5068391947046484 -1.1235919444487132 0.85374313860120121 -0.53952708135804051 0.085306405714301564 -0.08796986154920923 0.46774409803993039;-0.12835107289442232 -2.047602938872787 0.72260362990583582 0.95614487278162918 0.7370136538499481 -0.048690562133066682 -0.23803885973629066;-0.66737774917882631 2.1291158969511041 1.2689183274387779 0.091711386305529635 -0.080784778381158204 -0.24781803999256868 0.30463906889563053;0.34744697735980862 0.10913626808297558 0.64118167133947823 1.1188349189515419 -0.64672910221044067 0.75690915060020059 0.19637018873552098;-2.8931355351267172 1.3497324871307756 3.0774837700346329 -2.8755903329141104 -4.1189810409039254 -0.86876974831449627 -0.091544964585558136;-0.26662547097181294 -1.423611677847741 -0.043789799897686013 0.50016933761629601 -1.1433317307636826 0.023733022232963665 0.40368625810161674;-2.135999161716533 -0.006708333733419912 -0.0093258513655186948 0.020403224220519808 -0.43895641128125296 0.49218680002621557 0.095894190463722703;-1.736105502488194 -0.033974523807858953 1.0934733806161385 -0.80482409697463253 -0.13632407108091207 2.7364847710522646 -0.49613504532654185;0.18239050280326613 3.5631457828495883 0.12171305519118947 -0.93841985657051452 -0.40369810468615386 0.50511438804613351 0.43071755460979982;0.51079229329231035 0.48653759436688432 1.7989492340713358 -1.347532600870452 0.94230816591740585 0.46230740269286602 -0.58086812361588436;2.4893429109877765 0.1324926774112001 0.25578484812122915 1.8123443728022386 -3.6055392953923922 -1.2561625133249545 0.98544311943900909;1.2055006207974333 -0.26395932808121153 -0.80498996822281133 0.79508083071670632 -2.8637714636468878 1.3036806632745117 -0.39203117154289652;-3.7395106360713899 -0.1705807051035598 -0.37394957326886008 1.3588646308129047 -1.5039272541748079 -1.8169191630935748 0.54258125390361478;0.2048061187867555 -0.56899970280560885 -2.9816870934111055 1.1603893189253813 0.31023136888529895 -0.3737552945790068 0.1490422112022193];

% Layer 2
b2 = [1.4897369845718009;-3.2012542626801337;2.507780658784859;4.1423850308711456;0.78011451765241935;0.41049680709239755;-1.0757212160140253;3.0291233798101058;1.4345524249934793;-0.34896955167650945;0.34038388819588411;-1.1837517265833573;3.0467851538920843;2.3704610943135282];
LW2_1 = [-0.20680975916717104 -1.582963993205154 -1.2575848009348527 -0.56157039780733853 -0.38788785415023103 -1.3854395386529008 0.97102853829699232 -0.27169662780988496 -1.1430807934677449 0.17078363705217733 0.70777923239427043 -0.047134649957415842 0.51282471355678372 -1.033041543077051;-1.7448965207185485 0.056273389216469266 0.41738511048034177 -0.78255722725288668 -0.13699638290512223 -1.2139290623765371 1.6799877376517363 -0.53106964817092983 -0.47989242280129318 -1.4214239141908911 -0.57751390274889136 1.0442240752602747 -1.4156227800254935 -0.72638604868188228;-0.88559976262653894 -1.0861842410389044 -0.11197177803161824 3.075495919257043 0.44584070594997094 -0.70547055524697322 0.48803062966984306 -0.8456364007075905 -1.1722024409583613 -1.2599893820954535 -1.4222277906846481 0.94252963783209853 -1.3510447810273574 0.3912413970044854;-0.52397336993580734 -3.5792365334022973 -0.5348481976707804 0.95973460937863397 -0.23562571285269315 2.135040040716274 -3.9076416942045467 1.0014347349283588 -2.0956588784643837 -1.5700578267874798 -0.5148387667128641 -1.1426788037672404 -0.97838644032834221 -1.7167796235852928;0.27273677824726184 -0.29509202982718175 0.056240589033853067 1.8814561966408854 0.19764498090884061 2.0752672271746251 1.2946600610546821 -0.73922953470721153 0.79979751136850796 -1.4381628124890955 0.56858794837336235 -1.9776032455987149 -1.5997592416616673 0.64084021126199331;-2.7742502328141803 1.9356833049996269 0.80829549914666243 -0.086317357899304309 0.88559534984861532 1.4716236888142469 2.7928005518331429 2.776177046320444 0.36239365517738048 -1.508865071326847 3.069058094058585 1.5187476489273304 2.0739188619465785 -0.076299117114638604;-0.23699489476781566 2.2521488976898647 1.3388009648393913 0.70976985591752095 0.61595212412171241 2.1179890254017737 -1.6327314420122991 0.30167714692180925 1.5742431612433863 0.027281003686826649 -0.83007125842819107 0.12558650376286146 -0.49620418593351978 1.3393183016601444;1.7893363496798729 1.5049938592435572 0.49461921485409677 0.80293191275895792 0.56373426374226054 -1.1845391205582245 -1.4950854649942484 1.8438610632225199 0.16526122001267507 -0.36774088379602277 1.0542633774602597 -3.2698794630451795 -1.0292149036800597 -0.87293321215003361;2.38206746944378 -0.55795715537238511 -1.3078286559523378 0.29164391071338319 0.2016256678212367 -0.45681376659157868 -3.0424669376047522 0.35415669517263204 -0.50147710706977844 0.29431081462163555 0.23693986449285248 0.15213100626789933 -0.21123782634461108 -1.039857784619761;0.64462735805220761 0.69499077680960009 -2.1404432362333505 1.0416305729634308 1.0520450403701815 -1.5450639767168963 1.5332154458844833 -2.2127429626230342 -2.8383213741807989 -1.0489509053320554 0.12533692810638597 -3.4314737296096363 -0.63584073709314093 0.76909951222418749;0.7331294309708426 1.1974354487362853 -0.054744320161079579 0.86703567568325379 -0.71971226848967884 -1.7908012472355954 3.7040812436351103 -0.00056720450841761527 0.74660441726540638 0.51831707172938546 0.1770836529838179 0.050352532141872436 -0.46638541674562795 0.98422995229023813;0.71130041994259186 1.1401290093839007 -0.48797352198081889 0.17866692575595425 2.4680310708053765 -1.5570255980326322 1.2042718991805821 1.1675777665356364 -0.9640699894027861 2.5202153319103173 -0.016958479554490993 -2.1089290276515409 -0.12680452827107205 0.71524148034964208;2.3258365627402067 -0.99981824626587257 2.0761572737715785 -0.47965410402373115 -0.76193248226806143 2.4556421557974444 -4.4136440039752394 -0.93932591956886935 1.176276328354612 1.138335947163049 -1.8166497498395324 -0.10125763787998357 3.3320941922281251 1.8881375495661434;-0.026331671298468834 0.81330723965080809 0.7914199599536077 -0.50693686292135565 -2.0164997189972396 0.20986315699487434 1.4291167327391527 1.3933331399799129 -0.18941206596104362 0.47667866498666966 -0.23156911614710271 0.78554771726298989 0.98204102465694176 -1.3557674879477393];

% Layer 3
b3 = -1.1479877769732967;
LW3_2 = [1.4526864200694769 -0.43065823918243323 0.24157148445607016 0.26695123864421966 -0.13419616758496672 -0.045755494278842984 0.95017157500130756 0.17315358280383988 -0.31393345392073108 0.032879749477878514 0.39352877735753961 -0.078293911120410786 -0.1984737808859719 -0.45649299704089191];

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
