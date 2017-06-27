function [Y,Xf,Af] = PM10Vallarta9(X,~,~)
%PM10VALLARTA9 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:46.
% 
% [Y] = PM10Vallarta9(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;5.12820512820513;0.00782778864970646;24.390243902439;0.02710027100271;0.00630517023959647;0.141843971631206];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.4430344362415721;2.2997327229505751;-1.9932637722719271;-2.4549726579039719;1.0056721692144475;1.304002585275285;-0.9114404918570026;0.40388259729297715;-1.3089967795642059;0.77485773171921246;0.85412063138182281;0.77030943993002099;-3.2104674247445515;-2.795315054182038;-2.0241796274715793];
IW1_1 = [-0.19501182812946849 0.34906750584331775 -0.73212261505411946 0.32396470223156604 1.2218885476910737 -2.5371042054173785 -0.34614488065392979 1.0119299486010085;-0.26505694817251058 0.90919982971021795 0.23157096743857758 0.31514504376275487 1.4620342557623049 -0.030199850427584593 0.56658708075704567 -0.275068668670438;1.3842193626441008 0.066243086749289165 0.64372771505943627 -3.500083548328945 -1.216102374260752 1.1499700897748688 0.58715658926367298 1.2505432989000589;1.5323072076832305 0.00093631945991862805 -1.3036367017732498 0.79838610624401252 0.16032962207871895 -0.92710288100950511 -0.19367033780156792 0.24962538502381693;-0.94984684809538567 2.4071407004688745 0.4594169791188098 0.3443906572584729 1.389713115880262 -1.912708659984198 -0.1403407807546414 0.010140347968073244;0.49602162467701916 -1.899420032807065 1.6185309122253064 -0.4075024097773135 -0.172609408926825 -1.0403697188917682 1.3678477087424303 -0.33445293029374706;-1.1121853141320261 -0.89650779953134474 -0.049591231824722054 0.21727892788604228 -1.3714735334919805 2.020690265856476 -0.48285793420766421 -0.083157191937349592;0.13099984714534604 -0.043726888317753787 -0.51995503214875838 -0.63845687724069666 -0.48685778597373941 2.5347071389803695 0.0093874768897458244 0.32367045152504015;0.51887585981771567 0.81936374772057408 -0.27090505375832352 -0.014255661515769017 -0.63159518235591749 0.23430370598622235 0.044957719745954007 -0.085367114034033881;-0.73615533537710465 0.30885187342947495 0.18640006253387773 0.30425564691318352 0.67794096378796354 0.40086243469462168 0.07453922537779803 0.2973726463857545;-0.40932325678014886 0.27099722009920291 0.053122136015492483 -0.49765848911601962 -1.3614989271050999 -0.099934502964914296 -1.5795260200050556 -0.87287129093033933;0.38671926133872758 0.49735505608892638 -0.26759764840252093 -1.1440296314233782 1.5373386970487939 2.2393542319987665 -0.50047129126701073 0.67874624428461605;0.60264018812723796 0.044744600422116004 0.065859441560619431 -0.33223687959126896 0.98878737027762198 -3.2724323600424849 -0.90370676340750178 0.25002176894333444;-3.3732037801629216 -1.7658125531042115 0.82761637970359381 0.043194556136358031 0.40222291560676526 -0.52201081716286057 0.19096397252218636 0.58707296627374916;0.42439207427594167 -2.6658966524746686 1.7566650033235347 -0.22473008632955715 1.7403431923017498 0.76711045718814108 -1.3414579677386629 -1.3889104256835447];

