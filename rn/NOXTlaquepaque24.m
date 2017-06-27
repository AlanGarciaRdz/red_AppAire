function [Y,Xf,Af] = NOXTlaquepaque24(X,~,~)
%NOXTLAQUEPAQUE24 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:16:24.
% 
% [Y] = NOXTlaquepaque24(X,~,~) takes these arguments:
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
b1 = [0.43905531651576574;5.5942318925699253;2.9118971455198199;1.6611164261217273;-0.93536313961476314;-1.8533695305256004;-2.082488328254219;-1.0742903090495428;-0.61694171539919773;2.1733262126004087;3.1610723455484897;2.8898031707050502;2.8532207530830647];
IW1_1 = [1.0640079706422321 0.20778659093478477 -0.74029070302955091 0.85860822128607228 2.8315394778081346 1.4576480265747247 0.072986386729236033 -1.0291763974420933;-5.631756496731521 0.53345104377075425 -0.036821506944168497 -0.13472537006399932 0.24467966345321193 1.5358937867353564 -0.20225707294105577 -0.84653904414720704;-2.9225449175487204 0.53891045359242307 -0.46705972466172019 0.33019428125501454 -0.16991878788711925 -0.01173231538334088 0.0026619771880298064 -0.43858866521787099;-0.057634431954271877 -1.5072636463799363 -0.53239890923519628 0.63943887529432697 0.33674079646820049 0.22407831987382104 -0.1316685956047339 0.3120422805676793;3.773413688369081 0.47863225488229738 -0.7031481807536033 1.2075306515594053 0.91408190795241784 0.2308204382766891 -0.33727869663193522 0.75209889379521455;0.53951669353336107 0.37646172315935389 0.9942873407533559 0.15351468448557837 -1.055817359715991 -3.0420789522156237 -0.11273778610919628 -1.8927494051804505;-0.41130344837285721 -4.2372490291603455 0.27417307901678295 -1.1036891755264906 -0.028492189470942311 0.044429129292175802 0.14689544666614243 -0.19266316551031057;-1.9248046352662413 1.0991684591327717 1.325196109344686 1.1020361258296665 -0.66822481191896366 -1.4415552580901645 0.12488898330479054 -0.28298023990160698;1.0633160580331908 -0.68057425389356641 1.6184645033968466 -0.96230242174984715 0.6828386208649434 -0.013588290023752309 -0.38312857291021069 -0.56398751884924692;0.19341984577575436 4.5355291739584196 -0.026131799489669108 0.74987152627377107 -0.11862173154734161 -0.26291015169503568 0.016181824036857181 0.014558158406753549;2.4848467544828141 -0.54422241226881163 0.5492143349479619 0.39862733005368584 -1.2834006555891435 1.6466629506914083 -0.17378833264107629 -0.12638617418973838;0.44758268048126437 -1.7255384538048197 -0.24757363703590493 0.58570098884231891 0.039358789078294168 -0.29957219355230924 -0.14931571887340458 0.51036368200197113;0.10442708351311987 0.58173756333729365 -0.65884870909930182 0.14776512618149534 -1.2753231736832291 -0.90616868209942092 0.015300292582954593 1.9549328044722138];

