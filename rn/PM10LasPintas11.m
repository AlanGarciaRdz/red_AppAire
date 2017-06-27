function [Y,Xf,Af] = PM10LasPintas11(X,~,~)
%PM10LASPINTAS11 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:29.
% 
% [Y] = PM10LasPintas11(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 9xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;5.0251256281407;14.7058823529412;0.0179856115107914;0.00280033604032484;0.0558659217877095;0.00576368876080692;0.00618238021638331];
x1_step1_ymin = -1;

% Layer 1
b1 = [5.2389796977399108;14.383625585973407;-1.1319361574228677;-0.54210840734332721;-0.24122130513236467;-0.56089448306801171;-2.2149581160148388;2.0749451285283032;1.852773027972398;15.545610949813108;0.15472108378658789;-1.1010264070356044];
IW1_1 = [-4.0106154650148564 -1.4551652115504039 0.84080562121837887 1.342933110952943 0.1384829805615781 -0.9325752600402526 0.61164819707361584 -0.3193657545796027 0.0040153152707600075;0.21234435327582188 0.062720653694046294 14.187938645508186 -1.2143146796742854 0.12189518106648242 -0.13559466684915764 0.26943207478244757 0.040516228785610876 0.43043355915875547;0.39768841400370747 -2.0555558583711679 0.30036382285140995 1.3187553480847543 -0.49017639157184645 0.63132953289761617 -0.46221081232478567 -0.011631470362626743 -0.36598557512185642;0.61901993282782475 1.0488903873857676 -0.091941601985110019 0.35271027192554238 -0.36149183180139877 0.10652614874658961 -0.15362513252568294 -0.043509422232483261 -0.11468946709570552;3.3555733848096239 -0.79487144571196877 -0.56428669384128316 -1.2772432620407699 -0.078639187477416855 -0.36757535440241068 0.76160212942870775 -0.24030473188491266 0.54152182144834338;0.51534747360458566 0.2688256025009107 -0.85140910359789856 -0.61208656882955126 0.0012698016139158575 0.0248872124194476 0.39358214802443797 0.0064215544342370451 0.40790268293107296;0.98828436861437419 -0.1356602784475785 -0.24303090336540328 -0.93360979376650544 -1.4484768985855752 -0.49403644429547977 -1.7058145542837899 -0.040280462740934109 -0.81175969730904751;-0.56131690160003189 -1.7288929548643885 0.54120093856030904 1.4911157924235732 0.35884229765491482 1.3455912369926648 -2.8891746563990184 -0.018154744418060236 -0.424806936312562;-1.8260011075723197 -0.48584512590063267 0.2986475239314596 -3.1233413555695075 -0.17272139345604648 -0.17791421940794672 3.4972322353713921 0.72044369689809562 1.5075940071151872;0.81820321194692858 0.20286680024275835 -1.8456511672310578 15.392786399570962 0.28294501219941748 0.072686757829015583 -0.29827252934188692 0.098253989029075547 0.54282710169429416;-0.28672118099081428 -0.24753066606971458 0.1331945794695735 -0.31034964356476358 0.33411346806380893 -0.060221895879275539 0.32835737538736293 0.026060443703595705 0.15479686889411223;-2.7729333620656993 0.085946113106857625 -0.59418416426845633 0.6318095092158964 -0.35752749805293271 0.48008624631292107 -0.78742662899390292 0.12196584671256276 -0.55517812145216094];

% Layer 2
b2 = [3.9902675477212104;-1.5978194988960648;0.40286432820643453;-5.035852642477237;-3.7859616368871776;2.8607258602073764;2.9866066341953212;4.0003990453638281;1.2112769477234455;-0.39395054469518753;2.8664356719784312;4.0217578228062507];
LW2_1 = [0.64501675955079663 -1.8566028602722877 -0.23525778704398637 1.7539600096564913 0.55314135822033095 0.034289568076011107 0.61958878702945663 0.21758037232721777 -1.6700294823675905 -0.19726111928660101 2.3758576069301305 1.3286197334024519;0.97513047331895575 -0.25736085814438292 -0.79289677185461183 1.0537107094842708 -0.028187958223977926 -0.35581962005437229 -0.53148570661772432 0.043581665894239903 1.3662548128149794 -0.29901645973431284 0.36423916813015544 -1.339243019268781;-0.87121960752582184 -0.98756864442416536 -0.79486570598971584 -1.2696473132856863 0.012569867028437149 -2.4503756946571493 0.13000527912182419 -0.84452422608494404 -4.2409513613894578 2.8188643444776713 2.8701793634473853 -1.381631699212758;6.1987505454120502 -5.0159271966424761 -2.1411370295637608 -0.10407757456657789 0.12806054952985724 6.6414688045521997 1.7441314467494671 0.55823017377838946 1.4195117854939046 -4.2952789226568395 5.1161831170372016 3.4975061588583167;-0.57478877155706021 1.7405762914268297 0.27335570735114539 -1.8330586631629375 -0.53594402498133242 0.29571214583760619 -0.67811223394343167 -0.066172103103350186 1.8522509043518074 -0.10411669149210927 -2.6796799967851492 -1.2379928982953523;0.16925625747952239 -3.4673927926578818 2.1827323903472857 3.77097235074468 0.087901501072661675 2.743672119445566 2.3507382800714391 -0.25801135158277727 0.56451085878744156 0.078214791024024635 10.160967046188114 2.4382513216203567;1.3438613970488713 -1.1963730951559266 2.1395902981784229 2.4999115498072104 -2.1622902874165408 -0.31214853127987835 1.4483812799666238 0.46302336042404879 -2.0432914691370438 2.6240441785786288 5.4941858843458427 -3.0169908865562891;-0.87370790675520182 0.2381725093459312 0.36056568380421761 0.88690900066758593 -0.81143376746928553 -0.52914511290934552 1.6860395289724337 -0.14656176130520102 -3.7449555108097892 2.5669519486397947 3.115305527332104 0.87894222548936074;-2.9283899725153502 -0.50241181525810086 -0.33149036400475107 -2.6801448766257141 3.3052458090357724 8.2687891810331617 0.33968449315567922 1.6430323031960279 0.98304066513577382 4.0866102470002508 -5.947017993820868 11.788462563895392;0.12418127390288869 1.3332624060494562 1.4550648974890568 0.97192912093549255 -0.79959992606968011 0.78983254353966337 -0.010340201767709717 0.79953669507282465 -0.56057704476170622 0.88912973770551484 -0.60687251972184886 -0.31538064828151902;0.76166996240998153 -2.1740665430578496 2.2993713210086435 8.023130620368546 1.5145477656380664 2.8252156491139502 1.14021489441936 3.5084752912694581 0.30866449415321406 -1.0680102520801131 9.1937264576895981 2.5301336889010626;0.10741812682028073 -0.77685409911843406 1.6599981496266867 -1.7170070047458665 -0.78809655051362426 0.74309673938695742 0.63221512385640422 0.43478943853320379 -2.8491595581782656 0.40075429308950955 0.13051883090216165 -0.84411107067971625];

% Layer 3
b3 = -0.80105296130933001;
LW3_2 = [-3.3357146258134835 0.54131148937591123 -0.28322841383128683 -0.29517558394886156 -3.5806491346580698 0.30358257957584234 -0.40754841729153179 -0.33913648837921623 0.11493185557298945 0.51411546895085425 -0.22619388578855029 0.60078322544563056];

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