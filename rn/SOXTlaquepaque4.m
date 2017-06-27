function [Y,Xf,Af] = SOXTlaquepaque4(X,~,~)
%SOXTLAQUEPAQUE4 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:54.
% 
% [Y] = SOXTlaquepaque4(X,~,~) takes these arguments:
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
b1 = [0.30746911997474535;-4.922735889968358;-1.1731004215784873;3.1582933654991661;2.5412535185588485;-0.26707453426311095;-2.6985334997094359;-1.4420608742140091;-0.86764809055016068;1.5272064437485282;-3.8477162344006079];
IW1_1 = [1.9080000820102778 0.60491430295375348 -0.18791069359172868 1.5461481662328369 -0.24331454198661043 -2.4922623213341666 -1.6968011148178626 0.04299930446876439 -3.8417763043602546 -0.070134232315490944 -0.56269218835317125 2.1171067957119321 -0.58101212725628593 0.18784674503032447 -0.17967767471153745;-0.033589191910717887 0.11686066715006993 0.030947205127863045 -0.015974381912248897 0.087081246078373142 0.0090287310189527976 -0.011752360978264691 0.03446366687774078 -0.015150672744450986 0.00041410381989026362 -0.0054674586618428476 -4.9556354620627969 0.042757161421569906 -0.07150368579846042 -0.037326215548438027;0.067978801135528288 0.23975291840519686 0.057310200829626248 0.77501458805037671 0.48741531624494144 0.15182518309321513 -0.030629118918028483 -0.38957812055398144 -0.083459152955864382 0.4316561144760242 0.3772397508379895 0.65180252764337632 0.61574425221633888 0.56049442308926489 0.74638672952137775;-4.6118614092768242 -2.0015189493907046 -0.82016385623635468 0.61248615738428225 -0.14254588804939988 2.9014889960994266 -1.2645643176180272 -0.4264432729600689 -4.0429583523323327 -0.32831343762771459 -0.28869907897128394 -1.9627580348227209 -0.30586141336434247 -0.014242416462617286 0.54422791104192758;-1.3391301038652741 -1.491705408617056 1.4185475040240882 -0.84378988769619268 1.0080051138940427 0.72826693224773087 0.85561544193172834 -0.040234009735437094 1.9831638736446335 -0.34090261933151778 0.27885948946407962 -0.2241693089868052 1.2508331410989191 -0.72805497594389534 -0.42354335885212624;1.2845291181477609 -0.08507910117756759 0.19278949545903307 0.27317405640955666 0.2332944227523559 -0.20681710481435892 -1.4602397820599324 -0.081360467676003759 -0.54758992215860591 0.47888717938344227 0.59054404345505684 0.25867417965058465 0.46617700948318092 0.56535011192830609 0.61600863152068619;-0.4304281560433274 1.0104105829820058 -1.2007117513172456 0.10839720462158263 -0.78754191610841473 1.0553345471378355 -0.28042249068003522 -0.31838260859292911 -0.93323711498247874 0.10869475957416144 -0.3940923740305497 0.58712123806747429 -1.3823664234150856 0.10065602929503611 -0.49685396886101912;0.30393854796274244 -0.87470143524557598 -0.3612235768534926 0.14684642395371278 -0.74859792373104517 -0.080551489216469749 0.10416872539796106 -0.034992251772698171 0.25409191599846076 0.053116098461957001 0.039538908087688257 -0.75788673304978138 -0.56783234333023802 0.52668963509255595 0.1242283368976414;0.093921595140981973 0.058008400324341215 0.05018183029182028 0.19875193654509266 0.10764855695668757 -1.0785968264147037 -0.36348658666252304 0.52439509014115693 0.24122269115233136 0.18743022351736496 0.45460444824982837 -0.051456260145867516 0.41642962821991714 0.047133278398108006 -0.0044259147386421973;0.53947507143869988 0.25674365152808687 0.15574112951351685 -0.059873931571669384 0.16704991227694801 -0.21072980685332154 0.29621764544523238 0.57159837053802565 0.046035228991730924 0.032146267520125463 -0.4489107977638549 -0.15404717421628714 -0.31831862773420705 -0.48772780803573862 -0.28797321345294363;-0.021739220155245129 -0.15502080726147685 -0.88394403135101818 0.023244465939309053 -0.81976394441805667 -0.11157011383003519 -0.30891251488540344 0.33498625650266067 -0.19151685701370694 0.024447486470958454 0.066076306881230035 0.38077986286560905 -0.45364743023401038 -0.16017116859471858 -1.6012580799273541];