% Layer 2
b2 = [0.76001300603587851;-2.2672516323962677;1.2401136294642261;-2.209525799408381;0.089581706558243129;-0.93925743125511896;-0.10589452578905506;-1.4822471744298076;2.9770175504989855;0.59258747222375208;1.3332598384322236;0.40174224564143457;-2.8293453614406734];
LW2_1 = [-0.040258481047624022 0.095784386787210934 0.47558478295050655 -0.01778052861089055 -0.34991376657366002 -0.1330004150070474 1.7608052335484581 1.7853466751468157 0.46293405578387792 0.1155413384569739 1.4665779681575877 0.63291608555760548 1.2328107242834057;-0.45542085027770918 -0.65163145823194568 0.18212326181730953 2.9460552042749129 -0.037112243900850439 -0.030961787947530375 0.95372088717366832 -0.092662087360798895 0.30146541558898599 0.26660070117822537 0.30992892207458606 -1.1986683397722959 0.55791464475171715;-0.96756946949409439 -0.59916034109719596 0.38442127718107055 -0.4563780957237793 0.69534772996516714 -2.7600039030314547 -0.08952105333892392 1.8442681183971752 1.0435056307935022 -0.49518954737496451 0.53738883196510701 1.3014016030820537 1.2323360783313906;-0.43838015904586963 0.28443349222265363 1.6249689169103918 0.68439584848866486 -0.023737512469278611 0.52500051165459205 -0.26571483697109777 -2.0796946250172779 1.1549275213105561 0.77463025495681326 -0.90721275690662428 -1.4263839543876438 0.96071668261358956;-0.34047331148613474 -0.080238507120596173 -0.26236025275174613 -1.1558755629972857 0.4790538420115652 0.18084027151840928 0.099674138544476237 -0.31097443111748152 -0.17539942859337615 -1.099329197470196 -0.61600494378638093 1.3976525920495153 0.099383979681826454;0.25067779842931803 2.4166020576628453 0.4243222399949349 1.3948741102980098 -2.4860930295322508 -0.27551560110313084 0.31028890817849014 -1.7945414484268765 -1.0206803310919419 0.38979921937579581 -3.2171509497181621 2.0305321252756285 0.83368704815675743;0.12250622039301164 0.35055238059730315 0.082313667393953488 0.55498386330755545 -0.034905598439652033 0.077976137026328857 1.4571383177514423 -0.081582575057391457 0.1406770200833764 1.521306528178096 0.31753970629688633 -0.9183817248522137 0.50338155911065952;0.45875835099574852 0.90476598330297908 0.52099963099044277 1.3237760127938294 -0.97137999192588176 2.497811336566472 -1.7372941389164758 -1.3330707124932173 -0.41208662861379108 -1.4026409857297004 -0.033380015146286961 -2.1350170519009737 -1.2181560540039253;0.92000037159673231 -1.201006325364508 0.14181259423975046 0.28264333966127592 0.01040054329662503 1.0479070986915353 2.8835465773634819 1.3832803268743226 -1.1177522248994198 2.5173861724645823 1.2154137255203976 -1.459224839261599 -0.67966855164375295;-3.4612357897359218 1.8735473285010156 -0.84116883518092422 -2.4378725481117094 3.6088988103810502 -0.86338365766480152 0.79695159805947713 0.5841774154019268 1.6180632220526636 0.40497646274724941 0.29375874979681227 -1.023786396468342 -1.1503956862374227;1.4033384246600626 0.66586477848680126 -0.35724124369992455 -2.6715606671420198 -0.71356634494021576 1.502033561869923 0.4326982026466516 -1.0290137868524594 -0.066231235467448718 -0.39022526062012919 1.8007740052227805 1.2421370272178522 0.74003280963683704;-0.1250991081395855 0.93074953541989081 -1.3730408466608126 -1.109447942254669 0.66410875348790188 0.050796874104147911 0.38278070252129021 -0.12432453031627527 -0.19110695308607822 -0.53225561189294124 -1.3371871290644051 1.6032663073673044 0.24714704935715878;-2.3187930728902568 1.5252238326981384 -0.14298866059084842 -0.24503424563845694 1.4879199140603299 1.3048411898695631 0.2452193164306366 1.1122517788388497 3.7323862535002199 -0.84532969360459553 -1.0269858253835817 -1.9534652045663534 1.8282099261618294];

% Layer 3
b3 = -0.73840090118956947;
LW3_2 = [0.51477201879481682 0.97487786994626291 -0.86476904484707007 0.39753928089800178 -1.2124588062915875 0.49259278407160556 -1.7054695370904638 -1.0155431063275528 0.35801117799153814 0.41372806653805555 0.9410610913620574 0.71671157091150095 0.33545028643418595];

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