function [Y,Xf,Af] = SOXVallarta20(X,~,~)
%SOXVALLARTA20 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:30:07.
% 
% [Y] = SOXVallarta20(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 10xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.412371134020619;10.4712041884817;0.00782778864970646;0.0208333333333333;24.390243902439;0.02710027100271;0.00630517023959647;90.9090909090909];
x1_step1_ymin = -1;

% Layer 1
b1 = [-3.5397044750941702;-0.36184483144908319;3.7692568464925356;-0.17274909539262839;-1.8809987544371709;3.604304922972787;0.46628777032549046;4.112426883894897;-2.4849454884415745;-4.1195667777194842;0.068507549388871825;-8.0595265457525542];
IW1_1 = [4.4376698177942515 0.017933692030833462 3.9653743791488054 -0.016554367072586909 -0.75593773710545875 -0.76767764292441887 -3.0465518068979427 1.6857930209024543 0.17040412010448741 -3.9831870615042924;1.1229155899448919 1.6159414148162108 -0.51401145346913557 1.2989205998519351 1.0000876009945512 0.33416494247205264 1.6317343813530651 -1.0840932234130345 0.45981359962861784 0.60255393016627479;-5.3532530120876087 -0.10169415506361108 -1.4770698607055286 0.74356776325705976 1.1202196116363754 1.3845268903916814 -0.58227673054169515 4.3130632320520146 -0.27338023457370875 0.17246047577535206;0.63438289641528978 1.7390762331505407 1.0611670218236617 0.7331495193971026 0.749509416228474 0.062250613827152662 -1.1069380292397628 0.21322997885024828 0.061079274008637469 1.1717815608827713;5.1347153328060218 -0.41596365279584818 -1.3523429219951579 0.45952454982560192 -0.32960811700496279 -0.52585487186377378 2.6056260509138811 -3.0407117038861164 -0.19726906754350443 -1.2303267026463516;-1.6757281247590201 0.83357928798428915 0.59423654631382272 0.17077019203323393 0.3207570622656708 0.60597389251714751 2.5786352049964898 1.7474957075172606 0.76818536621678768 -0.051746873533893206;-5.1086103086927128 -0.16009264433241027 2.0831158280617039 -0.22734772013772772 -1.5939453118611764 -0.55124374795094111 -0.7603563450107339 0.83168599723730574 -0.25512270082438443 0.53515376709382678;-3.3496580072117386 -0.069957972538667978 1.0298262340556865 -1.8380265160570393 0.73149683084611117 0.81860940173339991 3.001235135504507 2.481408711516266 -0.38015438890951997 0.65288199465677821;-2.3064244333864758 0.015313744803120689 0.51820234439805335 -0.29154583522036004 0.26232182461258735 -0.059378692927742449 -0.75222835179179559 -0.14385960455034963 -0.079575376285049071 -0.45594544693401945;0.73602897681236068 0.079473069352759856 -1.936910198457479 0.23737398529318321 -0.19523265455057112 0.32419243942391418 -2.8443828921438925 -1.1223740246630027 -0.76076849114863032 3.2106104175795416;2.2925640879462117 -1.0590318548810187 1.8777313493224581 -0.53118405714188111 -0.14096325681016197 -0.66141690818989707 -1.6680183132487512 -1.7469908713328084 -0.86517744963423593 0.35762065728214726;-4.2190482563921146 0.3443971775507777 -1.7455971835196851 -0.54201294795888266 1.0992771058280602 1.0219077136581367 -7.4567257129265307 1.9388677509280321 0.35271943174042275 -0.84071191872979134];

