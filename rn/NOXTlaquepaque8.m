function [Y,Xf,Af] = NOXTlaquepaque8(X,~,~)
%NOXTLAQUEPAQUE8 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:16:18.
% 
% [Y] = NOXTlaquepaque8(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;3.03490136570561;19.6078431372549;0.0212539851222104;0.0523560209424084;0.00632111251580278;0.294117647058824];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.2176249911696142;-1.2229854363813082;-1.6487620555551592;-0.040876105402507204;-0.31578855931117739;0.94796283220580868;0.49221680062387058;1.1424685053341022;-0.017995284285708672;-0.1712536994778826;-1.0023094089131876;1.2796001730585862;2.5511772177601943;1.6859036462937635];
IW1_1 = [1.10856790300521 0.18516426789410836 -0.25559557989528153 0.22576037907761168 -0.14652645784703683 0.30034669493085647 -1.2294931323321832 0.5918075580522707;0.91072030958232741 0.35017079564387166 0.82478863907501976 -0.26605011259927619 0.31662232477957747 -0.84382851945921844 0.14449748174999183 0.44433022292214619;0.37825761749625703 -1.338856460136991 -0.55683313658740641 -0.018758531927640168 0.76910437460684433 0.9538973485398009 0.51534242943538067 -1.5421753580625688;0.67529060907056171 -1.0271129301706756 -0.9340641606328155 1.0753888166541652 1.3904441842026911 0.36243834406828573 0.40669834464918764 -0.9641167758596193;-2.4181886898104485 -0.78450534406446382 0.093401942164904911 1.1094622987070617 -1.047030951501372 0.47948421971784078 -0.04244463138268495 0.93548645769729255;-1.5420570828083424 0.52896649385478989 -0.078733662094573997 -1.133296144851716 0.17761142569359573 0.47086925478117514 0.74973711801623288 -0.98485463728139455;-0.9801511711566554 0.99289847424157418 0.6413248389852495 0.29089263077781796 0.78166851616706423 0.46141166588789145 -0.26943908150740853 0.73976217579933057;0.16994866938691419 -2.0684952054056605 -0.12364810800451141 -0.29964233960991543 -0.21224563561956486 0.075931446094201466 0.069479527052397599 -0.16434928215292821;-0.81002609423632188 -0.50024093387965707 0.018549450019368616 -0.38981514950385654 -0.20719524148060331 -0.37673839724019792 0.28855376838900709 0.49047117295802961;-0.34374915172008608 0.1395004798399207 -0.80452005699242335 -0.0010853173395667069 1.4202099829623989 -1.2246422267957029 -0.79177296186547697 0.28119292661417894;-0.28182370942727675 -1.1038555809110044 0.1326630183486672 0.3233232699817693 1.2611474455797738 1.369898098910928 -1.0907745306096306 -0.60063210399275146;0.11868934974106396 1.6166609946065535 0.29531405320851117 0.94415257024881472 0.89301537161904621 0.67209908346185243 -0.60112126096166096 0.87378364788958296;-0.05330324034892963 2.7294558576953412 -0.45122764094767359 0.59618971833724688 0.31478918460809757 -0.25310118781450136 0.26614532746174457 0.079942497396430875;1.3112775320964121 -1.4397641201030806 0.12177428108140111 0.19097038516113216 0.40534380896294198 -2.256743043362647 0.21983690823010302 0.30792693625958961];

