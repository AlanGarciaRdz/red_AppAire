function [Y,Xf,Af] = SOXSantaFe8(X,~,~)
%SOXSANTAFE8 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:50.
% 
% [Y] = SOXSantaFe8(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.172786177105832;4.16666666666667;10.752688172043;0.00341273633199099;27.7777777777778;0.00632111251580278;0.294117647058824;35.0877192982456;166.666666666667;95.2380952380952;62.5;117.647058823529;24.390243902439];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.8219037313189475;-1.0948604014605612;-1.2890469609005137;-1.0769982232102422;1.0814904919961597;0.61489346605582273;-1.8989465856095444;0.30428321595693486;-0.26965369349843971;-0.39101720212596081;0.66366492654661924;-0.42383716719563141;-1.0094851232101465;1.6242725816514074;-1.5569082255018472];
IW1_1 = [-0.47124336925159865 -0.47864344367266048 0.45994314081250331 -0.15916736214267183 -0.78642918567262865 -0.20487344834306953 -0.17596156543011304 0.39569271306057463 -0.44341741614834729 -0.02263172740875824 0.37389243516145476 -0.017046626526960023 -0.66927697942143616 -0.52446148901165013 -0.44077157719838544;0.42669702696905787 -0.26200433264342499 -0.42717969876305406 -0.72767341255004769 -0.85275576281590859 -0.94222240431074356 -0.71118022856093555 0.25632606218150206 -0.4547554865275264 -0.31727396838624611 0.094411077911550761 -0.018876672136747638 -0.58857851486955526 0.20294179767674378 -0.63727548779810694;0.86072291687704283 2.0516042413206144 -0.26238648580900764 -0.30531001954151044 -0.05483792690608312 0.069302621609949891 0.42418520101385321 0.16454772532790465 1.1452723246682897 -0.90065362218896627 0.12847102483808312 -1.0552862307536401 0.55376447780370952 -0.082069043660108726 -0.24820041730984765;3.2520715193434171 -0.55009576649323211 -0.38473703126732955 0.68700085454333193 -0.74763276485778063 0.95681350603817727 0.88854544141669511 0.24980469056035226 0.15861087301458909 -0.15129296025715164 -0.24756857181839162 2.1982839697381764 -1.4718852979492092 -0.022608554388174058 -0.52503412371891023;-2.4990302927878436 -1.5970910395347415 -0.10294169695708076 0.51302575205356937 0.5640406421451315 0.43706631575147653 -0.77543755545366599 -0.49141759112304706 -0.81064255902423088 -0.88637679104697109 0.11515840307982507 0.51281717335509391 -0.19851430275832332 -0.093796672635157535 -0.22567625186514861;-0.53822389613744992 -0.32572986757330047 0.35357741009380284 0.0032055257743055969 0.54117920615506332 0.0028019563042242512 -0.69680524314122572 0.59635917019130991 0.38318757488135902 -0.19881997543543281 -0.53740741520757129 0.37660680700245003 -0.20189091405606449 0.14090226478099563 -0.62926580777509089;0.040491871729496448 -0.15331805976368154 0.056452667190395892 -0.041361497846456881 0.1512456393019547 0.0018010979262432785 0.018079813635411356 -0.069014019801425741 -0.28630924778601263 -2.2781336250421393 0.077074859628406309 0.12273476652564028 0.038507118330651645 -0.22849107321221312 0.6815410051817623;-0.98818218381842093 -0.43026289013177488 -0.31301385329114556 0.10285722849878956 0.28136798104833111 -0.46664161732771797 -0.14680178917782816 -0.21060532224613229 -0.81592166844104841 0.54907695772409781 0.42783747865397853 0.26165322942082775 0.27424099090910742 -0.3910429625799221 -0.7757308775371391;-0.60525121468487442 0.8026659328276452 0.40518027134609363 0.5384374929848863 0.42715756236866825 0.51728887582087579 0.80927876213134009 1.5055543301606422 0.11800645230022359 0.73199942688272923 -1.7105998089241206 1.9710045226043778 0.012818039638484166 -0.075834901349339068 -0.1504866059128637;0.064604708959230969 0.024152293784004731 0.41581041702094423 -0.24374527409710633 0.32924275145268078 0.39887621211661334 0.018072206795514516 -0.36974553118561115 -0.33149526522337813 0.68341106867044543 0.54608835135310096 -0.13129484049038556 0.20811327586559192 -0.68085297680619494 0.1868275079083524;0.84470587814172604 0.22317878624130194 -0.21259568417911814 0.33398310375733287 0.039667893676631427 0.14571138897836475 0.26538845705223923 0.29187226452291759 -0.34868220753797169 1.3124266244318499 -0.36460769927482506 0.55005124021039442 -0.30869161867707229 -0.4094135769438958 -0.47120736191372142;-1.9855170340616521 -1.0171942969166448 0.09914640595998038 -0.34124987326756739 0.82296591704402333 0.087690641187945853 -0.53685609661881206 -0.11820557570443141 -0.44501166870865982 -1.7642116206292049 0.35145724440763565 0.7597903667228898 0.072802687584333781 0.087443300895748297 -0.87948137695362227;-0.47275660583147971 -0.74588027490185282 -0.198455284046999 -0.65915773395059019 0.21832832868582527 -0.12795792482513832 0.10180985479773579 -0.15184873312081756 -0.84654098540643818 1.2264510603908869 0.33749498845057008 -0.30468421797685874 0.56089717649988535 0.27199384873830301 -0.26205947088365655;0.72870492889154193 0.040000685621078017 -0.38642266051544455 -0.5710765665713986 0.68422413886499445 0.24820752699583948 0.0023564512148240681 0.95123753991766857 -0.74222139641903107 0.27041444296392869 0.40794851846988556 -0.1953217611631409 -0.048105447478273507 -0.02413594928504055 -0.26330654248845847;-0.29838524072351208 -1.6762032726013785 -0.49327134564243402 -0.49741221683793435 -0.41491746030078247 0.45341448404138862 1.2816131430007951 0.92490095386606042 2.4105496238727233 0.32466765458558039 -0.45516044518814025 3.5367609412053138 -0.23105800303928495 -0.085864231083944892 -0.73110684050152686];

