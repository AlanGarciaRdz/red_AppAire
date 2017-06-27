function [Y,Xf,Af] = PM10Vallarta13(X,~,~)
%PM10VALLARTA13 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:47.
% 
% [Y] = PM10Vallarta13(X,~,~) takes these arguments:
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
b1 = [-0.68782929140965132;1.5055117841872918;0.7273594767166438;-4.203935775029243;-3.6661804911383156;-2.5584052431440258;0.27624419655260479;4.0851011198013838;0.20326064960950929;1.2199876967827969;0.70203977156272734;-2.0746704531311764;1.3131982646790199;-2.7064518890354043;-0.55208052573886968];
IW1_1 = [1.7846407969847908 -0.19660731518448263 -0.34030700160508603 0.83492284406103112 -1.3116782732774623 0.62729508313609894 -0.64690907154016608 0.41999975892892022;-0.32472425422494322 -1.4391896436661371 0.13945499492199789 0.26289038286236854 0.17287017800614729 1.7917706483413325 0.0089478280128048072 0.029516373964015224;0.20521854815534074 2.7319412379985559 -0.22692032610114798 -0.38347966844869186 1.9869352338819763 -0.55730502328356146 -0.020948400864205602 -0.034487832982414729;-0.34113752203610564 0.72515410886732845 0.60331367837233119 0.12797101672241312 -4.4339805391065568 -1.1069876077625513 0.45678148265963492 0.70458165234170989;0.48856152911667383 -0.16508811619426048 -0.2731396250122668 -0.82885757973571716 -0.32550596894534889 -2.6084968039629617 -0.48953090082504874 -0.090800666366614435;2.5148431989050155 -0.98264977394191455 -1.6169677337593595 0.087588378057530267 -0.22422744617650239 -3.0930427420364133 -1.1379641423103946 -1.0553801305029582;-1.6183644647837496 0.55199101085277047 1.2022557428102052 0.54880724684339788 0.2439838650659526 1.553241222071474 0.056908735306362868 -1.505861856768776;0.061621038527877897 -0.36150542394038343 -0.65198690079443533 -0.27985612954795414 1.9037130351381628 3.3866620542324086 0.52308444894234252 -0.05623540012702221;1.2743772408292755 -2.4072827755772206 -0.71600730712519534 -0.25440556146889881 1.7981365562411127 -0.82706707868135942 -0.36881746321829811 -1.1101588636367354;-0.41381678338385519 -0.12492962336001731 0.55571926916903347 -0.01332783219966132 -0.90092670905691241 4.1613080214204237 0.10946183726731437 0.76273208153403815;0.057351167528694014 1.5338395323912275 1.8151530651767283 -1.2024387512843939 -0.9915670817024349 -0.19120754118424593 1.1185394732041307 -0.67157674840620973;2.1715166135246342 0.57808149954935895 -0.27839416399589989 0.46459508937754446 -4.5412485379509206 1.1184648369897352 1.266919507945135 0.89836713187837869;-0.57243335604756662 0.51161443893556413 0.31079761297082509 -1.4863237365185471 -0.32612408108715829 -0.83973690927144362 1.9717425581774453 0.38612796154468521;-1.8357468111820463 0.10525762635771488 -0.24859535156839163 -0.0044180473239388493 -0.38216624234305091 -0.19257843362141203 0.41072596134607392 -1.111838543064138;0.4996211115737923 3.3146111374673901 1.9907469497260137 -0.22742293551574291 1.7077025067410889 1.5988565990590893 -0.76498710794609093 -1.038165620586581];

