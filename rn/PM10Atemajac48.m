function [Y,Xf,Af] = PM10Atemajac48(X,~,~)
%PM10ATEMAJAC48 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:01.
% 
% [Y] = PM10Atemajac48(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 6xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.00968992248062015;166.666666666667;0.0561797752808989;0.00614628149969269];
x1_step1_ymin = -1;

% Layer 1
b1 = [-3.4270845183299383;-3.1633755000903427;0.46180537645265807;1.3530885550690419;-0.5608974717487073;1.3731869112294299;-0.31365661740578432;3.7303008395750599;1.239956936277502;-0.64838194703038665;-0.58273346549451766;-1.3451334223973272;-1.6451254514155593;2.2675141386218192;-2.9726250994517454];
IW1_1 = [-0.89340052908408385 -2.0875893787729267 -1.2218112654305933 -1.8957088373978148 1.2438533111343515 0.15164674740995621;0.10450720346814249 0.16191538507074565 -2.5658014480081102 -0.33838461599674607 -0.43479967970507422 0.075382798429496217;-0.94069118410857089 -0.3593021063940845 -0.26138744162352473 1.5561505726773042 1.9540115196516752 0.42322435336204356;0.16959582625977049 2.4656964276222828 1.0881633686122352 0.27742751530814574 -1.952753770619315 -0.16148240196199007;-0.092076563659142241 -0.13105902567258729 -2.9974661529206674 0.45848975214563464 -1.0587623162122568 0.75810131420938398;0.30363638548251204 2.2731850362609141 -0.29320528372752386 1.9663316978032668 0.64055741830670754 0.2941683781780936;0.78463048684665615 1.9648562615900496 -2.2941357994849643 1.418406017731328 -1.3631037269546389 -0.51789125545450854;-5.6818810537725284 -0.4420181947209153 -1.2064734308886838 -0.34468959514104414 -0.37974245699882581 0.091179836044135959;0.015907901929177529 0.73363314131073121 2.9313505112487124 -0.42504667050147005 -2.4352645869772176 -0.84907855139250255;0.096857336256468834 0.50128461100273236 0.72539330474280128 -0.59684957312497766 -0.8223475285795836 0.21078837441700518;0.86353073178922246 -1.84971536527194 2.5832345277051094 1.8504877766714785 -0.377736721127581 -0.15196100751299951;-0.09403952267493923 1.5110438523621132 -0.78446597360288128 -0.68640742331080795 -1.8208329812004787 -0.26617757128738351;-0.73514597848626162 0.60833738576651042 -0.30672567285910385 1.7086408557955624 0.79708740673928258 -1.038875046330527;1.7701566299665317 1.5256084604768732 -0.5233529128034361 -1.7607033088926964 -0.21991404963950806 0.10993207277270586;-2.4805781586999429 0.094476932787101106 -0.45956235719314142 0.056297306141717102 -0.5206534729672353 -0.3845649862828584];