% Layer 2
b2 = [-1.6545940716623404;-1.1742190888829145;-1.0647238635386755;1.0091768317077601;-1.0374365592903738;0.18586675780892503;0.23801585433978675;-0.0017327339841066991;-0.38241010969814954;-0.75147969816477811;0.7183019874067208;0.85985887675542994;1.406364818995183;1.4195228139160743;1.7014560519218995];
LW2_1 = [0.3122199020425005 -0.26026794121464703 0.027887278051252316 -0.20682361973364624 0.66700134115764342 0.7033102437336719 1.5190457415696295 0.1859884973819001 -0.25057132993498243 0.1929067606425888 -0.60443379159630706 -0.46925469253856683 -0.35871550528827872 0.37411089880063947 -0.062751688442763576;0.8161752674152648 0.15872340617799363 0.40584419969241259 0.28063099162369376 -0.52408950364231754 0.26361850045603863 1.2040308446217038 0.41063174818648673 0.36915940680805048 -0.54184641958280577 -0.37366052799191207 -0.42234342988996021 -0.49248061662106102 0.61181151995475092 -0.49233787890497099;0.84446116102926305 0.78419438434369293 0.44527694798978706 0.65355803529839274 -0.88181591800281289 -0.46829876018695921 -0.22274241423637156 -0.2831256065306314 0.76602254434889561 -0.50665124225410885 0.18951488443737879 0.83954339811849221 0.48362076817566091 0.39931575005362574 -0.90755769880937986;-0.43120780878122283 0.0067993800295412608 -0.31048406358105812 -0.055190618975800493 0.22879856861669207 -0.12675475084424256 0.21272851758086789 0.63601986342282402 -0.31591302896361967 -0.7330831958459324 0.53825599699611337 -0.1755087949379267 0.84080562142861792 -0.5246932810291921 0.15314157454352798;0.45334775089852414 -0.54129959475468048 -0.13268903330123377 -0.28788389007373472 -0.88949048707539558 -0.21171094825774631 0.73732543892231839 -0.16908096397720582 -0.98882369372865009 -0.35203443986718319 -0.70657106510928269 -0.34213489933306751 -1.4807881968167134 0.15500621020719707 -0.50651422871929552;0.88568448351519502 0.1447190393758917 0.46008974023031818 2.2617139754282469 0.95842650895114267 0.21935610948069717 -0.25523116033950344 -0.031108266210799231 1.0195946300884784 0.15091877406503387 -0.11465300248445943 -0.7349469990301476 0.77586387458495254 1.0965254825695214 1.1089107964652145;-0.27160794012974687 -0.26052614452267997 -0.17616836426214494 -0.38882597589719725 0.70763099522694384 -0.0066821618109181302 -0.22815931476369028 0.39762914989950915 0.30927732821926468 -0.61182210868171449 0.61900408771196258 -0.50819448298721503 -0.038724993860103932 -0.32681095905975321 0.59345832756904082;0.20137272814187093 -0.53329828777136923 0.21219855523894426 0.22892782797202144 0.88377046682673133 -0.11022379105341634 0.35751594595896058 -0.21684458121461228 -1.1915517921894478 -0.50517222303721365 0.88480969514825225 0.18915312991894701 -0.61001556807418733 -0.54633553883784258 -0.95834246844715765;-0.25266818061858937 -0.40446964702522287 0.041842482004341597 -0.14481307154370365 -0.71420901653288704 -0.48911145962425118 -0.064564851966455492 -0.37305571003027904 0.77536551194948733 0.85575849441634733 -0.50042211766259703 -0.3863949293827158 -0.62897671434541458 -0.5643848266928968 -0.32815077745661037;-0.42805275761348338 -0.50435946056090608 0.25678623053961586 2.1555877394088236 0.49620556116880787 0.019800143986200142 -0.20105822642060289 -0.21902504885443888 -0.31407150696577768 0.14784358904318193 0.1822856076272738 -0.27965240299211092 0.77035336192311554 0.69586036137869134 -0.94582582501123158;0.42584697974627433 0.022554224215772519 -0.84423161069764985 0.31274801571756206 -0.26182894120749672 -0.21572984127099806 -0.28355510295482533 0.26743540885479122 -0.38449133884654296 -0.66142775994459313 0.41825400702728066 -0.51890445641183969 -0.47335830360949105 -0.37767184214635596 -0.15664351528967471;0.69209038873134388 0.2186875515879976 -0.22834686073335911 -0.090598486781136217 -0.11203700840054494 -0.2166052504357146 -0.77932762012161483 -0.59750026976855952 0.25259701118392358 0.10000504698170781 0.63294813798238336 0.80175047451492154 0.022928985654287561 0.10499505793132669 0.41477110460731226;0.46000210903561861 -0.022260640583597432 1.3765126114214277 0.66676883659035691 0.81520539807165426 0.11574776754527759 0.26587957522728733 -0.38503189274698119 -0.087919556985545419 -0.4909653641960367 0.66751639000700624 1.0964285990468909 0.07361988615173376 0.65775090631422362 0.34287370185280902;0.36959110651562077 0.76132292161705917 -0.44406880458282944 0.27523678747385755 0.79937315701229028 0.015783153066963079 -0.15416496373836885 -0.39907484729404918 0.24549247011535597 0.37802686301164051 0.3633766907391866 0.51716072808482405 -0.32847508900530198 -0.41875801278028424 -0.5503637458076871;0.65318467020594873 0.010513061388153533 0.56040810625524662 0.0090866132397173019 -0.35497631508270727 -0.65270789070484925 -0.79018656810191135 0.28218714080219337 0.31146467487597357 -0.049803038849728171 0.1634581094276529 -0.26072048393117198 -0.51268124225603551 0.69137865306212731 -0.091533855201540129];

% Layer 3
b3 = -0.61666649242111249;
LW3_2 = [-0.74693327049818714 0.7678767147908484 -0.88866283405423552 0.31840328474860008 -0.46991405339623271 1.6673676591148807 -0.61484059196852858 1.6568018542332685 0.80034412300035174 -1.7450927790310187 -0.54996586026261562 0.71667625694670223 -1.1909446114766711 -0.60664863237084177 0.0020120215689538885];

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
