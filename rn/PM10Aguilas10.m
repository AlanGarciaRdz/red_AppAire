function [Y,Xf,Af] = PM10Aguilas10(X,~,~)
%PM10AGUILAS10 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:19:49.
% 
% [Y] = PM10Aguilas10(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;5.42005420054201;0.00666000666000666;0.02;35.0877192982456;0.0561797752808989;0.00588581518540318;0.125];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.8879319145508839;2.6268653278553362;-5.6783126999604052;3.7729489008933865;-1.5966116210522958;1.688173681129667;0.95976769296966158;2.5214804768510835;0.16448582510661588;-0.21693379051862935;-2.2986786814711646;1.7465887131652791;0.73256581053340286;0.84451264886467703;-7.4949193405308536];
IW1_1 = [5.432670911634383 -2.4422927496706315 -1.6406236971223784 2.3598543498025211 0.17704385300261188 0.39630130568241356 0.54389004345377756 -0.68202096204351859 0.21690575474865464;-1.372630386374859 -2.0277121638920894 -0.95531187923699068 1.5053055717096753 1.2444377979161259 -2.2913576624095358 2.5601787173332009 0.96257628429815434 0.20378840910535689;0.34318536511444175 4.225377783459674 0.02954541534370822 1.1054018590640438 -0.34534880938777623 -1.0043668457223667 0.13597007053367646 0.85962394436439993 -0.33610454993563266;-1.6129743961459677 1.5217065089866975 0.19968057444858578 -0.35336129690563678 1.0747704827818583 2.4206952896395606 -1.4285427293251642 -0.62187841940740618 0.38060684330320427;-0.049186797712052047 2.3486112055904105 0.45892673867568246 -0.54831963800788708 -0.62986239463116411 -2.0253509954194846 0.26437525413213253 -0.14444767973320907 0.65466809784977009;-1.14206741054542 -1.1269946824383239 0.92367881999255708 1.2398011297657314 -0.60950743538999252 -0.70395535565630296 -1.9106996122117368 -0.11893654527201636 -0.87088721454025997;-1.0530323996493265 1.8200308592304872 0.35229725520185873 1.2478005180730991 -0.54600961028834127 0.51724185988283433 -0.71578684851487984 0.94749797298555138 0.24558799699750236;2.2301476702080314 -0.60445900579376455 -1.1241794719131097 5.5966721552026657 0.051616289715971597 -3.0141964610298948 0.13582436144710752 -0.038132283695805458 -0.088219324563815676;0.79131047208611027 0.026220064068275709 -0.07350579439934718 -0.73190271494871084 -0.09146677634832881 -0.12033280227373616 -0.31168386008423005 -0.17940141853255986 0.12483643572114408;0.033661325051283247 -0.02389768318213803 -0.65987664887605901 0.12737194710842523 -0.37631390887338062 -0.23471548575549461 -0.544692495803761 -0.56694768104934268 0.12352378226100479;-2.6394161074167539 0.13958530083721471 0.57808885856882364 -1.8903567116073783 1.2227139631670214 -5.1149835796178671 -2.5250390159832001 1.914509968532573 0.095289738851388667;-0.28722267952358421 -0.88804114677096291 0.37615741560053628 0.47679745957625086 1.2767164686826467 0.92303624414607999 1.5526881558436929 0.61293963488433079 -0.15066914981703869;-1.2189679139054954 0.39033603169799802 -1.1459456599898703 1.4503655348901938 0.38238962415355676 0.19449753013803267 0.19787476654249253 -0.62672916646486376 0.021613718532334705;-2.2412357480578318 1.1993335580538724 0.45781347629442687 1.5900421683292396 -0.49972574545399884 0.1478612199738118 -1.1368685649962282 1.0918874061141828 -0.5722765139251208;1.1791738318166813 -0.27438156262209579 0.14737776148007101 -6.8722212925317452 -0.24417457811617269 -0.91198906303699168 -0.2458085340058479 0.31869825040612759 0.013899264971419713];

