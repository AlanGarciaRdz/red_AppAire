function [Y,Xf,Af] = SOXTlaquepaque21(X,~,~)
%SOXTLAQUEPAQUE21 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:30:01.
% 
% [Y] = SOXTlaquepaque21(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.171659085057077;3.03490136570561;14.7058823529412;0.00462534690101758;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;0.185185185185185;35.0877192982456;117.647058823529;27.7777777777778;5.12820512820513];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.5292788007815921;-2.4261234050042919;-1.6592345598719256;-2.0027901265884798;0.73254395318788224;0.17720547765215416;-0.36098910705432347;-0.63363596629545649;0.66538351623783665;-0.39510663447208882;-1.7497224519201107;-2.6046359684719649;1.6409990177982434];
IW1_1 = [-0.71666572991413469 0.30445195014178333 -0.097586776674480097 -0.83740519975180761 0.38411277535629179 -0.54589288753676757 0.90119601630429413 -0.15498101277471893 0.026424195641599625 -0.79101352895108235 -0.39016959317191169 0.66611568395968779 0.21267569830908387 -0.44831068600389612 0.50801287764978986;2.322558021955186 0.52060749414584018 -0.020629345136417288 -0.57248100082434539 0.84595048972362008 -1.0685866134393622 0.77397213681095123 0.0383935947512066 0.73074250209181058 -0.80916798305102633 0.11273177234609366 0.361580342471718 0.6738920542364949 0.085749858452938491 -0.7117197833080926;0.75820513276588997 1.8232634790473774 0.38658381629018529 0.6682563283885613 0.75997765288066998 -0.17164832012903744 0.37213781153536662 -0.97768000084622497 -0.028242578511678981 0.34435125472922845 -0.21275547877353168 -1.0541365828381806 -0.37255680528313007 0.1398548983040187 -0.44341967736183763;-0.43279770486770641 1.0706590780497893 -1.283924790571686 -0.040608411936713745 -0.31014826760344866 1.2399807279492037 0.67904795671660045 1.4847103306109408 0.97540406396878832 0.042263776160405581 -0.53493886174624294 -1.1598879298825466 -1.3506296625324015 1.5008633285830077 -0.5947796011270895;-3.469061904647595 0.55523297619378231 1.5587735906037641 -1.3457684155594405 0.16177767381489322 0.13268248452776557 -0.38202030518892904 -0.35161044664821839 -0.51974591645402501 -0.42999111791144246 -0.25036826169638521 0.84231758245274513 0.42327235643003358 -1.4903188865546331 0.55983240799624856;-1.1677410363120462 -0.10028294027600229 1.4092138579270264 -0.10788794896208771 -0.22557792167446608 -1.2273168005998709 0.31155589792097588 -0.72329026938617025 0.19368231085962839 0.23811042235004451 0.0012780115965682216 1.2141792071434325 0.35556922765875626 -1.0225838125766988 0.88156767510577028;0.049034043913137836 0.29295961374913532 0.20578742394063598 0.0084267700924311965 0.11866034897590075 -0.2168801896293667 0.026404064364249063 -0.051080474656503193 0.28221570215680569 0.018175941239045996 -0.054225525857469328 -1.346712711751838 -0.10414706904929127 0.39992027217931447 -0.12971158330795557;0.88129498186129041 -0.11722005722744587 -1.6459623013761322 0.13153158906817644 0.78077357881180554 2.4133257653907609 0.12458314874678389 0.45599447465507098 -1.809960896755026 0.14867013675113444 -0.4637483334997779 -0.62689291890260557 0.21833632380632148 -1.8088373971470657 -0.01860713037122394;1.0717633234605575 -0.66530111163753347 -1.5226947017654382 1.0237895660267766 -0.034524742705424917 0.92112011935294114 -1.1431618633207428 -0.13091170655400758 -1.5339631382609666 0.0726642641856865 -0.014759293991386355 -0.5558938152603291 0.22617974611735409 -0.42972791574062996 -0.52358664097137164;-0.40491501277395264 -0.70104352268435077 -0.79568474830984592 -0.69060919599572701 -0.51173631784430862 0.83245104685171767 -1.1564727555091996 0.61112915392475908 1.0219696493443124 1.9901593738857857 -1.1582820363069497 2.1545973422448848 0.76017437875843241 0.80175764013490813 2.0302795066795656;-0.12668867785218829 -0.63736534996512884 0.059367380585905773 -0.24703752975744603 -0.53382373841462327 0.41564863409695024 -0.12600026205629039 0.39671566733563296 -0.21473706693797168 0.12341981199403348 0.10015166444426093 -2.5264638321606112 -0.055347527368289955 0.22348952800173122 0.20838572140980843;0.26279900641828186 0.58730036693374355 -0.73979889468800775 0.41910963290961178 0.79837155451675357 -0.39263120469175328 0.046190849404636407 -0.57996205663436295 0.23770851822182504 -0.42994900143833686 -0.17948737334845516 -1.4339743875787603 0.15897544174830477 -0.10323531956174835 -0.49789950966797053;1.0074701510595441 -1.0710481534967153 0.038065327426427202 0.90952872196452839 0.44342289178368244 -0.44309528379786695 0.20679761229967286 -0.31137843624767797 0.5977516180261826 0.60868286513599446 0.67640974736982451 -0.88185360019790227 -0.15078053819130277 -0.057950418562405681 -0.46248232271493706];

