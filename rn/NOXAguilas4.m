function [Y,Xf,Af] = NOXAguilas4(X,~,~)
%NOXAGUILAS4 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:11.
% 
% [Y] = NOXAguilas4(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 12xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.448430493273543;5.42005420054201;17.8571428571429;0.00666000666000666;0.02;0.0561797752808989;0.00588581518540318;0.125;4.5045045045045;2.48447204968944];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.050793485987227;-2.6984458188983229;1.7107791180602905;-1.1276181618377559;-0.95310100002880893;-0.17530406898640871;-1.715464010387707;-1.0097428080144857;1.2611680849866966;1.1568584959416324;-1.772487943762;3.1890908166942236;2.8165181041325176];
IW1_1 = [-1.2980545878225542 -1.0268614760324344 -0.72418990574489472 0.14521628445024376 -0.37441685951212766 -0.57011272253514778 0.50592357234117735 0.86243402056299634 -1.002948762179759 -0.24789453394206518 -0.64402500955991193 0.083444665108111507;0.23652530296801963 -4.6134036465609896 0.66490286641609442 -0.43903038623268731 0.28591742711877371 0.12857797631905227 0.022990451483461377 -0.15092257681099291 -0.091049435362154346 -0.27694852404295556 0.12065291941559722 0.32932926864629519;-0.77601087898296739 -0.31699779857190402 -0.047417044349870791 2.4603446218602625 -0.012021491540378355 -0.056811839092823356 -0.12850484292493064 -0.19862521520542922 0.18170353423315455 0.014801213876153683 0.17040340086909619 0.092249844824257327;0.61476819065801991 -1.0177437754122063 0.58212083089939648 -0.15854291334276308 -0.097545972998008962 -0.31750811098258652 0.75696987802593829 -0.84610600488381538 0.39554007491920173 -0.76498669533779284 0.51860250682656872 0.25708188224890915;1.0579665650434045 0.84305953384293297 0.584739949427038 1.0268642905710741 -0.2824395399831286 1.3854387153460965 -0.70553831070273709 0.048720694308214088 0.6088298164588295 0.57210235500344941 -1.11933386119457 1.6383843754014387;-0.17941151133999642 -0.95274476086592008 -0.14638464704696824 0.55533706548162931 0.21898181462035302 -0.35375800673464397 1.0330462722123042 -0.19568116065696836 -0.024332312257688567 0.16244113592648132 -1.0890265926360472 -0.32611401501429765;-0.26046067736735462 -5.0223917239169138 -0.40042222703435759 0.38306501519672598 -0.63121946749438962 0.51669255465546493 -0.65957172235106432 -0.059032673577694379 0.22536826564294377 0.17993452216257186 0.57939143835799678 0.48703216517681391;0.3716972802112975 0.54761941682056792 -0.15209235811169275 -0.81762275852008603 0.14655070677654661 0.30546448986488794 0.5134919612217449 0.11378328335456754 -0.56061045607892102 0.18123217951217632 -0.89786377381334936 -0.1270629434522359;0.12933078213717347 -1.4036117006229265 -0.26970632633984831 0.68584857877675753 0.0036792997375488254 0.20609153783285011 -0.22467743901226372 0.25480891564773667 -0.19659007031673992 -0.1661915711118353 -0.19836424351524296 0.48768443075232992;-0.10467116856618092 2.0166754408815164 0.21660964940107719 0.40332792875752421 -0.051993497390512809 0.044675584346133355 -0.17598057035900674 -0.52406690515556031 0.00014929895250091274 0.15132845320527372 -0.089651728222141722 -0.12687595248135308;-0.49300113155410041 -1.1733864879704174 0.232495628996603 0.31877197863362161 -0.75372928501754344 0.26869543621058978 0.5224084081605096 -0.4133986042278267 0.48606302963217929 -0.37742849992719885 0.20399677707154731 0.2589133806137679;2.2092393318950134 -0.63832051704652026 0.0034936919234051234 1.4245104735134801 0.18702028122803824 0.47952563749542415 0.28466863052941965 0.15279367274205793 -0.15662668707548519 0.19852367980390201 -0.35339074632483619 -0.14385435722655546;0.15422503722517722 1.1102664537390663 -0.39161819195608799 -0.84545071407392602 1.54282662826951 0.062810867607210691 0.99583178278132911 0.48737605688525548 -0.016762957196202043 0.52596300204802904 0.30813851894788502 0.059198040559753778];

