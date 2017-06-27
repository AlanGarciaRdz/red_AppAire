function [Y,Xf,Af] = NOXSantaFe4(X,~,~)
%NOXSANTAFE4 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:50.
% 
% [Y] = NOXSantaFe4(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 12xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.172786177105832;4.16666666666667;22.7272727272727;0.00341273633199099;0.00632111251580278;0.294117647058824;5.42005420054201;4.04040404040404;3.03490136570561;3.96825396825397];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.6852443111442348;-1.2548654482874486;-4.5334913828820946;1.1897594407241372;1.2761096624867447;2.2600920580645396;-1.36032778837894;2.1744295137290619;7.1622305911602817;-4.2019846766124642];
IW1_1 = [2.2058609667960574 -0.064895472997910639 -2.4870773195158029 1.5166116763085058 0.29275958127379065 -0.53925114827552123 0.16312905729681787 -0.80479490499602802 -0.13597053023946515 0.56665384360381932 1.2236242383472562 -0.36131735097254836;1.7504657905507326 -2.4287832974337737 -0.41855307431917588 0.16129725487443192 0.54243587426680184 -0.38316301380827111 0.001871177962812649 -0.14662868570250021 -0.34282491811060961 -0.24812854587965899 -0.003813985858481278 0.10380161385950448;3.4657535631818934 -0.59053998642621408 -0.22620858331983307 0.1033283831655834 1.3761026644210388 -1.6323638394148257 0.17060002387766268 -0.93628858734577469 -0.31690309449355275 -0.31103987370993819 1.06281650714133 -0.48582077667045176;-0.41591994437202484 -3.3518346597371775 -0.026042380725012009 0.1102832398782851 -0.051417343727889503 0.17582235608980487 -0.059883217233554692 0.41669238947684267 -0.42534145420134278 -0.70739846151734231 0.43945151706952257 -0.36021248842084325;-0.95976001941161981 -1.1598549059051186 0.13274520814338803 -0.20017765848783431 0.30871357297071661 0.50809069095761439 -0.02289501830767831 -0.0028801182457606073 -0.2805325116519316 1.9943979213080358 -0.75287680184466033 0.68311118754692601;0.49855111937349039 4.9138720877048687 0.11140224196160367 0.19160873395040098 0.58758864509801534 -0.046787584951170136 -0.049364838316983926 -0.28560090218695178 -0.29780137214525071 -0.50115383169250427 0.16245999082718418 -0.49347890963698898;-1.0291373652564972 3.2762408198911532 0.59162499222713505 -0.92270007415314936 0.48899949172332574 0.56199649467573787 0.039362697325338675 -0.051516344164498809 0.67086420742654296 0.23765304931219716 -0.28760790420085991 0.61141422623144281;-0.96058702106555405 1.8760896111410146 2.4681243749471613 0.89717845110384165 1.1452457162246645 -0.6295972717810987 -0.41356774437157817 -0.43267564092712063 -0.57802578986643016 -0.95729742348323488 0.81236570184189061 -0.18622733392143523;0.49361095629905638 -1.9856064039867793 0.42493678850416489 0.24296855447979956 0.20482177168882471 -0.60070521122366349 -0.096210881536710147 0.65562859839116849 0.16842633291100759 5.5155908230968134 0.20709748386330665 0.055252867605040112;0.4041856305868135 -1.7213199239397232 0.15431867489267598 0.24042063875172151 0.36826010019938421 0.29184873328425542 -0.027235968074961949 -1.1074201779207717 -0.75791869211742402 -4.3227432909048984 1.1743129325024211 -0.42830338610384];

% Layer 2
b2 = [-1.4087797697169198;0.38613229430556351;1.5807354602678514;-1.8900887155624173;0.058265171881974609;-0.80345039308372534;0.44232544904611604;2.6161950064681236;-2.1086421185742772;2.283195766310171];
LW2_1 = [-0.34294726280640231 2.2573965680230894 1.0776790030316268 -2.388812631587653 0.030694915456096844 -0.68480646235537745 -0.053293193739832004 1.0621287206197998 0.75872389897281967 -0.12365792978719656;-0.38182126136611677 0.90743297118267074 -1.3025062873361801 1.0997238073993212 1.278418778283791 -0.23594992599394796 -0.72650993342715031 -0.20266441780421576 0.64804260516669276 0.084484041379477501;-0.27523207365409014 0.78687838214523542 0.018284948815167058 0.89416680530262804 -1.0287234963846128 1.145797437016896 -0.4527826978422681 0.66084103154806739 -0.73380989946938069 -0.11465087329720643;0.78832091828161954 0.89654154967872213 2.7975239362743931 -0.1713928824988073 -2.3244443433319755 -1.2950344298996694 1.1866284492318884 0.61531281837422169 1.5512201724227332 -1.4946670243775546;-0.097713945362925186 -0.066770207364296064 -0.31678617661258834 -1.0293149722058357 0.14964090846696518 1.6008102523228447 -0.86957996978025931 0.043719620391561242 1.0829953834827846 -0.39661315858019602;-0.50394272817653896 0.067672433096833587 -0.39822336005463838 1.1757895007196499 0.2747045774806377 0.39166891082108513 -0.58057312850377552 -0.18399492955950927 0.69259800228534896 0.44892066050402402;1.1688458131246671 0.2791771922167921 -3.4924076156341499 0.96462264520741747 -1.1876324415030166 0.13651131964578087 -0.11384054694466983 -0.71210878656612309 -0.6291543030903699 0.82985135245144692;-0.83084795361778352 1.8863891714135448 -0.3399756480725234 -0.31059704443211072 -2.2514122454872365 -0.17066143185324723 -1.6650840449040283 2.1908698179017314 -1.1785160677295339 -1.9559313593815566;0.68515207110823984 -0.45396042689291877 -0.10251111746579791 0.66700491804076767 0.065726074594966058 -1.4409918735846463 1.8042734261965743 -0.48598160989697647 2.6342312664430398 0.62507498641701786;1.8016230615412534 -0.5656808003189292 -0.19918928836749672 -0.041243914559760411 -1.255843735774981 0.83078648256145826 -1.3233988057330466 -0.73996640281309845 -0.3648498212499493 1.10713987217617];

% Layer 3
b3 = -0.97932788791050074;
LW3_2 = [1.6329741642316504 1.2324063712326712 1.1781104908389541 -0.1661721925416425 2.1167988197433454 -1.2380963504924354 1.033840483331854 -0.35476814555723929 1.997265666922398 -0.45913340815487386];

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
