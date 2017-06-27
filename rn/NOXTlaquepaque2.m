function [Y,Xf,Af] = NOXTlaquepaque2(X,~,~)
%NOXTLAQUEPAQUE2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:16:16.
% 
% [Y] = NOXTlaquepaque2(X,~,~) takes these arguments:
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
b1 = [4.206851812061287;3.4539746110996861;0.0046585018041179465;0.29992358131904046;-0.68930423484176562;1.6300378799506361;0.78488700354117535;0.3274016805831878;1.6183299983148325;-0.74685471205547282;1.7478688864954997;-0.20574707065133294;1.5141814082605267;2.1243236036223538];
IW1_1 = [-0.52547788695382058 -0.613165076105887 2.4624178735318689 0.3823818422273052 -0.8316052115324909 1.8095400185329686 0.16053886148517357 -0.11908680440941265;0.986631029191265 -0.61550331679149273 -0.75356694154825798 1.2334380649832384 1.4180311007911675 -0.44471003445899215 0.98330937386672679 0.018971288983788692;0.27984500098780868 -1.7935212518408057 -0.11435065784756039 -0.025777944053084687 -0.5097332592673085 1.3762035077079433 -0.17017785686062364 0.13804843048146595;-0.085298097973579554 0.72435679103975459 1.1351774910318913 -0.19549265215493231 -0.0020020293514574879 1.5450576745874225 -0.12054760340967584 0.27535461102993819;0.59943047506775327 0.10076104060097334 1.0639626411955494 0.029193286928336289 -1.3497576359820318 0.33293606413224353 -0.38594412549305862 -0.36820486213723819;-0.21029446438917201 4.2256970202198261 -0.35975422033405186 0.50663198165328338 -0.089302199933899831 -0.42932888421205001 -0.086059174007578537 -0.12501999480112863;3.09067322755637 -0.47453134928873264 2.1614670332336869 -0.81357627914761343 -0.27319974567448829 2.0721711939470224 0.051937344251576131 -0.57640287622098585;-0.89814899632963918 2.5618261912838922 0.30817282354436815 0.024524110974219242 -0.34416870355392426 0.54968223500118318 -0.15326445951106643 -0.36046725408765579;1.780103738516859 -1.2882930917756688 -1.1076857131932314 0.27823080309672549 0.31941863491776967 -0.5551008211638746 -0.0027841302562253735 1.5217606642523203;-2.8998243022149706 -2.1656950209550319 -0.84849380138811203 0.6396916347252869 -0.13440787304269047 -2.0354239499640325 -0.034242071018484282 0.033202181070065055;-0.1897653125241065 -0.10294278627420159 0.31297611897363009 -0.13826884438421069 -1.1182866643759353 1.4458461893490995 0.024011924043022069 0.18628336396095035;0.72892216255081932 -1.8438283967384028 -0.064278270550533881 0.084962846424458269 -0.20149889305684049 -1.5974086528385083 0.020984845004729795 0.48530882924388447;2.0261896030102715 1.0757969108166445 1.8129981662220278 -1.1288168170332895 -0.73229502923232248 0.00094610604756034319 0.39110375823017973 -0.30024128572606129;0.63334634631613618 -0.87715744173442289 1.2506724900713471 -0.38602377798462445 -0.18744330939135662 0.71171873510306771 -0.074830981077745287 0.28744086558837129];