% Layer 2
b2 = [-2.7438041303341745;-4.1648374590198625;3.5281088096614175;0.71938741852894239;-2.3564737999696308;-1.3387477486916186;10.167903961193186;-2.2219148008603611;2.2130564763084526;-2.6895896031532067;-1.196777731676874;-3.2864129848349899;-5.41281838734779;-2.3286379329617488;-2.2515479560277161];
LW2_1 = [0.052209026353449747 -0.48699702395108468 1.6497466673493786 3.2036996137981184 2.6024758073496339 2.5892532535205834 4.3408304639969337 2.378017281466875 -0.11658101351022107 3.2128899891126812 3.5269225571335348 -1.0235691768624591 -1.6602473600084584 -4.1327733458509019 0.068318790506725069;4.5694069195192686 -0.95742695879550488 -1.4071521654626356 1.0272315053010705 0.41032731379783416 -3.9602696343265129 0.86525631163699412 0.17055772536025507 6.3604408877318832 -1.29681912541318 0.28996271861635531 4.9431464333758965 -0.29407947836318427 5.0537416000161537 3.8288929992551042;-4.0103419518201928 -3.7471059195577636 -1.5919297102554624 0.27615493665661717 -0.66394422641901363 0.91805301361279268 1.5170892211227844 1.400718635650994 1.3012612600333284 1.0971451483435846 -1.0668531513758424 2.0104659573425336 -5.7685428630752584 -1.3707511779348049 2.549340233857651;-3.2843280266253361 1.6586431110260904 1.8630065440478323 0.15355485340147257 2.1112732196551245 -0.18939387325907533 -1.7136065848679898 -1.7432171818646638 -0.98318610941572349 -1.1194494134057147 0.6419814013548828 -0.80254979429344075 -2.3466282200861648 -3.231076810583565 -1.6687986997308875;-5.9170808110957402 -2.1838159834551725 1.251993927297731 2.2765270494649159 0.31932996340042308 -3.0544964095566844 -1.9799793873846774 5.057045253938794 1.8622903293841298 -0.6959773964835948 -1.1894464957028783 -2.2276595921839055 -1.7607388653403191 -6.4408407369217766 -0.47454642754661402;0.81556555165286604 0.17431472402468595 1.345390067635885 0.38628998032673784 -1.2749251804190203 0.056452096687627663 0.69657674514783496 -2.4562498547201308 2.2849863037954559 -1.3695755594495025 -1.0102170999118345 -0.18469015916375681 2.4318568222605825 0.44435987429496537 1.0326780080703613;-0.92085357615958763 3.7856494768234334 1.8918032037134251 3.8924660204976469 2.9552445479048046 2.4304692683594444 1.3401405563378574 5.506814140137406 0.38342909875785641 0.59109493922436274 1.3637433352145609 -6.416841597744793 -2.1711966037827946 2.4778036797252376 0.19475166284500933;-3.5719724018831536 -5.4426944907131984 4.3391730829541517 -3.8234016961040389 -2.5838305306112344 0.76562264948837477 1.9914884578034477 -0.62358421822803256 4.4454978836941077 -3.1426999737218853 0.0074524571654994744 4.244739152271495 2.632412128896406 -7.5640015780716441 8.7453504592116023;4.6432909813238847 -2.2293707152233502 2.6596609380226175 0.65631042401074746 -4.9487407708960216 3.0301502143216399 3.0989874001251652 -2.3267332619952712 5.4448208944192915 -1.4376785734906072 -2.1809547015905184 -0.46639756248457431 -8.8644743126489036 -2.7173598321261854 -1.7839481773342964;4.8345075640153237 -0.71747924431181764 1.84889214632543 -0.16116512418930612 -0.81431009471130078 -2.3719975488249263 0.82382203534415765 2.4153338235974489 2.9544860312376344 -1.9434932864654759 -2.5808136901636298 0.24979730631850366 -0.51272990760680637 -1.7029970160813157 -4.7749310041554418;-1.5055495866869473 0.50866335823622111 -0.48520641770364925 -1.6084459775482389 -0.24562212787453536 0.80996819491892547 1.2473538920843379 1.6078876152229611 -1.9696075184606976 -1.0383652364031599 -0.023887310945457943 1.1226386075860031 -6.2572083563507759 2.0835535097357707 -2.3805917749186696;0.42974468729657944 -5.0596287250182463 -4.0036064857439886 -2.0280438447328861 -0.82675533673177981 0.34454321781093011 2.6392818821506112 -0.67228592303338752 -2.6319956348031335 -0.11588674223072072 3.0379405527568779 0.74440410190376183 -0.66316273119991453 -2.5038044524185321 -1.4641171862415214;1.5632228160313097 -1.991461277587778 1.2099967761815067 -1.8720977318553875 -2.2601558859726651 -1.5794208960338187 -0.14597282880259904 0.33978526612414556 2.1025599876569472 -1.8039460230641873 -0.88201689081474388 1.1342127707220246 1.3050432616273206 -2.9635976951655008 -0.67331221962493693;-0.84151800021948864 -0.084134573957321393 -7.6330657063896785 -1.4247831405656595 1.1746234296939406 0.64063343436589604 -0.5778115306550734 -0.37856164176173923 -1.9343391306205449 -0.095963677630708621 -2.6602869487933045 -0.40921469114516246 0.32328907535724077 -0.5219998701049986 1.8541302352285753;0.14335858184874417 0.90527488490758024 0.89551266281205444 1.1877750385128174 0.083167166674867024 2.1270722805773508 3.4755837795726614 -2.283224659288166 1.6083513386189134 -3.9763580888049943 -1.313630264746289 0.59890834447639352 -1.0677825026443908 0.29144841060449911 -1.3377062697291529];

% Layer 3
b3 = -2.0717978410628661;
LW3_2 = [0.050225133922894932 -1.5880915377417362 0.10722884369042859 -0.096189411777266212 0.10261220938734349 -0.19983674060763668 -0.28586341051530562 0.040100593744862391 0.058806379676686026 0.12122286642807191 -0.10356622710814845 0.060245656737446272 -0.21498462068877619 0.066715561797493189 0.1984877394473881];

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