% Layer 2
b2 = [-1.9415200692968575;1.9832351499177443;-1.3429414361065046;0.63347422428730915;-0.87336769167328054;-0.89261104022666682;0.18370392933588245;-0.2060819828462101;-1.6526767510576734;-0.14268612999155256;-0.74539141872415537;1.5198008445941613;-1.8779065645761344];
LW2_1 = [0.11383591100775942 -1.4909425412643689 -2.7902063964391761 -0.16041825298829251 0.94209900205648522 -0.04191163678095558 0.35363555732195989 -0.42832454237423162 -0.129874260885987 -2.0901877904405501 -0.16900256781758632 -1.8529259180024265 -0.7066610062755978;0.175549115872146 0.56030357719023294 0.92168374488159299 -0.30693442803423127 -0.85542035923086635 -0.99414443895019367 -2.0882169073535377 2.2573405074167887 0.2153973883274361 -2.6917945259899807 0.41374400003893347 0.083118879742923285 -0.24449147835131588;0.80651534893808052 -1.8257302473651711 0.29898789380566215 1.0274221635205629 1.4142879005065645 -0.093551779184114503 0.89868024144847392 0.10280384207906777 -0.6280815401387303 -1.2428058514911422 -1.7494647216204569 -0.78082856411857959 -0.86678743369430777;-0.92035441170547405 -0.58347051907837522 -0.76700817190719095 0.48204107968359955 -0.14482562641758662 -0.56251735421395466 -0.90754616391100917 -0.75608600473430265 0.46242683842563331 1.0255444740728303 -1.1366658278007449 -1.4747801809221173 -0.10742314455169712;0.46097043672450211 0.26174723078816275 0.41464999180027828 -0.25805436712259211 0.55247532554217071 0.55783937066079958 -0.59827497733602442 -0.85995675888101553 1.1214193685617642 0.42639250296060649 0.1122329282840622 0.58183701195363102 0.63159940360855993;0.30289168286481544 1.2532665042193591 1.7843747784382238 -0.36572184624573334 1.2268263919126245 0.17467367024135189 -1.0832383654051208 -1.2800713957178007 0.98643198116540487 0.16901044124454523 -0.67825374783761982 1.5028185772967562 1.3624988626052961;1.0860325877546182 -0.37868993422122321 -0.45502133427454727 -0.0318829180989052 -0.66381034572122521 0.19810852447991326 -1.462171651144305 -0.56986274295161543 -0.057490821616692174 -1.4215711745816211 1.2103699298065718 0.18684886535222769 -0.0026341123721554741;-0.45727478071709371 0.31341728527058582 0.66193632221039722 -0.35251568191215504 0.4774273082553393 0.45831005475404818 0.70179959552595172 -0.25536727391000463 0.37595243325354405 -0.11165211223394245 0.40634418863317956 -0.35902954738107784 -0.03549800993180334;-0.75501233464084549 0.71891540663086739 -0.13893583788167729 0.59837318567644993 -0.51602127014214061 -0.46739612781576245 0.49537463831321887 0.80127321312768929 -0.33943783674681022 2.8897778575709712 -0.37139484311025461 -0.63126834458007652 0.24729723982119517;-1.0105680273607303 -0.6533781661080148 -0.26481717756575002 -0.28827329424482373 0.42093931495530906 0.27323068703375863 0.38079820062429481 -1.7231991693575075 -1.5621205365282911 0.88172090068004272 0.84624477688902044 1.5348477425762426 -0.30273074995351651;0.047349027737557593 0.39458054915433483 0.80457164658655256 -0.59886692763414351 0.46013818116482424 0.35962834687638262 -0.12777863728528788 -0.30545302436164445 -0.38824751580574318 -1.1788928259897027 0.7024300369760379 0.73139344247843352 0.069996030846146376;1.4769770711018844 -0.025087239991556647 0.17504744855569226 -0.0084934563970498859 -0.27722929044727096 1.143490715810858 -0.60636573565712315 -1.0103387624384836 -0.83365118914667979 0.36364316176782546 0.035880442001065979 -1.837118070871695 0.09808709102140728;-0.60716104822945305 -0.46275755091908977 -0.84815695053890683 0.38455123010395315 -0.59785566383529631 0.6455695914367765 1.1464982988075725 1.1132488530600124 0.60809655739110657 -0.33428544195548943 -0.11099697867018511 -1.9811631820562221 -0.0093898607134421733];

% Layer 3
b3 = -0.82352103898495777;
LW3_2 = [-1.8273481908216294 0.4968545511759096 2.1428307421121846 -0.36574959842057431 1.2826302617398553 -0.24597317830880286 0.83095167324003028 0.88193240985515176 1.1632324662777913 0.24360197589401225 -1.0652104606048978 -1.4742739825014075 -0.94416468022627587];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 5.42005420054201;
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