% Layer 2
b2 = [-1.9418212346895625;-2.8650021194276083;1.1451523869324147;1.4927893068653839;-0.6199848135478353;0.74714944399811456;-0.072794584162226839;0.54205895727016662;-0.72484892639323417;-0.98444008559487728;1.1875161467036688;-1.3210694968709951;1.2767123018313307];
LW2_1 = [0.55127372490814708 0.063267149717632268 0.12133962290170433 0.25518379215111608 0.62904708754922245 -0.84898701166522728 0.51128477904820346 -0.17143034550502032 0.58008459768453535 -0.99779264324266015 -1.6230303899161664 -1.3060028260938359 0.37355814039597329;0.63045905598402141 0.78590660098082543 1.7185670171158152 1.7109057691720484 -4.4558595294447692 -1.1501704122342238 -0.75348290482320801 -1.6049312690066395 -0.1037667545353078 1.7959039416698943 0.78770827516535269 -1.2951384432327937 -0.8579562685241211;0.083956880496164329 0.76787640504189714 1.1590617220792814 -0.49042998583553837 0.99786260150950912 0.70985015018808473 -0.072791198392151923 0.60459253540708413 -0.77895410380954089 0.031360043651039941 0.34060471011080506 0.23670342642250972 1.1238832674470305;0.17719364679564623 0.35749609037098729 -0.36885072516337891 0.29629531640065199 0.056465535491533644 -0.28418698217544741 -1.2908408915822411 -0.010347323018226825 0.41648205843706887 -0.63396951121637146 -2.3028371717436515 -1.2692916362426288 0.068096206829623696;0.4807533895892856 -0.71258418455030237 0.78175387666342844 -0.21727773907014072 0.95499357187608414 -0.30290972746172046 -1.1227309519673028 0.2936524257566635 -0.42697890733951693 -0.2130410693168803 -0.44232880576707817 0.31021699513336481 0.37396691714408586;-0.23992623653597359 0.19572251133815396 0.78677569304277839 -0.72275409030779336 0.13106029225082941 -0.16054767245680795 0.38414948884253658 -0.72958322148127419 0.29030180411770351 -1.5156409063910392 -0.19222301680325432 0.11414260943859342 0.34951335020715601;-0.40009431084404007 -0.17795077255128536 -0.42034468482923582 0.034930746998312376 -0.69981472519662691 1.0841484109289823 -0.55912437320665087 0.34200145723256692 0.52157921933832718 0.18589751747495353 0.32426064151362233 0.85845305280430062 -0.62844786585053281;0.5293923643303019 0.047909582033289773 0.42187340343377466 -0.78064678780275365 1.4153030057334086 -0.6237619299054642 0.37107754587108333 -0.024040977784412373 1.146646123313658 0.17000531159763199 0.13629234390295816 -0.12795869884902869 0.12588258210251765;-0.62569534710900032 0.12044140623475173 -0.64468138806069963 0.87089677529174758 -0.41681473355633275 -0.24635781361853046 -0.49194750541197257 0.87375416754320179 -0.59859988850912882 0.45802024014361015 0.63963345717709552 -0.2093189272889503 -0.30072926937471078;-0.3075251016184406 -0.8345820274028648 0.4699079158999761 1.1799541481505702 -1.5225936654952499 0.28477059173781583 -0.76181829704963777 -1.1122553289866175 0.55887252683894639 0.72288831351903782 -0.51309246977430156 -0.22966638567185715 -0.71538954402876231;-0.018840984102484231 0.75304761685374144 1.2639253512004316 0.33519906280998513 1.0999846603423376 0.8845960285229918 -0.3023369176713589 0.54302216549514726 0.74429377626926008 0.14697938403344529 0.18880279686309737 0.46122749088760945 1.1209553512184618;0.087318699270186317 0.58129926228172046 -0.36987204445093824 0.35698659504710728 0.54564557713945683 -0.84802176904961768 0.65600892641683894 0.34166992118985173 0.21713383346490556 0.78187090637426182 0.067578110357918234 -0.066361786612651283 0.15943803845205926;-0.50912724757194339 -0.96538093090074506 -1.9805344827488955 -1.9373328280701647 2.0792621051459355 0.045007920738164717 0.38812535818466143 1.7449375468709294 -1.8087314127935614 -4.2325011570320612 -0.94269656267232582 1.3943202790500873 -1.1698225064307644];

% Layer 3
b3 = -0.92260052483847987;
LW3_2 = [-0.27703648275140236 -2.6694226975366 -0.6311163867992543 0.93726084207424409 0.060843279477236785 -0.57183311045662621 -0.4183396181561691 -1.6872670714025955 -0.31360340268379977 -1.303834351388073 0.60638257319430922 -0.261989233269525 -3.3430275666244298];

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