function [Y,Xf,Af] = NOXLomaDorada12(X,~,~)
%NOXLOMADORADA12 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:24.
% 
% [Y] = NOXLomaDorada12(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;4.5045045045045;14.7058823529412;0.00280033604032484;0.0179856115107914;0.0558659217877095];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.458764772087354;-2.6445754711689187;1.9933693963182484;1.6590062274584538;-0.83562178910815621;-0.28594777295843654;1.7110403937367773;-0.32968839491852969;0.14823478019176209;-0.7785599231775332;-1.665890261312599;-1.6216443927864344;1.6484452461560666;1.9578799533215825;-1.2929893028250048];
IW1_1 = [-0.36963039441718432 -0.73906903922200018 0.40499338618103042 1.0177707470766075 -0.56896367828692695 2.0445991925874356 0.50545737918165334;1.5434298099534056 -1.0403326767200469 0.028168834844914135 0.46337020241953397 0.55002624575816728 1.285429677324357 -0.4767329880649766;-1.885111171141673 1.541379358703868 0.65213174746307057 0.29090727742309797 -0.084339443250858917 -0.38533078530591652 -0.8941138527983612;-2.3947755600108023 0.0068944568283263712 0.25314045184752837 -0.56136980304911022 -0.29278667456629781 1.8780671612727349 1.1183378469533518;2.0881835974989893 -1.8010425630209637 -0.67972425520901014 1.5227094022029537 0.26780313959581448 0.15198257437691082 -0.067669252365788371;-0.62582766423434244 1.0235349142975227 1.5769926191376467 0.32827249078251219 -0.31414194892141162 -0.28710177244966101 -1.2804629359379134;-0.99103825278774316 -0.2077671939630342 -0.76661514748844761 1.0694151289540004 -0.1719736151488975 0.35953427224812939 0.17493087236037491;0.21809124427030047 0.51624908388689539 0.16182116586145026 -0.88932153064756136 0.56302424724896538 -0.3480138213401075 -1.5813069017143759;-2.281919511200543 -3.7346021805776153 0.085170512006237084 -0.88843416833267475 0.47298152650345493 -0.592664067007873 -0.58152315727019721;-2.0430240904344035 0.5110320936277023 -0.87853166871525523 -0.60405226698817804 -0.43414873683735578 -0.22671636136954276 -0.53462749379487551;-2.1563064162899757 1.6068708708122632 -0.25295378859199119 0.87559065611779408 0.9378960797774899 -0.29418949643246328 -0.72522492515826609;-0.37055949084592427 2.1139304269798269 -0.31769934188767851 -0.1516310878745743 -0.23826829102407168 -0.094993565397645641 -1.2730936730864575;0.18247113948066535 -1.5519161371182881 -1.2054952263313781 0.05549624386012153 -0.079406039800642911 1.3531544871614363 -1.0957583420345136;0.91940046561050315 0.92257887075547396 -0.41408311561041372 -0.59030562695481337 0.114683135417087 -0.0049128839815157808 -0.27908183349761001;0.22416351063657586 -1.836824498070917 -2.3718969222023634 -0.19761344670327596 -0.65533741009217572 0.19153790557174022 0.075448486712278121];

