function [Y,Xf,Af] = SOXTlaquepaque2(X,~,~)
%SOXTLAQUEPAQUE2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:53.
% 
% [Y] = SOXTlaquepaque2(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 15xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.171659085057077;3.03490136570561;14.7058823529412;0.00462534690101758;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;0.185185185185185;35.0877192982456;117.647058823529;27.7777777777778;5.12820512820513];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.782267098461944;1.6783386014541897;-1.7458355811843265;-0.01836317289387223;0.79331182780555243;-0.48508802440674614;-0.41865112617396266;0.15984460830174438;-0.8380623684632349;-1.703426890279526;1.8614521941575828];
IW1_1 = [-0.94334309651126513 0.86650681416573272 -0.26245273501147026 0.049192872724782184 0.55430058057133103 0.24342959075399223 -0.84387976064847126 -0.040216532453542272 0.54360121418691121 -0.46379258377833177 -0.44688895597553446 -0.86328527528036525 -0.92969702936610821 -0.16288206163721408 -1.0245062579615529;-0.5547904524033358 1.0449237636413748 0.31206262770242643 -0.33445138731404206 0.5901050247946078 -0.48748330194045453 0.51930423746414389 -0.10847199551979049 0.85027153893702379 -0.22502181567661 -0.45029756891971784 1.5585828407672015 0.090630033307783311 0.71586966585249845 -0.33348449528669932;0.310520798750405 -0.022557749087897476 0.37812844492011316 -0.1871825104083267 0.35099561561672971 -0.28131986820849142 -0.17834014770991002 0.16399874921563334 0.058390564997242829 0.0073834216144899531 0.0062299329766353096 -1.7805871797558168 0.095250321046945849 -0.54937943761144004 0.099946453079869768;-0.71686991082421914 0.096827080674620522 -0.010918041149842194 -0.64804343853607282 -0.68444543763664756 0.62928433525959959 1.3749920380657104 -0.65364021429809338 1.4449479752891023 -0.53473913238029247 -0.18512055443811526 -0.98599735382400611 -0.46873558872959292 -0.96372212696135517 -0.74515269636572012;-0.23889038321977071 1.2660509793157289 -0.26394488725108117 -0.0066423822028972533 0.1218509301919725 -0.41087735954297422 -0.39344676003597617 0.22766844874748068 -0.2297262808937551 -0.18985565490879727 -0.74370996452620275 -0.4784927925087763 -0.1066195702942736 -0.39660944421546418 -0.068170449745455247;-0.58450616215363249 1.3568903193812984 0.34796546208652179 -0.19719094485598476 1.5279445865181154 0.76489336886906012 0.35394044530825375 -0.21288278238310818 0.66655564363038278 -0.13831690456519716 -0.62699590373590008 -1.9237039103286355 0.73429164434340333 0.85880634364830422 -1.1372606908250211;-0.49268024409306277 0.049293115612105795 -0.57329337486943788 0.29453027666702919 -0.5398464741314426 0.40722116290321697 0.23913402438880091 -0.35105474551494237 -0.05527577929762334 -0.0073057265274298257 -0.049343710197585655 -0.37016892532729884 -0.17854690574384224 0.94676023570538037 -0.16777066597207063;-0.98272319073152958 0.71645314054179532 -0.62190352279272709 -0.061383935165559428 -0.97928581832034856 1.9890892255424979 -0.48725334370389634 0.11476443131531786 -1.8341928445063305 0.070513506553729816 0.22887430395955732 -0.24839188590351466 -0.36164122430010875 -1.2179344833274215 0.5370544521807239;0.31115709102396594 -2.4294242503412331 -0.39334566972748108 0.37729400553007914 1.4424895552220913 -0.16331944116137903 0.32127663946440227 -0.36786319323329514 1.9327255844793141 -0.28662923532255691 -1.3157212022778848 3.8835184277285633 0.66499008236345925 0.49543676979913459 -0.36064069203185439;-0.037397771157941004 -0.16991541643750363 -0.21741504228123684 -0.65079772389876611 1.037078721594886 0.25404181428240569 0.068886375655101945 0.12869315659441738 0.097734340794486591 -0.22161488627551851 0.1628714060777694 0.87267918554245039 0.29752141265817117 -0.25551117279694857 -1.7024598204531365;0.14275341525008331 -0.19536058098874989 -0.09420751037466521 0.028356632586892472 0.58179449120292748 -0.098558361263042848 0.62084415898561829 0.81111555177992833 -0.32264978215780671 -0.23049375076218287 0.62703483096854518 -1.0908020210016482 0.073788878630375809 -0.15879246609078768 0.21717834195415389];