% Layer 2
b2 = [2.0728984187967945;2.2435101459289375;2.7153616487412489;4.1656989425822966;-2.7162232497430807;-0.28843237252478238;-2.1603234690656796;-1.0791357548284579;1.9944402929478819;3.1169173618565909;-1.4191121650783032;2.6245124901536157];
LW2_1 = [-2.0670961703299549 -0.6854942318697107 2.1733577118082326 0.090305143702215596 -1.179942649302874 -1.0579012932690985 4.3681815171646603 0.37792273906387602 -0.37114546167033069 -2.3268796826950284 0.093253892823273454 -2.2154208400222526;-1.103272484243571 -0.37249884420591312 1.9357504824177749 -1.4225029285101545 -0.26021370098226948 0.21312055397654658 -0.28943802181756473 -1.3460002386249803 -0.7684379889305325 -0.33774632026428042 0.086634650040007727 -0.62381813457613289;-0.099368594929300502 0.61210876035042394 -0.44171810340359141 0.2003745731584782 -0.64485047004243168 1.7530304203268026 -0.68905401325870108 0.34897347811900664 0.70269204970819177 0.72951359003551342 1.6151162185960972 0.44623697936251261;-5.4431446420276917 -4.3158167681713753 3.9967872767937362 1.6069591738577187 3.6524902103918464 3.2489308226901761 2.3517226033037604 5.1279440262580591 3.70097841971248 -5.2695178701309624 -1.9397133163418971 -6.9882476697478069;0.58967962245772787 0.044055116797788771 -3.9537613028315093 1.5556899122522849 -1.5257113931963295 1.0597436033445198 -3.0443070142067246 0.0036965757817760906 1.5853913868894973 0.70121316200702155 -3.4070946530845232 -0.081121571508348783;2.3895085928788906 0.0021439567038324392 -2.4425421193730732 -0.093507620957758067 1.1515556237696527 1.5341252692342791 -1.5182201740793957 -0.50919949779306406 0.20443431900485154 2.8330294650804713 -0.18420366755443204 1.6058551995626502;5.3444351335006264 4.2229067321384006 -3.9013617466681998 -1.567650345235976 -3.6421630335436541 -3.2591437742068661 -5.1845075982823907 -4.9888720607140282 1.0016056865427934 5.1488003583113784 1.8368307299066218 6.9378849786771726;0.038465633849897582 0.062405421623986969 -0.39604694945466706 -0.068968911797727739 1.1351643142202543 -0.53580193322692138 0.045482799185579952 0.036375696120796885 0.062155519768337691 -0.23952995779874822 -0.37687394191272822 0.6396693116666492;-0.33004308785986952 1.3961571497431779 0.13562868677357243 -0.11731405545065941 -1.5528053907230941 0.66102800952560226 1.1949595875984498 -0.1910431192091101 -1.8706733528096746 0.39840394476512619 0.42220286405575314 -1.4535495509014429;-0.22892835350170251 -0.74686964546281287 -0.23445937828135247 0.21403105282064339 -2.7818282066638025 2.0521612916678471 -1.4444934025101441 -0.13868883213021146 2.0343031091026522 0.029912600579366885 1.7234773810251569 -2.2684879887145453;-0.048980148018056627 0.13783629121036839 -0.13763223912023817 -0.25135345795186187 0.57159368008079348 -1.4150284919246066 0.19558654398340525 -0.20691624976259271 -0.29207183079106069 -0.51074501388409765 -1.2255040232832781 -0.18557961040219581;-0.28506112777800457 -0.23402669115312716 0.95142698401822878 -0.28422811847132207 1.1368367085850135 -0.073650698264829423 -0.041396425160608055 1.2111060220187797 -0.55921177663415 -0.10960935532144439 -0.0024282076091800969 0.62410521506862426];

% Layer 3
b3 = 1.3852908197405038;
LW3_2 = [-1.8587872407020312 0.061599730477465156 0.36874716738903984 -5.1168352611225334 -0.94628370420423524 -1.6289901107609326 -5.1916571389629462 -1.5896855661345815 -0.6011164488913876 -0.99658983767569065 0.91309272019192678 -2.6634150468345639];

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