% Layer 2
b2 = [2.7786078587871268;-2.6770430822017452;0.85754082300296353;0.6777106178081691;0.05252259690477927;1.0750996460328113;0.51961615070871481;0.91242949905458592;0.69287762652600804;0.47507955200010543;0.46297638119922435;1.4151947531035429;-1.3620734595290245;-1.8429628618075231;-0.79360079882622636];
LW2_1 = [-1.1951338700572445 -0.74301828215061083 -1.7653482264308056 0.82824592302646527 -0.48463787271945957 -1.1128643388927473 0.067568897590826918 1.3836510367295252 -0.13842077593991331 0.09126653950240278 0.88238485591927629 -0.97014420053553974 -0.31934957637114725 -1.0460033418347161 -0.53452083760204228;-0.32254776881864694 -0.45825861592855943 -0.42550748790548953 -3.1348621973659254 -0.10446783128125052 -0.0591697631727051 -0.20211964324567935 0.66119473921682081 0.31967018516810164 0.93239070686992431 -0.38641932527696343 -0.71768538820058381 0.69705535040104694 1.2109682054760038 -1.2939495063664521;-0.042038606881092108 -0.2108317186020239 0.58608212543159799 -0.06108015579189631 0.38617011868985696 0.76139636197372895 -0.058773319797073065 0.078508172966166051 1.087118538540754 -0.015381805849590468 -0.66452983943957777 -0.52420558745159374 -0.33318044567177413 -0.73643450293457113 0.31028387736548019;-0.74711546035396004 0.43103413540003532 1.7466470000449046 0.60194505020736644 2.0097710364067942 0.81367236240512053 -0.21129531874475993 0.56669055137890367 0.52107275135479558 -0.42482610595506248 -0.33878435599719364 0.29484149200580084 -0.11591986026206376 -0.40259608942280767 0.54332617427850616;1.034483083165709 0.70910077951938966 0.1684959877950451 0.5125701894703143 -0.43774359318925732 0.42220175490006218 -0.21933492913699468 0.6455910018864699 1.2466650154425745 -0.51263079863143768 1.5337793531226234 0.67052776774378209 1.0527247653362424 -0.17980551891562213 0.22938625293031353;0.33014256040587769 -1.8014734612149532 0.30936808169859659 0.73229967105036553 -1.2434929435956905 0.19640940832141043 0.17381030168565631 -0.34048489656451925 0.17034682549154798 -0.17976878354362411 0.89948240905332311 0.32759284211592599 -1.0594094380364769 -0.72704840861965336 -0.20873219384168087;-0.45955877314377919 -0.46150677618943614 0.50150743294489919 1.0117491415516668 1.0669598477091764 -0.55125405228551561 0.3350002870894479 -1.895043120790652 -0.79387717427480942 -0.32430942545036173 1.114220966977107 0.255745735762059 -0.013263728041176624 -0.69831788130319572 -0.012900476787936606;-0.033495410622020765 0.61978081288442533 -0.26513807112487342 0.93711283708181126 -1.7478214877392093 0.27818049891000168 1.1001560052281871 -0.90452335607617018 3.0282961887604833 0.27706402885811904 1.6460962581369236 0.48106162557696686 -0.3125267872608497 0.39919221220490841 0.58861120897555275;1.7390099027000452 0.29445759619270173 -0.45080640173736597 -0.44838848700034589 -0.58127263798209872 -0.31687318807323189 0.73675967034186252 0.68886711963373215 0.94849648057217384 -0.665875521017533 1.1774644127882934 0.88075979532575999 1.3214189995817969 -0.62358332055760635 -0.46270333305432265;0.71740379388616826 0.75632202366628154 -0.23342166238318446 -1.9849867640022227 0.84672830341407235 2.3112379544171153 -0.10521943093677322 0.59051133942963452 3.4626354646173421 -0.45652290226252978 -0.13416097918366529 0.98450485924836728 0.79920197921210268 0.52817198987312541 -0.51189544234301276;0.44210077546961274 -0.12089831163483035 0.89121886350777291 1.086164636296753 0.22956402343574889 0.97941210616181762 -0.15095042320760388 0.47146280991982964 1.2473494662707283 -0.18548015989226027 1.1529085385870101 -0.49967441456537609 -0.13984058195656154 -0.57499614907037278 0.86030331152389716;-0.71117663238526352 1.3602839670988034 -0.92925924371337376 0.0911242502571597 -1.2988099152667203 0.20698239039289634 -0.50265986691147357 0.5516923148774191 -0.19991026287104355 1.3131676244063089 1.1075475110000548 0.82867538234083005 0.62098920342951103 0.1406862048968055 -1.0040251176697395;-0.32435911568720344 0.51311774156547008 1.0482269733482266 0.69293249896992681 -0.08348253232000416 -0.51905388263795083 0.065953173063525369 -0.34690022901817774 0.048184498434197622 -0.055120929465127283 -0.76646609741743243 -0.7581815018634569 0.55740046553546274 -0.10324403851921962 -0.17610288195000812;-0.71099792311096877 -0.23742490627537827 1.1896377325494654 -1.2089961311728219 1.0804048284596302 -0.23059035098304209 -0.80814661165366597 0.57017000983351995 1.4451701445348075 0.50270352860357936 0.77444351081435248 -1.4341686733457362 -0.82284342150236345 0.78131190811475293 0.26547240748868112;-0.4428116395941335 -0.53508161639082885 0.28289854367948042 0.7141297643075426 -0.28224149415426653 0.34138144406346244 0.10914829506001615 -1.1502196880140956 0.92871093991370179 -0.70677900427355522 -0.29465561421200742 0.57750332465642196 -0.75926182445607471 0.30991714331955855 -0.15815367977339645];

% Layer 3
b3 = -0.97360793736300055;
LW3_2 = [-1.4064914667373605 0.70383126598791868 1.4258835946700841 0.17895452765273417 0.63936229698608615 0.32007479176835091 0.30034618980912248 0.34592027553207078 -0.23949720917553044 -0.33593566559509414 -0.92850311579237332 0.49325405498073022 1.2940276637547534 -0.2802005470165429 -2.5613382089564696];

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