% Layer 2
b2 = [-1.8111443227653963;1.0957819827449107;-1.2487060199490081;0.97718200972025659;0.72696728878984485;-1.1743542910319906;0.45533067342175532;-0.83114384655462914;-0.54487175754140948;0.13093488865794403;-0.36845887385721376;-0.42854429546269712;1.1716851243916346;1.3217967473069201;1.8189227633881635];
LW2_1 = [0.47585502661245915 -0.13787966849249453 0.63068697215603131 0.26978781832210669 -0.052013602610415044 0.48406578652233162 0.77618461693133933 -0.62536235206508073 0.18352603030468626 -0.50366966255195589 -0.099032949819502836 -0.10109704452683378 -1.0446808040442088 0.79205792096623684 0.20680668363560786;-0.81594244557346129 0.055664907670013773 0.94795895322309187 -0.65362728766933076 -0.35274470068739711 0.99215923384348059 0.72189574021273639 0.070655154462069464 -0.4456530354022108 -0.74908817414884088 0.031936332890935087 -0.50321610005903517 0.47480385776784051 0.058574788607352581 0.42914840592635567;-0.37304212463226272 -0.41271332393231386 -1.3626948419495331 0.063150377753810924 -0.50298209215941492 -0.2101319825216526 1.0941407420881497 0.25893919397790566 -0.75009803149474719 0.53596458457797591 0.076246900737488035 -0.27286171265323628 -0.34348916176882371 0.36475810919754781 0.80892736553436173;-0.35982259803404409 -0.86105764406382757 -0.38899897916695259 0.63936084432461004 -1.2085118587739723 -0.077134120417772498 -1.3976036180834808 0.81441721047303051 0.60486823293241043 0.091422595467802861 0.52274714858016613 -0.84105489518617216 -0.42457244507810277 -0.45999959269369706 0.061315365484432144;-0.26952361282771453 0.72602570858018356 0.92030768061312385 -0.36019787083850502 0.45940968979437008 -0.11367544053794285 0.34160488845465425 -0.091839772800653946 0.84220908292460617 -0.033611884304647871 -0.25332938030829788 0.61342412716358774 0.43894986818824067 0.44128302421430743 0.59793703808608079;0.79579602901587942 0.48369885929591666 -0.32994561087288599 0.83345418478409772 -1.0899926935609643 1.0390219758240908 -0.74661616859534408 -1.2430423575076466 -1.1076706000233481 -0.84568370930370229 0.38385579369162909 -0.83917542645852861 -0.31449004084504623 -0.17212155912420565 -0.29748984094335057;-0.17252064804674438 -0.59887373942419153 -0.47378633912135604 -0.681210544814282 -0.28087125134713564 0.45366820228934956 0.83895141812918017 0.32339152843176311 0.89226434923363462 -0.77575833162675056 0.4647685306268059 0.91353529728664185 0.42832306507487961 0.26041332728878608 -0.25949249579490724;-0.0056932115076757765 -0.91994067390169465 1.099813377209333 1.0076763790501104 -0.28529630286936875 1.1113625044876092 -0.29636848148428974 0.13959342952061587 -0.57299180097186253 -0.80267834948819161 -0.81460220955004248 -0.84080957847432602 -0.58323799274777866 -0.56549569580457937 0.5991161267177999;0.046964814633103306 -0.2122438158110212 -0.38410836345464267 -0.54004632354329896 -0.92178881682446334 -0.21376928334516024 -0.74547401114657852 -0.33258350481309373 0.99834529909189174 1.1361592720476152 -0.19670630241046189 -1.0523737872177985 0.64345860736299554 0.10714799886935523 0.24687832623086423;1.068695085681693 -0.41241826273817866 0.37074123575727624 -0.37916285517318926 -0.041131543098050623 -0.11866926763729718 0.63564200497162116 -0.049175745602879753 0.19928292183221025 0.39906300895929214 0.50175909273659092 -0.72753974198846427 -0.78968841939225909 -0.53508154611557324 -0.23105390415316063;0.2236168034375528 -0.71489194442454596 1.0903234908297588 -0.11565997469832676 0.94311223643079656 -0.018479242610842193 -0.11785131819293108 0.77330497881651961 0.27195000959016152 -0.62150931104230511 0.43147293932828773 -0.27427086106054549 0.28990631499774405 0.43270935534746086 -0.45325423662219544;0.21229843454832412 -0.8028052744646309 0.54137226397712523 -0.054318652057040458 -0.66192859734843434 -1.3119162119611676 0.9796807122338187 -0.60808386369649514 -0.59635884188018828 -0.83623312089690416 0.22334993189205055 1.8598586346663957 -1.0156323962868008 -0.49622574705678696 -0.49216819596916761;0.9265863886621245 0.4537877154013637 0.25096732210719797 0.74603557264397447 -0.18478894951124919 -0.16601705489488655 -0.14282297763553012 2.0206018628206102 -0.31127120155702803 0.25009714941534561 -0.5203244644288697 -0.49664661583519304 0.93938461101047144 -0.49468022831494118 0.93781459688133451;0.50434043198540901 0.28398588044266182 -0.64015622566602026 0.48542317850943856 0.27070767794194994 0.51983371664986522 0.18135051229530991 0.1065342929186034 0.51477297771082242 -0.21998301150593702 -0.40940831031821223 0.80667372778937885 -0.59098954672680881 -0.1422574442758831 -0.65760270025063072;0.20302955744075335 0.43737634311371854 0.5343448123218244 -0.55931430768554957 0.60786664983793159 0.3206942779472306 1.066424237377736 -0.30589908929403714 -0.46964765158364391 -0.68396681295725203 0.26292381711002466 0.94976521529414193 -0.97582856219237168 0.9065249573116807 -0.18758179447631948];

% Layer 3
b3 = -0.74284337560695679;
LW3_2 = [-1.4301738893015585 -1.5222306121648266 -0.68621272162914271 0.76163102667819749 1.2996636686979537 0.67316305385814612 0.88883166239826317 1.1860758523456774 -0.9930108415750265 1.5294806752155803 -1.0651560590385765 -1.270165582980374 -1.4659833071303121 -1.0920607635579689 2.3269700026602527];

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