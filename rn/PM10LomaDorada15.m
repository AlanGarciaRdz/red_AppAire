function [Y,Xf,Af] = PM10LomaDorada15(X,~,~)
%PM10LOMADORADA15 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:12.
% 
% [Y] = PM10LomaDorada15(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 7xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.290275761973875;3.96825396825397;0.00572573718866304;62.5;0.00462534690101758];
x1_step1_ymin = -1;

% Layer 1
b1 = [-3.7025309631278929;1.8936685018915309;2.7599001660581446;2.0275569473654693;1.936624469587263;0.10101549601083984;-4.3657259356308744;0.84128990965184713;0.24590798204437878;0.65598455058821337;-0.8231649737504817;-1.2633679668183082;-4.2850970238810167];
IW1_1 = [4.1105719123241 0.33151513675145539 -0.73827207997758637 0.65179614973821198 0.77195521682782275 -0.34964896747871715 0.046974296823539388;0.064889557815515683 1.530284159036593 -0.83417618418033357 0.45219898201659059 -0.35743786868755273 -1.2182690257676698 -0.89591291991885447;-2.8955094229363523 0.10850506680196897 0.3078421469991976 -0.31756382408878236 1.0671473000035818 -0.75269101959256268 -0.66878382672805803;-1.3397115503659716 1.971325299400686 -0.38738907375491671 -0.029618803091195182 0.66452062857739713 -0.3076590168749862 0.17246988116315373;-1.3180240179747926 -0.41165451897788519 -0.59556827555005809 0.48277697522962826 0.10811122362152989 0.18681905879663055 1.4233745979168961;-0.0067288555012205657 0.27415207704167638 -0.70955154342650639 0.032429748865868926 -0.53670502793044494 1.2918526220476687 -1.4742606289766429;6.2243970715556571 -0.70564924561383291 -0.70165664224904301 0.53683459680124257 -0.34044866432156728 0.9464494477425478 0.1811722885906048;-0.33735065166050615 -2.0237315445609418 -0.52579949842789697 0.54284840312792926 0.066086103395759557 -0.10131838049336159 -0.55041674225640624;-0.80931463178452012 -1.7236314171253297 -0.17104955677255435 0.61646098308692288 -0.3539761658877939 0.00596536773279676 0.084059481016992926;-3.3097641172400887 -0.36222127509945673 1.1914891171604436 -1.5767913559049145 0.26002974921535871 3.1575688963765085 0.35434134803170547;-3.0219302497032561 -0.13533226831374018 0.015652193579116534 -0.18072732246990789 0.27605197078590427 0.44132967766786607 0.43487391747749898;-0.44518972439889087 -0.46678665854993362 -2.4277269865315425 -1.5706881884091861 1.2547254962876553 1.6141713517927962 0.55197421143883596;-3.7871064555442322 -0.95525364712874128 -1.5513397234718229 0.69285219656914132 0.30200487967855671 -2.0006054106185323 -0.47039735502232966];

% Layer 2
b2 = [2.3589759888335768;-2.2970589449933798;-1.0642728347998909;1.3976740173655886;-1.8341282823392846;0.25564033520363699;-0.14020132860838333;0.3763079233341235;1.0760600558538511;-0.63008924711615932;0.9610911397312526;-1.3280043964236565;2.1621551731640203];
LW2_1 = [-0.57324827237092635 -0.035039796238459438 1.8442642523215367 0.10495975334862473 -2.4049424037842382 -0.3703216505048712 0.30067046001145781 0.66773511130979424 0.92698292825391382 0.50641116960115928 -0.21166588926053762 0.37712166934687563 0.6667027774957659;-1.1054881465700954 -1.1888555228388036 1.6426528768795883 0.032840340175684844 -0.3020036140047872 -0.87206329916170577 0.48491472726663531 1.9643052870858495 0.35793413200921342 -0.20616496163155873 0.53447371186752446 0.33124840161948199 -0.81421833303918312;0.64129624023570508 0.85485024492050576 1.7668802468161982 -0.57564496698093748 -0.86053287600804751 -1.0439206501836449 -0.31238627903361449 -1.9680456214603244 0.73691732195509485 1.1215928978966887 -2.6889068972541641 0.189270668236142 -1.037671625879836;-0.20147088020021214 0.49554688600875202 0.97767151867663182 1.4272583647314612 -0.73586988733694914 -0.30059865028978972 2.3015548800542565 -1.642273644003714 1.374870225519647 0.13928768856235835 -1.4757547509909148 0.27046244337285485 0.59276075898770519;-0.18379756414504525 -1.236910955225923 -1.2613828054050367 1.5947148039357544 3.572824344110229 0.023793281433879196 0.57200711993736342 -0.58944821082658172 -0.73791088264138227 -1.1918518095753783 0.1039508250030491 -0.21367510049516647 1.1989968656904499;-0.050613972268358176 -0.75204566634032965 -0.40429259629790776 -1.9442654366113772 0.57350048011017485 0.68959755819158997 -0.11909808049905669 0.22864150493542093 -1.0331108797973863 0.34160607358645079 0.16463156888481539 -0.31554526856461818 -0.031927475356350876;0.68677303708183557 -0.64174968637370633 -0.18458800801267189 -1.9797031522485053 1.1348225060207608 0.85249490966222652 -0.35811563173177091 1.6104160934553389 -1.3178958734711188 -0.090741327054704335 1.6477085851923912 -0.33368160549530718 -0.25561660847206241;1.0415513971606312 -1.1873119949828761 -0.73326561371281629 -1.3644023377296921 0.6890729859740633 0.51664858002272684 -1.5118021846623431 0.66178219556240636 -1.3701962933827265 0.4118273472078412 -0.060883976975318506 -0.42352617723929398 -0.42209158468878855;1.4586455633264015 0.22185782288668282 0.79294383525528311 -0.68153189083698362 -2.0078545646007329 -0.006130177334012098 -0.92336104605680913 -1.4256934321799801 0.97122934753821744 -2.993642195708754 4.2868815629216437 0.196580011613114 0.5023641266301424;-0.85213919851256059 -0.30035362847862351 1.0566840943612732 1.0504006582355625 -0.85159930259065753 -0.54252228343565212 2.1915875038232198 -0.77601273864563292 0.076456739855647188 -0.68570259688746915 1.3403776672835348 0.27250549943836511 -0.58994373247935938;0.71422568153491783 1.5537635373046721 -0.69972880781274438 -0.022438120388710986 0.41720722630561718 0.55796422774821364 -1.1614514111811689 -0.23017914878817775 0.74111335221293118 0.80066113920660764 3.0161396352955507 -0.36880968816265242 -3.0379084907230434;-1.2058678494266166 -0.94457300591592464 -1.738216951668931 -0.76767345513529328 -0.69759012843137724 0.24218443616636109 0.2000219924379284 1.1043941170770704 0.46816546530208203 -0.63044191031763275 0.48659594858283445 0.028847683321833597 -0.35458668538970223;-0.18992105593422148 -0.095762259974082914 1.1833424625444811 0.60761138819630311 0.77678644611888858 0.1868404843662308 1.8388081089530171 0.14063635526075446 0.43870954624317177 1.4285567661610374 2.12096914112007 -0.42305909735409231 -2.933821261457739];

% Layer 3
b3 = 0.070026188101439624;
LW3_2 = [0.81503768923099584 0.68346596841257412 -0.31316816635951589 1.535553097938595 0.54977610378700903 -2.2516311466342347 1.4412149177130753 2.2330647938346786 -0.48220155510392898 1.1460674716872921 2.0824673022659002 0.97309492699871103 -1.8824701997717352];

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