% Layer 2
b2 = [-1.8796701652780499;-0.92897639122605891;-0.86066675443282048;-0.61026293004134224;0.69524190496159777;-0.031382564386185835;0.090601498182298901;-1.142608735329298;1.0686155332245468;1.4171904238822206;1.5172144448014053];
LW2_1 = [0.052926226742150681 0.34302258114780088 0.97791662346473762 -0.070217213092813202 -0.2066228463282069 -0.53543466076753843 -0.48950344160299797 -0.73295281795898015 0.4899281515932114 0.43966234657649245 -0.58505298206420531;0.60155751354766618 -0.58033499668086563 0.42456284385608312 0.24591151319509036 1.2008130689178551 1.0604945058145965 0.088774867898819609 -0.94155974385804508 0.12679284699856025 -1.1108300028179814 1.5088497361323214;0.77825419433022391 -0.1154663637587612 -0.96485782488148875 0.66632155775988611 -0.04544240532238112 -0.017883325162698357 -1.1547325216146604 0.19524183404256581 0.44062117471622342 -0.39978520569908194 -0.36108450813169568;0.55542500889161617 -0.24567200981462742 -0.0075310091555681946 0.53390441304314407 0.20257005482675769 -0.0058053055400367863 -0.46048521792393071 0.092612429440506849 0.59335954479202846 -0.51714105774133445 -0.39976395232358264;-0.033722270076059317 -0.99841497642859989 -2.1077698560063882 -0.17696087776326305 0.27650403402997109 1.9537111180395319 1.0504726802498336 2.0257773428705494 -3.6184146808619788 -0.0075659889188425533 -0.206857827131884;1.2956119724140072 0.38257048734041149 -0.094335631649622304 0.90572021362949195 1.6089378683753652 0.20412884977903648 -0.40742947213612979 1.8029117523713838 -0.77133943419887707 -0.097819279632124986 -0.6158778390929186;-0.46878036185647259 -1.4999306503425214 -0.1405098908492089 -0.64925242681526929 -0.76717367365342803 -0.11601141418676848 0.71436546972195158 -0.95505540337896577 -0.11445175630985613 0.61033558384583741 -0.95408360458542407;-0.4530039316849091 -0.86191499909999214 0.97091084962466978 0.31801741916506177 0.04149551672341896 -0.47962159038542634 -0.32143118455154468 -1.6406218080414967 0.86465196098953989 0.28215826117984233 -0.66909893568689605;1.0480864634147196 0.27459084776555415 0.7956213565257334 0.33747543203108338 -0.37915793136067227 -0.010084479466636612 -0.042297212761857453 0.054312104295989268 -1.2638493708096916 0.68001505233986959 0.75163979406254877;0.29118940504141466 0.45693933194442549 0.12607206483980887 0.49954595897901999 -0.46504486866173744 -0.1652421943983379 -0.99527323251175415 -1.0418785100841506 0.060444377299190499 0.071127963816307871 0.66004370416699132;0.038933456378290418 0.51460922542936394 -0.95335319533632468 -0.058919959133860278 -1.0383004716076074 -0.050138217770464726 -0.29955395025465081 0.090135176145858364 0.71011758904863409 0.73438929793124508 0.54892273284247928];

% Layer 3
b3 = 0.63442368761812395;
LW3_2 = [0.61039384561451415 -0.3957470399609011 1.3222034891256964 -2.1052551166253894 -0.94768829699333246 2.0211733467872515 1.4686297394896977 -0.56668978486978228 -0.95582706942197038 0.11205351580311831 -0.79014521261384485];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 35.0877192982456;
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