% Layer 2
b2 = [-4.2903580469334299;1.614109506718812;0.9838717674739752;0.64137383594346931;-5.0161009667888496;-4.723113230100191;-0.54001270906066001;2.1886830779269313;1.2707388339652546;-0.27165197222977816;-1.4963818999030463;-1.5912904137155037;2.4895805789804299;-3.1028572672067396;-7.416622587128364];
LW2_1 = [0.48297370062276396 -0.66254245026465775 -1.9731598377746902 -0.20509133999721585 3.1450843105694735 1.091767811423195 -2.1942549869988119 1.7493598704057371 -4.8188262041425975 4.0743541126834995 0.56259512061746197 5.2433302405943172 -2.2719724032723816 1.0012865906871036 1.9525683770972051;-0.59223884972708563 1.1372362344510019 2.3510866698075192 2.1179649509425276 -0.32646120398367384 -1.3368322016272709 1.6296088409177794 0.13298695546032785 -1.4306578209719063 1.4837557878829213 -0.98739848946193653 0.25334962266958438 0.9517148386917198 -0.59516448748469664 1.5266347192415008;-0.43542992970174504 0.89459073852461257 0.42373061429605441 0.75946200114457929 -2.4763188681857216 -2.5485324928829307 -0.015802810308730153 0.29878043407575394 5.6329316768266162 -2.4683668971430159 -0.95828411346541831 0.42336041222647208 1.4877463417742047 3.425616015254668 0.10735700531134906;-2.5380336023955237 1.6338546255297715 -1.6095628940272366 -1.9010181210526953 -1.8691129147382126 -2.4487306305674696 0.32813537258432618 -2.4619029594661956 3.6726514031170279 2.5498846057349178 0.28218020461267024 -2.5634556791860796 0.4083809089641679 3.2624087709672893 0.53857855253323772;0.88279557287031329 2.6107516631876857 0.5539521909099866 1.950444762121011 -0.52108862371408027 0.25549429806514695 -0.2449057401287944 0.86430175405799736 5.4344430518622957 0.53364466664054777 -0.51048238039274851 0.073431334719360308 -4.6758227740233664 1.0373351636170212 -5.1044490168935042;-0.017985256072809222 -3.3401849420029985 0.5346629688502631 -1.7646739528333071 5.8487809232433872 2.5482667813059745 -9.0109829142970366 0.066204607995559883 -1.5041877926315452 -6.6691448105859203 2.7010702990047641 0.28828175562992309 2.4438781455729326 -1.9116209420914734 -0.73546469041082496;2.7390407040153359 4.8527069921664312 5.538154540271977 2.5620203730060478 -0.37612811208289737 1.0605537069627318 -1.0813074778873437 0.78948780362821547 4.494958267922077 -2.6351970388538959 -1.5628042952205752 -3.1615246520578495 1.3628710961287742 0.063032041515621237 -0.69841462415565347;0.10890269282866241 -0.42486953205695199 3.8757953211514611 -0.35115845708082188 0.51843874686991209 -0.17241309802087249 -0.38279132927870108 -0.48288952744761116 3.1796518277269916 -0.78880665147765938 -0.29525587147612109 0.81495074864956896 0.48595464898063878 0.50596308931123823 -0.57473427815447875;-0.018151508384970268 0.50840033801626583 1.5872765741718113 -2.9843271291123612 0.13217537742487426 0.82687500962772431 0.69656142680594879 -0.21554827942961566 2.5108260235801061 0.22591744480375939 0.86483151661257862 1.7222947287261565 0.89398136485650848 0.36557811810371776 0.82321314378046639;5.2388375998364793 2.5634182938350629 8.592099952753788 3.0100762524721696 2.9943328676483287 4.6002912753960699 -3.1867396116171434 3.7586890240538535 5.0685266659833461 -1.5506367720480951 -1.8767934199308003 2.8777547917395894 2.5550721552612745 2.0199043568995845 -2.75617036869069;0.19950149905111209 -0.81913504739033294 -0.97100598239335656 1.7703862108563517 0.75520757998300492 -0.41159909466860772 -0.23039903529382297 0.47828648503477789 -0.86518403985104619 -0.29993079551180957 -0.33593460338552456 0.44447821254100534 -0.084365330706787089 0.39787633330294125 -0.16277815251167249;2.6989542122294043 0.93846036343880124 -1.0227385399917699 0.64279372142511337 -0.11665320524279095 -0.12061348808736549 0.13612790577260714 -0.55687009897735829 4.9919641455692148 -0.24351717104242043 0.37096409198241254 0.27457208703521496 -0.27705970963818588 0.37610627829265586 0.16444484959033645;-0.27475135637988279 0.80285069940801912 3.2038411901202992 -1.384265957041352 1.4347772553689424 -1.4199047910102014 -0.71320305430849229 -1.3005629877255955 -0.1724888880410291 1.9674428261570505 -1.3270741699298876 0.18798543487465524 -1.2575466789189647 -2.2105370165430243 -1.9995975422668122;5.0237121683939856 1.4860177325609483 0.63169671674579964 -2.52895132829167 1.5419877578796375 -0.66409869361701679 2.3857928578597933 -3.3499333480189262 -1.3470131021363478 -2.7530110333036246 -5.0274229241939574 4.063273534924301 -0.48381454384353106 -2.3804819108897362 -2.7078833035138463;-1.6401356753134591 0.1076884800923617 -5.819083497870098 0.4136900393108473 1.15993273605889 -0.47985059019978987 0.30077605017409359 3.7243348531271234 1.1614526869269932 1.1406248866527986 -0.88458690189569289 2.1663997389785536 -1.258948174080166 2.3881427453452946 -1.1011176097482949];

% Layer 3
b3 = -0.60620257251746135;
LW3_2 = [0.077587589589002831 0.065250520094488645 -0.26794619700571587 -0.039998893109406013 0.074275759585472778 -0.03053775990929215 -0.037776574107441931 0.20384662509730347 -0.12353346971688525 0.017668846445364352 -0.24785994482449153 -0.16667639683120974 -0.033720957751902342 -0.06798197992194914 0.095154615153599395];

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