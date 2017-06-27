function [Y,Xf,Af] = NOXLasPintas12(X,~,~)
%NOXLASPINTAS12 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:48.
% 
% [Y] = NOXLasPintas12(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;3.96825396825397;18.6915887850467;0.0175284837861525;0.0546448087431694;0.00640204865556978;0.138888888888889];
x1_step1_ymin = -1;

% Layer 1
b1 = [0.56975739276075155;-1.4489539458765113;-2.5402042363317592;-2.9385966411638829;-2.313085725991705;1.586425062444027;1.214651179290779;0.047401072878348924;-1.2770097721210418;0.39655874140040809;1.7830635940391446;1.7730607942724064;-0.80295928288842733;3.0062354803093774];
IW1_1 = [0.41762385922582007 -1.7286394942318739 -0.47913322897862459 -0.1414519282452138 0.83586646048577307 2.2811124952297943 0.43832861255886912 -0.066770277637158398;0.71104536697711451 0.50212506726116224 0.15694613855781805 1.3951098321407118 0.34152125618397761 -2.0610212124792291 0.21353356163022597 -0.46766162932970751;0.97864433116622851 -0.86839880040661233 -2.0220876630283438 0.66278150061713403 -0.14836731419390442 -1.6768384803590404 -0.5984297733191325 1.3200375449870496;0.37338703735740431 1.331002749486875 -1.164721201647209 -1.1342524350249075 1.7601446951819784 1.1673218543633763 -0.40541858139460174 0.5674917047061242;1.0147102273887052 0.042049118576705194 0.65109611666967815 0.050108314041773454 -2.3068573366906429 -1.0245475986311081 0.19357605594298916 -0.74802056047560539;-2.0457325594349287 2.1650450611216265 0.52530983287455491 0.75992888759073662 1.4467952511423838 1.8089737230699257 -0.33984133408745676 0.55317348121466359;-0.96052540560536614 -1.5270216876842855 -0.19619911075466451 1.0159234880801886 -1.6561049765520948 -2.3213799108911553 -0.82682511129410008 -0.45554581880230194;1.0579421673997285 2.0252987080526994 -0.65024771086941136 0.97142394908497409 -0.47865846177231902 -0.50510086814714783 -0.13609052265064225 0.35664405767492185;0.52796977414587132 1.9148265782291085 -1.3749028416014282 1.0015434636767762 -0.00019505686819637838 -1.2350767659893573 -0.19831845139240986 -0.26659040590174687;0.13591907780145202 1.9405975358332757 1.1336656625066546 0.19174049322765413 0.72327023865034679 -0.32335687079360098 0.35716290836962533 0.1843662512529739;0.54247943276941435 -1.3339429778821057 -0.68027875828254136 0.16452264221058327 0.78813905374707427 1.9626023426971844 0.83748173349887955 0.21158603526376221;0.64625510395173091 0.88588103778298977 -0.24252913591466352 0.97298066818928008 -0.58499553923850056 0.23246050972129503 -0.0044400351750634223 -0.35064370553167828;-1.8223944362496871 -2.0913313726168754 0.68246882447561408 -2.180912904664142 0.42974099160951335 0.88596605555813202 0.15192017979302469 -0.40146971978087603;0.3828983908784156 -3.0099827367925589 -0.59129712006824997 -0.28868417188689699 0.8483477998385569 -0.54627320387462597 -0.13578935614079787 0.2019204866642092];

