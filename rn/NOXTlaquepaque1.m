function [Y,Xf,Af] = NOXTlaquepaque1(X,~,~)
%NOXTLAQUEPAQUE1 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:16:16.
% 
% [Y] = NOXTlaquepaque1(X,~,~) takes these arguments:
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
b1 = [0.73142262146007964;2.8726587466077054;-2.1536251967247209;4.0251067921124957;0.33641530558178062;-0.8592614548428722;0.29861695838218044;0.69810011838357389;-1.3003014596345079;-2.9840344468203188;-4.685671823492819;-1.0764150556671026];
IW1_1 = [0.23536625235182113 -4.1070454374800631 0.13182004423055135 0.25176838155965653 -0.16481772569332814 0.51135062234066575 -0.13283672444530251 0.91929793397384019;0.26242492656697597 6.9709909470539522 0.12646178148901005 -0.7920365177569122 -0.1822094702900155 1.5500203903372711 -0.035166728093240063 -0.37146698746085377;0.12609574038590662 0.19366213860868126 0.32378984206431982 0.61332444570011679 1.0163325875181748 1.1198916601087168 0.45940959796652181 -2.3866018802714657;-2.1891705457287345 -1.1518197037885602 0.063154093186746765 0.3196560642938065 -0.4943105829342917 2.1694852890955083 0.024235381795857901 -0.47867013772482181;-2.8417957029350958 0.18460481600829698 -1.9937135682794789 0.47210089436458486 0.018237217578280392 -0.63292239328567135 -0.22867629690238811 1.2434287366969989;0.042152479868995799 0.25307218567547746 1.5191527080720979 0.10203664093685393 0.41707274103774411 -0.32846013333843349 0.43785729799712908 -2.2506258979538787;-1.2468890496697238 2.2154782191707199 0.71793481636392265 0.041466596798159505 -0.35652467988819864 -0.38988595248785823 -0.12470924548557968 0.11278655090257354;-1.1346660394047532 3.9630472379692296 0.66968320891799249 0.41354662961350874 -0.055381386400664992 2.9554420928576435 -0.11725947109874436 -0.77511058931238863;0.058621271429251227 0.25212894579496253 0.34691365931276891 0.39817153370520569 0.074556361280386646 0.57760495696681968 -0.1151116564736625 0.050184456524810184;-1.3752695606313472 -0.43842703978507136 2.3639475718513263 0.12965850485290353 -1.4775338000971252 0.97236845315284981 0.24713589634001731 -1.6230454148295494;-5.1791347811302835 -0.63513025743110973 2.1752171612317146 -3.115314241628993 -1.3194183927145364 -1.8471248194559737 -0.19401563066005451 1.2324658558575516;-0.25273355065643149 2.2195305956458866 0.7666547055912647 -0.27247277791041624 0.24400504443649967 -0.5403872287984065 0.071128560102581256 0.0081352921815458432];

% Layer 2
b2 = [-2.8522284104505151;-2.8080320143111788;-2.2128093882563213;1.263807617750847;-0.96573422932762687;0.0036568073998181697;-1.9297392770307404;-1.1813213158824996;-0.51141439223550966;-2.700173476034657;2.4193150804708159;-3.7325079550701625];
LW2_1 = [1.1520660511195731 2.4442138270191358 0.99313083223214949 -1.4184240550837059 1.4229248415718372 0.01471587023161855 -1.5077396791062954 -0.25786478567259652 1.3985995029801925 0.99356106066038619 3.4923334685555956 0.25944013718172909;-0.37791906995269298 0.034043329042716425 -0.14113151779907593 -1.6429823512429684 5.0660638549727066 0.52862240467102162 -0.15759854675742041 0.57306280300921497 1.4559794763199332 -0.018924168017879869 1.1178974345512735 -0.42972439214985841;1.6985148856315322 0.62091503743652321 -0.16063201059969051 -0.81156408386924894 -0.051626612260948279 0.45474685579917745 2.2788796097650894 -0.91155588475471716 -0.57508657532841034 -0.75349998951904484 -0.28807195820952847 -0.09678102289128715;-2.9708975472560932 1.079029492511286 0.48453953825963675 0.41405409769467116 3.6348367479169243 -1.0491801643628067 -0.20164665721628244 -1.5232079279864845 -1.4693425624947891 -0.89296952017157816 -1.2810843782755406 -1.3189298311139517;3.3353485059327861 0.12652485385628653 -0.089744922824123732 -0.48122276439875694 0.023460334684809136 0.16532742379877302 0.10148654711654244 3.7369119941239402 -0.20170587432056858 -0.29556031138672378 0.29518497641719027 -2.3017004241726671;-0.72911517848513174 -0.83126885777923298 -1.4317081688225566 -0.22274006212518851 -2.8077661818342592 0.034200758697896974 0.14354649514813941 -0.086244567810230877 0.12966682780647545 -0.959035508861801 -1.7370935276278321 -0.87354744815232199;0.48320667171492609 0.058422982802512707 -0.13174618553121628 -0.84694944997292632 -0.047403852258825561 0.42796623576180992 2.0218121131050828 -0.55467725336224638 -0.42015558772202033 -0.58821161615534467 0.20410704167695751 -0.6400572874733651;-3.0277449278873316 -0.18089573304933837 -0.7821043233204984 1.7238332539211489 0.088672743836672563 1.0415201468708686 0.29101320973503969 -4.2178513570212424 1.3612637188171923 -1.6221156872368561 -0.9710907899800032 2.6650483461595642;-3.470155615484583 -0.08580478538191369 0.4215639835815424 -0.35582010454527491 -0.055103058547104747 -0.58266341391757426 -0.099219898538923434 -3.7903999546440401 -1.9951138970948863 0.087327018983737431 -0.19399875406555273 2.2260090894324436;0.34182102904780864 -1.3500448412821235 -0.45383819220066196 -0.20577355185134474 -3.832176138407736 1.0335785642149076 0.083447799214699692 0.96246657511718037 -0.18937603313223317 0.91114574226689438 1.5203364990077592 -0.0077081311936284813;0.75306661574586853 1.9310402645487634 1.136350981367892 0.83259269181068196 0.52234211309136969 -2.1589354469549837 1.9623299295150505 -1.2652267949038045 -1.2900771408574516 0.10398034948185253 -0.17838456140264894 -0.62290505942643903;0.38649686791505533 -1.1104893864772323 -0.81513534242632368 -0.54600610670127592 -1.408508093842306 1.3643489668220328 3.9201207531241651 -0.55812858920931252 1.4462648826385642 -0.37823600262671514 -0.72254236964623431 -3.0203864001427254];

% Layer 3
b3 = 2.3730655505034868;
LW3_2 = [1.7752741792779276 0.43806958110722266 0.7761961911315447 2.9947463240437147 -2.355088632018985 0.090389006738974931 -0.99642677008343039 -0.41839378823498924 -1.9087685591806109 2.7965700317078244 2.3368435604120346 3.9012504923785589];

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