% Layer 2
b2 = [2.0455109572082746;-0.63044001288093221;1.4022739701410354;-1.0302799355696253;0.14396338574078923;-1.2137000839722834;0.15614420918304361;-1.2530984337263649;0.2926383235643229;-0.60687720260226619;1.5270692377189243;1.5453564125935979;-1.1942936549397931;-1.4922562209488139];
LW2_1 = [-0.89900757441823442 0.17003876662164771 0.13497475147097421 -0.38648660971706206 -0.2071472656030672 -1.4191401091702385 -0.056758569987800989 -0.70632484005824547 -0.33082764251530017 0.42882090549179208 0.68793661306121345 -0.9390463646836551 0.1148478421739773 1.0892828744754304;0.2648145068048875 0.36365375185772225 0.090404418292310024 -0.41069475497037344 -0.10226369328526773 -1.7154340535055539 0.18882320002207123 1.2825588543210626 0.13981065787163158 -0.043524539031880638 -0.10465070056583549 0.61801284844572124 -0.29721356619595185 -0.085940811199849407;-0.35231237232016116 -0.81953706489144351 1.0891023607881112 -1.4687973714104166 -1.7289403243149435 0.34249450157434547 1.2132173017443786 1.9145247300837207 0.48682809517408226 -0.85558609261230367 0.31635266235506437 0.6407653039733846 0.1403733388670223 0.16561284534044843;-0.16308494080935387 -0.54665042333599734 1.1040841266237127 -0.83063273851643349 -0.17466433723632596 0.40300692696688184 -0.37579460061098158 0.089612109816554014 -1.0848977461817344 -0.28057684486190615 -0.38918199092047617 -0.57627935875861558 0.49396434095052477 0.67825104352432575;-1.0289571717172881 1.0507783748286696 -1.5206808547268187 -0.051697001438453127 1.311598167532968 -1.4489754677255091 0.51690943783853149 -0.15061227725305698 0.16468067719280857 -0.60923596689648762 1.0119220598727598 -0.14171437641953261 -1.1654347972322647 0.53153967790356305;-0.38093734746778052 0.6335674992991962 0.82350192239290132 -0.4763189458000795 -0.3950459996455033 1.2026734166856392 -0.45664893885306801 -0.68908675049098733 -0.69862270427703788 0.29770914673597554 -0.19445847690912602 -1.1441076404162756 0.31347850318484266 1.3275930918737202;-0.77219465082040228 -0.17081842170340306 -0.044306027574123191 -1.2616870590812883 0.24364726204801287 -0.48338764515063543 0.62552491851051784 0.23172178666308388 -0.65999924401691412 -0.31536199374106966 0.20538074685641861 -1.0132998324403906 -1.029716510438818 1.1456589443239458;-0.7241628564934729 1.1600737942838373 0.25478397450018708 1.1898102033815654 0.29939128903197837 -1.2924867167111311 -1.083173350733563 -1.0040456857390911 -0.065021079197551221 0.072178749406748732 0.49426076933153901 -1.4200439383468269 1.5388352184408385 0.69359878929001806;1.6498227487560888 0.18737734338772272 1.605844286521156 -1.2138108146143638 0.26471027224925964 -2.1622046658368763 -0.89719541856031215 2.1980249211679794 -0.97770494374498351 -0.75765397660815859 -1.5791466898441244 0.84256633169552375 0.59147157257998861 0.0069113597184488349;0.15450994356942316 0.15211925665880083 -0.45064062103084124 0.058902468567078668 -0.30570018018475947 1.5779762353813551 0.027970428202757896 0.36911905210393947 0.54978403914614571 0.11853659750365547 0.14582319114374337 -0.17213027914423232 0.36648287171395777 0.68177429232181352;-0.72575102419285609 -0.1893705820071353 0.78181972585528348 -1.2679266442427968 0.01697686100904755 1.1167374775832812 -0.0085021230200905407 1.2548352724578287 0.55796038890279054 0.23460792770301769 0.99533332373584815 0.85362770639985652 0.34121977856221059 -1.0154626283313712;-0.37289360324830656 -0.31715523245206606 0.023544425698548886 -0.39555258499520707 -0.98196202849087377 0.46035442779805658 0.083763532498646098 0.78924015613142917 0.063033949014496632 0.10057178181020339 0.68843909766418243 1.3123217844554196 -0.097907900093618189 -1.0460372236911633;0.90109424110471636 -0.079024770352556284 0.049101882182296677 1.3070675105851741 0.60538088046490912 -0.76940748765558453 0.43342481718976872 -2.6060928504273635 -0.26260954565083883 -0.12116470868745476 -1.1397359743947131 0.14213863727030326 -0.19189236044202945 -0.29621086958716769;-0.90899780247906381 0.26202234186190243 0.47961442562164497 0.43855241925683724 0.81663231387392476 0.43753693117244052 -0.10112490174773486 -0.2404070285159341 0.098411834483462649 -0.13144669556770941 -0.039567189703632114 -0.19019187220988426 0.4763665370983507 0.40603287639703145];

% Layer 3
b3 = 1.2040625891775663;
LW3_2 = [-1.2233222301118436 2.9956222940733106 -1.3082895921428788 0.92887361027580051 0.73513318249587423 1.2054313261561487 -0.68657046189502302 -0.24738318125868858 -0.54116663761311501 2.1401010154567977 1.2900616182490035 -1.4659885907332555 0.68408651924887409 -1.327493872094099];

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