% Layer 2
b2 = [-1.5804364065314644;2.4890029789713508;1.336236126358237;2.1423037325853769;-0.23722996440044936;-0.70437180029221214;2.2078529960444162;-1.3953806284168164;-1.2742436412165097;-0.087881329012255732;-0.90938024730013156;0.90867926984787395;1.4634527283700958;-1.2236482223680614];
LW2_1 = [0.17374166667340429 0.28911134433183949 -0.66952037765861894 0.72274783326378311 0.089059177683778259 -1.8554607088788617 -0.54639027796753259 1.8288926703406407 0.55851703389883067 0.51500930322195237 0.53623917593335535 -0.26626996715895213 1.6037768888691495 -0.47084355666208311;0.23292405577019684 -0.24801514097902319 -0.011241009308008587 -1.1330493007897855 -0.76084815173386033 2.7482945037123869 0.96967357949745614 -0.41158049015462234 -2.1914677709935892 -0.88970485687628353 -0.82712759874859954 1.1235849727882554 -0.059899067900793815 -0.53035693831618069;-0.76926073752181812 0.3475490487400627 -0.27364872932910683 0.53293165556156663 0.33099630646901596 0.25892521189687046 -0.10859734672624499 -1.0862845275593715 0.25328044204456535 0.81278971752927431 1.2768648067128381 1.0519746641468986 0.055486059959789329 -1.7920358018806015;2.3501975955125234 -2.3001757458263796 1.1564266193206472 0.19691250557839365 0.62744069700502503 0.96531338723951154 -2.3826204211858313 -1.2380449689548567 2.137001758981 -0.2213939846384439 -2.6315250852863219 1.13479492064905 1.0326204477838024 1.6084223045890358;0.048326520263277786 0.1437317363953084 0.57709382663239384 -0.26915544201028019 -0.78650185002910633 -0.29042120018077017 -0.29524155659166496 -0.61201994282546957 -0.11806992661358716 -0.72713039203681062 0.74606248080642024 0.80885400152303022 -0.45808987420313896 -0.33618660954811641;0.21488616153026371 0.59582786084794037 -0.22720810443314116 0.29220556336055337 -0.20267904989483707 0.36998899900547344 -0.16839280289521438 -0.7115955285983433 0.36415993893347187 0.13018732447495054 0.16565697613188513 0.25898308246558049 0.16139457419438652 0.32790192742438756;1.3027395613118806 -2.3958821380535924 0.4013624807558287 0.39397160872342729 1.9673935490741772 -0.85441729038615255 -1.3058828812671515 0.91518109952204185 0.24916354311886102 0.045193362878958573 -1.0705997581948108 1.3375233832339282 0.023426126833869881 -0.22865595613706025;-1.3900907767431305 -0.22303761130360977 0.059329320977102112 -0.1159017094150904 -0.83286677819561272 -0.36666798390899763 -0.20628746048334812 0.09086828643151014 0.1075693136525301 -0.81568330523728538 1.9187339187015047 -0.77844743100579217 0.52908270251892853 -0.12793249964655873;0.66357279245189116 0.075582260680555777 -0.10376563638803935 -0.13438939453783555 1.2874325492946235 0.76626471910364125 0.23284732531705074 -0.73351687367298946 -0.021708913111528276 -0.27843215132516635 -0.25176635685665388 -0.35875907854350042 -0.84506899636330235 2.1295392999911393;0.11398356643348818 -0.019359420319510542 -0.93604047090069431 0.32401320666014033 -2.5682159041786705 0.48289140738683867 0.84236722186371871 0.77624989203255723 0.11190857390357789 1.6444013725096114 -0.98307919859132975 -0.87068677537500228 -0.38999557242753718 0.31949612230880781;-0.89829370322271651 0.71018321086291458 -2.4694915081193307 -0.55674267164779023 1.7055223540615878 1.3561855033024566 -0.19241456872223089 -2.2153730683910893 0.29166540850597816 0.13612362692551902 -0.14924805287261414 -0.2262254255202627 -1.1932465181238232 -0.82005611635705944;0.53328416360733999 0.99488397257909 0.58228906609068398 -0.32239076055159088 -0.52006132860789722 -0.13945949924703466 -0.71014372837594497 -0.47833063387655383 0.16709319981804857 -0.57387233812541916 -0.14839457589418978 0.66311732771180287 -0.23330665361780234 0.055418245170196986;0.37685216893503082 -0.06537136549929079 0.40050517126376867 0.60917054576947693 -0.12731983518516754 -1.2626513809346809 -1.4068894598094492 0.70819988641315124 0.23314463519334375 -0.48530067661358212 1.0111954177694888 1.6126331314854037 -0.87312686320802524 -0.022292720768666591;-0.51770873343949664 0.61480479671606425 0.17206325170026668 -0.83479623002244541 0.12235567278572007 0.34541157388518751 -0.83521293742536096 0.39632288149460126 0.51460812346763152 0.45801418444108277 -0.68550952480070393 0.57321664506730108 0.21415413314705201 -0.70486412153880207];

% Layer 3
b3 = -1.3433593176295435;
LW3_2 = [1.0711247695360795 0.95396908619248211 0.93621712043973515 -0.73762563674992643 -1.9327298480205668 -1.3960773191280398 0.96902552925600594 1.4155309808035133 0.88177997708401379 0.61958751745194396 0.63365384548765935 1.9505128703351529 -0.45070028269868728 -1.2611553001119831];

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