% Layer 2
b2 = [2.1349674009216173;-1.7119786234131054;-0.64359529133328064;1.0808313084390488;-0.79157821181224264;0.051016170653637727;0.20615550725040682;0.23984953533678602;-0.29736820492291188;-0.30596656098247399;0.93443990331217175;-1.0797401824089703;-1.3770807484486953;1.6706079857724176];
LW2_1 = [-0.52457415029626753 -0.079581281227335113 1.7313181829734827 -1.0185855488424149 -0.46673384620943026 1.3331880570822652 -1.1863150258119086 -0.49705131290796523 0.10411906399308271 -0.38689490126839443 0.44089279836589557 1.174660649368819 -1.2597983759187981 0.86227518073085208;0.72223810831403479 -0.15976892468182657 0.71235077322951901 0.24838220632074051 -0.29831796842941133 0.41892814942747952 0.39129145251307074 0.40908720872048737 0.4437189658308493 1.2365774874982733 0.48097738442446436 0.18659092720506509 -0.82125378907875557 0.26189705733736601;-0.28028528301923566 0.89984927002998683 -0.59423368530185849 0.46796137246424968 0.51687599425423236 -0.69583053953515284 -1.0202657636517398 0.11895120345369301 1.3443474263581696 -0.76298889044689189 0.67146669632252842 1.0327646134389583 -0.92150465880816745 0.17772878937559045;-0.38383485144343404 -0.31628189450400973 0.17795220963783787 -1.7816632074104168 -0.86211922892808024 0.014900461563067416 -0.10896567339104432 -0.72826475712695327 -0.090998453419823599 0.89116089375982432 0.96247614597946896 0.62697357583048119 -0.39389528387381084 0.38476717219017725;0.24056966833485943 0.55816045410140869 0.31385965303596974 -0.37653703032974495 -0.85019438416173465 0.78511301972818026 0.025091027967192522 0.20223470529269641 -0.48915196856615845 -0.42471316338791709 -0.59360959106062372 0.76810584198955034 -0.68682101645626947 0.26689743471311472;-0.030675278468024432 -0.39370524257269079 -0.19009113621817136 -0.69787803220822009 -1.211945075014059 0.22728037160255798 -0.60045746721693605 -0.20665395362102024 -0.39443325860877404 -0.20111824259467551 0.60398703211607163 0.9618424597828551 1.6451746572375288 1.2359566333488368;-0.23449225234370813 0.32980647721587975 0.3721028723036866 -0.059797476626042664 -0.72571678522958749 0.66437022962046921 0.12866725639678442 -0.028696241803021723 0.1943901245509565 -0.54851989526454181 0.23497460902614881 -0.66608602072021084 0.065496629754800847 -0.084771235085069008;0.52266609603763581 0.4652797093710932 -0.041756308452663558 -0.85019786167771272 -0.51555226226212303 0.045448015702737404 -0.22639161633984459 1.3309478086825026 0.094758790307147428 0.7261225765860031 0.87389797524664026 0.34680509472261695 -0.46574379100140256 0.15075451998997913;0.75528985062307774 0.15040867558890011 -0.60477360316177431 0.22305761503657051 1.254903873404482 -0.70433917194960227 -0.78843925537208226 0.16844426193452244 -1.1475650167915696 -0.7279537586569369 -0.4567848198550617 0.044398327103836073 -0.95188111457368163 0.57983868851396558;-0.9354808452705381 0.29782105293498073 0.72629179024623536 -0.71886922635147887 1.071316317494132 0.29445950480229377 -0.36254955310933334 -2.0194448347982217 -0.44467745847066303 0.072222275365643698 -0.048729615997496138 -0.10966539712893564 -0.97459635804922962 0.023138366642053619;0.17063662353427406 0.19298792974040774 0.5226235613654886 0.75192171964496113 0.59605376241797869 1.1146027747547771 -0.20777759235254514 -0.24819062072589493 0.79522897018064242 -0.074653827143431634 0.3296088828057897 -0.49457852655410856 0.58529899614146275 -0.23186661826665192;-0.70157614601946994 0.99441969011086295 0.66216023263498036 0.23392299884096651 -0.27206770695008442 -0.3787846784311536 -0.1241918817586936 -0.12656061594168652 -0.29881236310203552 -0.7115545344404991 -0.63663231687940325 0.3885853731124605 -0.092212728148322834 -0.20156979147739182;-0.69932399004700152 0.90514601829078811 0.45079476934319818 0.023597957851429728 -0.65413864418477374 -0.30468173839039475 0.29285544529906204 0.079556629140474566 0.20571621831919268 0.091223632079581535 0.51307905597453085 0.1569336560571018 0.10456252671375624 0.33437625667657972;0.8680847222155329 0.21563531764438523 0.033064270581851359 -0.3380157057705277 -1.4101470963041025 0.069070506220954897 -0.7224802764843915 0.80744489197497005 0.23276678398983444 -0.42403417185394926 0.42953281973742763 1.0133135333708441 0.47129421378943204 0.72096777588740446];

% Layer 3
b3 = 0.14719807289027706;
LW3_2 = [-2.0300071383659137 0.10953671129085961 -1.6969981935665406 -0.13060227295112481 0.31164027768123886 -0.58588234173939058 0.060408985176981705 0.16371714364926573 0.762509663642014 0.97627798167729085 0.24664159705896269 -0.30400107781778957 -0.20580210908683497 1.1606842308721708];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 4.04040404040404;
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