% Layer 2
b2 = [2.1907555785259274;0.035129573708073729;-0.77802775950083991;-1.868492776271873;-0.52051962935379648;-0.88447483497552259;-0.40897862348114844;-1.0826215143603524;-1.1068132616800539;1.5221882221997167;-2.3198517428427121];
LW2_1 = [-0.74927987830631271 0.65902075894379697 0.26057772690403025 -0.36648405409077872 -1.4275596556722319 -1.4011072056422844 -0.044206109250248288 0.58144422026796561 0.77303190558351054 -1.1673899621011516 -1.6785017836968277;-2.9926566723746175 0.83516857246796494 -1.9814093013410936 3.6732135320936039 -3.6114737547688947 -1.9705944071317965 -0.72713017469268826 -1.9282860107674933 0.22138602988835462 1.9676265292750326 -0.93044608643214599;0.65702624739567661 -0.33416822583331118 0.43493673135175054 0.64886915277532486 1.1922288932125935 1.1363276283414576 0.1165574855353689 -0.35675892431038991 -0.42335843375261706 -0.15227615661869087 1.1921722614182522;3.1120881835619647 -0.63227116795260696 1.7689817015339044 -3.7282848650744431 3.9638953026082069 0.68776031965627804 2.2748413224892907 2.503421604386463 1.9521500801628398 -0.31084455310212872 -0.95809423138535499;-0.19831255428580474 -0.49932427893504799 0.78794290040836557 -0.930203287159725 -0.30009601624427251 0.76911362415543061 1.9814524498909116 0.61784865410302114 0.41415897063218238 -0.96540393422910464 -0.090597881579326689;-0.53322380342602982 -2.5366907978133364 0.32679967496616397 -1.69790818723292 1.6270496304320987 0.68722749987513154 2.0678310003351399 0.38312960572668481 0.24193710737017787 -0.87792334151958185 1.277666471612104;0.0093065629090923873 4.8153760597524942 -0.044332958486779594 0.005492064443612792 -0.15978141950542413 0.010582179527471359 -0.12436214888317193 0.80337749395318603 -0.33420105552272561 -1.3853132908103385 0.21707982892477931;-0.11535714473513442 -0.46753748721442234 0.43031938665662073 0.78794844138586839 0.21097921489053006 0.54515437973727177 0.0007553453624348453 -0.73012284462599408 -0.35768103618224495 -1.1002218457177837 1.0714941809973297;-1.5115437685789515 -0.27371243613687335 0.19537958954811918 0.75967501447612173 -0.66533336427034384 0.37850957988320666 -0.34188971148225211 -1.4969783959019143 0.22020186900990271 0.23259296188267073 -0.74121035987880279;0.96994466995336137 0.44136593790914835 0.16913988011200476 -0.526586988947917 0.99839020011241975 0.37986269788481858 0.33505909423331204 -0.12381645109381099 -0.20979024012486516 0.51085555232270297 -1.0152514347772064;-2.4033298335857292 2.1597828631693332 0.76847512475083779 -1.7781857711191402 -2.3528613528928659 -0.585315381946936 2.3468072343168838 1.8018522251364186 0.60608658376876645 -1.2120744041846998 -0.13621123251366224];

% Layer 3
b3 = -0.29569728258493466;
LW3_2 = [-0.90394642148455395 2.1323077536607 -1.5503586776054434 2.3728198363284467 -1.5669634455443 0.34739881136072004 -1.0664631743911965 1.280595841053108 -0.031050491189924822 -0.1628481187941829 1.8854444634038792];

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