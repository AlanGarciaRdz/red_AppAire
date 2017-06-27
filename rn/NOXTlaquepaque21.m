function [Y,Xf,Af] = NOXTlaquepaque21(X,~,~)
%NOXTLAQUEPAQUE21 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:16:24.
% 
% [Y] = NOXTlaquepaque21(X,~,~) takes these arguments:
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
b1 = [2.9362300771676129;3.3811069021503206;8.5524095168283001;1.7503145073449813;1.6468681474284999;-0.41543653252367402;1.8041489192737863;-1.1302158825763473;3.7226928792817886;-1.6556978046431663;-0.63308994493663939;3.25089385150733;2.0193809643527052];
IW1_1 = [-3.4069591208994718 3.2116344219095172 -1.0083457828992153 0.46718996991324307 0.39926558435051429 0.15921237481484443 -0.36002385665965408 0.49316301244085314;0.50338032728056736 0.57053608276866352 -0.6553001726774651 2.6910355666889627 0.2936445730555774 0.88075548556831318 0.20335194907786786 -0.73930760644175342;-7.6399409946676862 1.5093791511456502 0.94269088659044864 0.21354221032319218 0.086188514768315835 0.35112654981187486 0.12801092284662216 0.85823901283419024;-4.0127230068973088 1.3614364389600058 3.1788675630544194 -0.74790249926290608 -3.4993356865627971 -4.3733058113407868 0.022420791794066582 1.0219247288759044;0.096538041381413225 1.4922818689302537 -0.021717852755766508 -1.353791466120273 0.60215437968399377 0.88621030393012501 0.19774971844713488 0.3997697856011927;1.6155797818140838 1.1386843163256191 0.25921410499771336 -1.0506470997320061 1.1646385046953815 0.71374117794261016 -0.13057385293829352 0.14485546394654802;-1.1695260523375242 0.14382285312292586 0.032035088931476996 -0.91495948171743668 2.2406709805601661 1.3885069813751545 0.62383559178146553 0.079092190121717823;-2.9613007244900245 0.47005785944600681 -0.24465631450005298 1.6964242384324009 -2.0734810869218956 -1.3097290946815847 0.20881459141429884 -0.043543038199163053;-4.4141050417434711 0.080944992494190834 0.66137320611632922 -0.39117189804020158 -0.32485591196370789 0.49695444191601185 -0.20291928276132418 0.065397627410824749;-0.10643164214633564 2.4278385755128702 0.47837029771006973 -0.34415608768471595 -0.20991341676610656 -0.36699908664861841 0.13907732456929581 -0.0078248823561777626;-0.23997630576921666 -8.0602110963007583 0.16819410220915845 -0.27733095523971485 -0.074597937459749519 0.77281259266010072 -0.077239726296811945 0.059911225994896351;1.3933134360891695 0.81988209647363663 0.97351981711269397 -0.68947105282580945 -0.028839712041641024 0.63036190052777163 -0.13899199367682033 0.89824403156581412;0.82865386871371627 0.39953926939938222 -1.0367457173737613 -1.0588137319287316 0.006844750590484866 -0.63005080155999937 -0.65936868651161673 -0.58891472684019786];