% Layer 2
b2 = [-0.368570377523323;-1.8720565212742575;-0.73948661253371617;-0.095740532918051069;2.5324839319315111;1.1700446952990085;-0.51323765590686765;-1.8472682730839045;2.7881361226119497;1.3532604014930807;1.8396349929085203;-0.45292947831642411;2.7676502281164064;-0.79486152089368622;-1.1467472524564488];
LW2_1 = [-1.4511820378211451 -0.27794819178236091 0.71182575672624848 -1.7175288885186799 0.16143322397152698 0.54316394763649045 -0.89012658535302991 -0.72995356728333771 1.6086621928803753 -3.0868377356432029 -0.53609591516633182 1.0171597535338464 -0.42236389767970278 -0.019557717317328513 2.2615527078976831;1.5495370512056994 1.3380796790176326 -0.39990199418144262 -0.75813096168886052 -0.077772075040074579 1.3946492526189131 -0.34452019800119449 -1.7079983467645823 -1.3316508453775298 -0.63030959808759068 -3.9647065117792355 1.0934699977422975 0.6826517982342557 -0.17469193255188409 0.95742588643736237;4.5888918372398928 -1.1506683150309656 -1.6168983947205757 2.1047576746070029 -0.57250329856586057 1.5596475893245656 2.4270051823042094 -2.4876871106693983 1.2586350315912305 -4.1972143514019393 -1.6511588058429345 -3.088084993729483 0.055245057102197695 0.20058610485068956 -1.2799645301270277;-0.52525422165683056 0.90624589996473837 0.76500172639833564 -1.5564688939627458 -0.47815674963833998 -0.58137211489839402 1.2422392360440535 0.2541023316811114 -0.0010084171661875266 1.5796286816068712 -1.9848894870342626 0.45604124572350563 0.42057026879669684 -1.9124820021767397 -2.0396923119438246;1.2005366106409894 1.4429781573505263 -0.54941282936724756 -0.78665687699073528 -1.143756108355507 -1.6088741504505715 -0.88132984288583949 -0.94651052424963233 -1.1721293832817234 -1.0592553917714964 -1.1831816573333647 1.1715634363868008 1.961032828045949 3.7429180232247319 -0.80911014917397683;-2.3467354850903188 1.7786050047299755 3.1492987173211362 0.22376656660508121 -1.6291746333588673 -2.7581525736241632 0.89828124549112021 -0.68983946014707109 -0.61105370727544872 1.8939562020889398 -1.3228954324808653 -0.65435697553755656 2.5999948488309679 2.5712657265496288 3.5001063357293565;-0.43704277132113317 -0.96512139437884781 -0.42066627360576853 0.64596178355033795 0.34274014789284019 -0.37334156022397952 -0.022033838417950716 0.25585957135025295 0.32674993663013746 -1.0298067478809074 0.22788592823981507 -0.50767639735829262 0.18257596611568935 0.095916369111930258 0.34762935297699027;-0.54278101452719429 -1.7355531042812509 -0.23752942216702061 -0.23110012451596679 0.58343736086939624 -0.22062790405064017 -0.28837053720722705 -0.36732164282248886 0.43346148725196082 -0.45416080159592909 2.6685778228701329 0.27766873232311989 0.41636163132338355 1.7495308836683428 -2.4424482687993159;-0.3556422729495084 1.4570000999526709 0.38704043826897633 -0.27481853985104576 -0.25770466756645782 -0.37110138382993857 1.0202141529726554 0.96214908314684888 -0.26535942973180487 2.0400690308932523 -2.8853811711020216 -0.54036743148968136 0.40195307119692697 -1.8258596388632033 2.1933573781060782;0.7095193099666558 -2.6534948540090939 -1.0934247093802743 2.5169481276238139 1.9565857992507671 -0.48473217663025414 0.90534750108194784 0.32185549376544975 2.3016627878062397 0.54748334707041324 0.045423073084503773 -2.4742563635531964 -0.19522720991732134 -0.65439160588804723 1.4672803549152977;0.36380795433815333 1.9404697330210987 -0.057911436001572392 -0.23879772670401725 1.1859910366507247 -0.14602400004206106 0.74545559954896878 -0.094956697319964534 1.1546749750427283 0.060704867910997912 -0.85498607168964769 -0.031182269098311 0.82136939390282282 -1.5314039582876333 -1.5721431528681475;-0.40267541048830752 -1.6947472385070885 -0.22273417620058691 -0.17431334074896981 -2.1251884621910624 0.083373134153570727 -0.67575478798351674 -0.65856164887045232 -1.581349480962811 -1.4383482024807315 -0.2285522032281011 0.85119648295236749 -0.54766917803966475 -0.27213540095624594 1.4041566606643725;0.40134301625616836 0.41208820826952774 -1.291799162495554 -2.7434408537357458 -1.4113977808113232 6.672247437510106 1.6092011238022916 0.036822704656628513 1.5727598973966581 -1.2728771076970622 -2.3711839421740706 -1.8289388129721169 -2.9719537687259696 0.23638083194464232 0.16334766777206144;-0.10727171650627 0.57635045221042669 1.6956574390714709 -1.5973303241643797 2.1400896417351674 -1.0442748843516301 -1.7227171667154191 -0.97101775433146564 -0.16603116820177471 2.6906384915836723 -1.0158887339347087 -0.11272725710183824 -1.8306334989223756 0.51667072743508313 -2.5064871605474299;-0.10020393716054489 -0.42915410526709258 -0.78861880233012382 1.0498407893460817 -0.70699249864874503 -1.5009462146451973 0.10753951701319295 -0.37684431535781476 -0.43365420354916279 -2.5541606996520714 -0.97968799061299838 -1.1583673203199576 0.076311991172308941 2.404754625431146 1.4154621481842062];

% Layer 3
b3 = 1.5091019269405224;
LW3_2 = [0.18586188063346668 -0.37021905886825673 -0.12173939534674963 -0.5267876483984909 -0.36013460700042632 0.23204921843131127 -1.5884362699293262 0.79898984335603096 0.48203502959613598 0.34913405192628444 0.64454446551610767 0.59455067114690741 -2.0942872409777116 0.11262137960711778 0.42751288053366354];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.00968992248062015;
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