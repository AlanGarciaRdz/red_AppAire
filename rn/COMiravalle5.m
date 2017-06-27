function [Y,Xf,Af] = COMiravalle5(X,~,~)
%COMIRAVALLE5 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:43.
% 
% [Y] = COMiravalle5(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.304971027752364;15.3846153846154;0.0208986415882968;0.056980056980057;0.0063552589768033;0.141843971631206];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.5479069801475858;-0.83230244276155485;-1.4667614692401445;3.1278159944671158;-0.018289602628429949;-0.96102700333332636;0.084807930487172903;1.8765025269244298;-0.32554210699642522;-2.6653667704206669;6.0608956024414296;1.8368877005604389];
IW1_1 = [0.077572334913471347 -1.6911957779793094 -0.36789226305885897 0.3457696902871808 0.34685226239256672 -1.0572220235102436 0.087671579123469054 0.11032509085821973;0.64734639349600487 -0.35410708173295063 0.84313646538855613 -0.77997352988800372 1.17812626612307 -0.45627812828667941 0.16364956443516715 0.29547004478823874;-0.053059899327285602 -1.140398835997716 -0.72206534928308042 0.89415115722458582 1.5454193547273918 1.2323765634497907 0.1532807326449552 0.78742895563325821;0.72338058620902956 2.7550518370958494 -0.19259277989591175 0.58191964786575057 0.49412708830799423 -2.3398266971237787 0.87347693371178403 -0.053428548176407714;0.16094729574432737 0.3588940021661326 0.12383467344828319 -0.14329667996729784 0.98041151281068917 0.94821951057439624 0.12457398012756295 0.38723256218056717;1.400616194904674 1.4710954895626869 0.58131990496232844 -0.23715384154875083 -0.71615033261992878 0.12001345836074861 -0.072466841761812562 -0.22020577276855827;-0.70455377907094108 1.6595598709221917 -0.10136674588211059 0.17866060270856227 -0.29958313832840761 -0.36904343456826671 -0.090641253106274883 0.099330375147248268;0.26228807612563365 3.14116806472803 -0.59520906854233868 0.70650477206115603 -0.094039477338122873 -1.0918565651480068 0.010678200056670707 -0.046598904129031699;-0.52064998789539108 0.53700286627123761 -0.30742036226211295 0.37368382384313703 -0.4683213903699962 -0.82963504614633488 0.056275192699473599 -0.01259066773697873;-1.4209001509672317 -0.31534600933742762 0.17589158951906669 0.1984652354435997 -0.69280904024914047 1.487158127795513 -0.10989393633547413 0.00057206418686716297;9.6457242471231783 0.22617276633502018 0.36213277767928537 -0.45982710337505595 -0.42294796529136547 0.36600768297524205 0.005889879308679795 -0.061396917320565653;1.167373659663073 0.59988253137366132 -0.52316475357590875 0.17511744109652674 0.46648854314468569 -1.7896874677270578 0.2120193907879156 0.036280648240494942];

% Layer 2
b2 = [1.3594534520101014;-2.3369743504819827;-0.5380440026445823;0.80009906578887813;3.182190815514784;0.85309723953292216;0.28120050138636826;-1.1167316329609684;0.40278905633296092;2.1294422826999146;-0.56642638853318672;0.4221662034721208];
LW2_1 = [-1.4243861255575272 0.15025624087488751 0.062109683016786037 0.82811725576777073 0.45903102438633736 -2.1691229325430088 2.46789679277305 0.28344492112883635 -0.61969603800277817 1.0075644314070999 -1.1367485090113558 -0.11136986369665065;-0.5019902924381654 -1.2032531476476442 1.3403474349894928 1.9149172044067406 -0.64074034073846586 0.33584688713930372 -0.87557793235047265 -0.69435976293141155 -0.51310550158686519 0.10260979618987809 -1.0286899413583064 -2.4047454659268213;1.6543234564319351 0.54085242914837417 -0.10620730453880811 -0.46643494311471223 -0.87744999163372106 0.25859312449291733 -0.48111496880137999 -1.1396334036144584 0.51617538998693457 -1.6150832744064179 0.84122424780311855 -1.6738473395494013;-0.99345073586548838 -0.052120334446919298 0.54723135663026301 -0.60184574599318086 -0.55531392754181641 1.0022514872928605 1.1470339008485786 -1.6881151433444859 -1.2670067034106085 1.3046719110272504 -1.3629738975094574 0.85659572576657672;-0.63994851768826011 -0.31859929198071102 -2.2442661815154472 -2.5973448813575959 1.4554264078456181 2.0739266690466778 -3.9559774740752052 2.1699932210423274 2.0034045839604597 -1.7826840300831179 1.665677116586701 0.43318483502954508;-0.41746392926316617 0.034476003851416137 0.09623375822616001 0.51429390014799226 0.36463289923118614 0.41169032558572638 -0.86572270910647964 -0.92896883378817408 1.3345903687483516 0.20934936507559548 -0.22971473404403148 -0.3468278941177817;-0.31696606637944763 -0.10782567194992623 -0.40051259465675149 0.10225071236892438 1.5463839768013166 -1.5660831103537678 1.4146611630431374 0.93300148856348197 0.21247853290055493 0.69934399317966278 0.43033659256643925 -0.09477786305130706;-2.3166346972996226 -0.12548636330123228 0.39647326752266132 0.25452741231378295 0.34184730457587043 -0.67869467181284093 -0.92229872289734816 1.5857312217588089 0.068094929257361811 0.73416299932605356 -0.75292099736677709 1.6461136148009619;1.5767646294314355 -0.11355701415464953 -0.64505847306517983 -0.75336533103624059 -1.0300794308657271 -1.3623695356817931 -1.5566398857853778 0.74295605875128246 -0.45382040817188396 0.71759516521731859 1.9764440977552877 -0.70386192703935846;0.74290775129796705 0.1380653934047831 -2.6515958729124707 -2.060829888819335 0.79473813016272732 0.27868466348408094 -0.94263482450397129 1.2439651965092313 1.0727539769363845 -1.4434102456513456 2.924141823392862 1.3779808436151129;-0.91545155271962753 0.042897932157378083 0.17301454838424021 0.46915943472948163 0.041718185918888387 0.092075458498995844 -0.45098135512746557 -0.77845962953468073 0.75760744640912114 0.32025832726788755 -0.26393451284891195 -0.15102129442840309;-0.59560034874550916 -0.32745247794507049 -0.056617791497502575 -0.56636806138037199 1.5097428548904754 1.2072006763518579 1.0580561869328566 -1.1060666938593471 1.2107656541150276 -2.4210766430331732 -1.899918804165212 -0.24580763343984202];

% Layer 3
b3 = 0.11817852433775231;
LW3_2 = [0.71948699914827086 2.1424993852521568 1.5566613711238204 0.44793438116814838 -2.2630173061325638 0.5915878081671091 -0.62066980707522956 1.70858357158326 -0.8074995478224064 2.7852620641918326 -1.5014507882860386 -0.86744661364151732];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.448430493273543;
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