% Layer 2
b2 = [-2.9300639161893289;-1.5897174095893465;0.50819886815065263;0.29993905304930835;-1.0461652568467399;0.40171540060824379;1.4756031601054929;-0.98930068979908703;-0.84145655502961536;-2.0418631889760896;-0.60071116513258405;-1.8820949130017077;-1.534838261110743];
LW2_1 = [0.59908861677672398 0.027292608010027745 1.3538938549303983 -0.21390973183587697 0.47096318518173769 -0.55456505482503426 -0.30415803062002755 -0.38927012087419277 0.12636632009110979 -1.3080554560123279 -1.6474412910078124 -0.32222627586200253 -1.1294824266632959;-0.49298374329391115 1.5299450929710194 -0.37617665093209263 -0.74557816282690448 0.59188320795866245 0.36322288525314833 -0.40459211253041588 0.36495414641942636 -0.28399342559304169 -0.043039367089063668 0.87657899462926137 -0.78741791440901343 -0.68537927848538172;-1.9577819747896401 0.74235758764204252 1.9314629136844288 -0.16207335483115726 -0.83469085050045166 1.7585660973045281 0.0080829389447464994 1.7090722649635297 0.40509774753930422 0.18622310749082724 2.8158157898073819 -1.3702861895971401 2.1336537996818024;-0.49432028260224298 -0.66108277408825911 -0.46390767226527024 -0.59272237631137203 -0.70528041178844725 1.0641324469967162 1.1468623885783582 -0.64771900950226569 1.3225023460274394 -0.56914513714680282 -0.36593587907822961 -0.26624325140923838 0.3013292180685162;-1.2842520462258316 0.96685725022971647 1.1027942070904124 0.5644408753589768 0.51217926249910672 0.60743048489279838 -0.23978366303396423 1.6370389172873483 -0.24652726421730323 -0.17219922413603259 -0.73623250602050372 2.6803998084159288 -1.9215402432967903;0.32643110205607834 -0.1787187264300667 -2.1533059020527192 0.21149247765938958 -0.40271846784598087 0.64270299393817421 0.42158535806275527 0.45136772700701167 -0.023865147388773409 1.2298240947614034 -2.5967832733391987 -0.84063601144371536 0.2674266811925593;0.94368777401658566 -0.81770042481808247 -0.86546092855875256 0.60184701468335 -0.54923115283221213 0.057848461695266307 0.45425459726812606 -0.1618541480846214 -0.79365773965462894 0.53826299963674185 -0.50249474673757655 -1.7390481275792196 1.6295414590326274;-0.91218113470748852 1.0320964609050025 -0.33745070904068514 -0.63066969100490422 0.73560806423840341 0.42259888492472769 -0.71526793557590385 0.34025174961824345 -0.065497879520810043 -0.20850921345586607 0.11075716238180582 -0.0455415268967298 -1.0403261653622402;-0.064304796385324256 -0.35926823462757829 -0.77845188991604042 -0.84249220481144527 -1.1943823170719365 0.56876342791605894 1.0736371089137504 -0.77184701715439796 1.2600214346919405 -0.24343212134064302 -0.29684000038011754 2.236847803705746 -0.55490295966001013;1.6130621157612408 -0.5433834634213992 3.4043901219817609 -0.13769326648557628 -1.2128409516872221 2.5660072977257506 -0.80561371583587826 1.4808487324315822 -0.50765555673090934 1.5569179032730076 -0.22305776637190849 -2.6112176197086328 -1.3232789266020208;-1.3858713430793175 0.85029722699827981 1.7987537169090684 -0.17735617403441511 0.74664501671810668 1.3091913919555616 -0.31841164418931289 1.321594055735839 -0.028725289355238139 -0.039851810592732802 2.392225619086819 -1.0460773378625063 1.0745725191359103;0.14358159720589764 0.38318048073559147 0.87478863425199349 0.67934738856615073 -1.0575692415887086 0.42155375218559721 0.30000419995999322 0.82275720779192851 -0.71270310634968048 -0.037193124282319821 -0.82137762631280287 1.4870586185641892 0.59496418804566664;-2.5328551976005391 -1.997810303762122 -2.5312599226106589 2.6329791560865354 1.4115200204759164 -1.51304373011269 3.2618312324740257 0.49963962462223666 -0.035786337367047567 -0.18023479083563004 -0.32560603383075515 -3.0758169640594462 0.77243443444763771];

% Layer 3
b3 = 1.2516546668536819;
LW3_2 = [-0.84708284032756631 -0.94943571791522263 1.4473033887678719 0.73289026488095121 -0.44657192317571504 -0.73120496282357461 -0.60858871204486709 1.2199588430818271 -0.74794876849603364 2.1663547248849659 -2.1504725024574389 0.96895189940395432 0.56313496362397142];

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
