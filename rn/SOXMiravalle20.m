function [Y,Xf,Af] = SOXMiravalle20(X,~,~)
%SOXMIRAVALLE20 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:37.
% 
% [Y] = SOXMiravalle20(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.0208986415882968;90.9090909090909;0.056980056980057;0.0063552589768033;166.666666666667;45.4545454545455;117.647058823529;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [3.200439759899004;1.7446941980423187;-3.4361880974034968;4.0174935109590182;5.8665123681689053;5.1004688486387648;-2.657168897785076;1.2997221974165794;-0.8062022925054404;7.5963151753851292];
IW1_1 = [-0.56272101608713943 0.19995668071609693 0.20170676001535862 -1.0087098350926449 -0.095889542066248362 0.63439610345083186 1.579804121733142 -0.92001569707446784 -0.77206895310716361 2.1947512648187071;-2.9807406631371522 -0.28967630866861566 -0.43409387856645887 0.32356016685882699 0.0049569126107716424 -0.0090844752546565422 -0.047796469417946484 0.77399231526042767 -0.7025030232913726 2.1030708706251975;3.574194456546091 -0.089255834665938144 -1.0627071776908597 0.87224355311316626 -1.7001790946413988 -0.20386062326781748 -0.29849022095400907 0.46471870528207465 -0.12321096324471473 -1.7083841817846688;0.75187358691885842 -3.1861798380825213 1.6326072549864394 1.4093369020018016 -1.4872038488217374 1.4964141482860605 1.5235872902819592 8.5269831980391686 -2.5554470745089279 -6.007016656404276;-1.7633033179885573 7.1181504119693653 0.2620953648162665 -0.92255528016094679 -3.7209133435608015 -0.70364081139204804 1.5424386485529573 2.5867331250763437 2.1403525244348547 1.4800531207049104;-4.9409045953819053 -0.94543227993832291 -1.6087840599849605 1.5328618225097008 0.74072379084148976 0.18409555886030088 2.701593067448893 -2.8054766398201103 1.8095658228117419 6.1483340964911051;-0.79284587360736036 -0.2492115368457431 -0.26283005059931558 0.1001539124446171 -0.14876812327774214 -0.17878597232378218 0.22778377425074706 -1.6495701231837099 -0.19192355306730727 -0.63708683781634279;2.6936541400285994 0.18881842158437512 0.47277028981132702 0.59876480847661029 0.38456268532659205 0.00053118617613196698 -0.14890233025813801 0.46435649925426004 -0.072616439707135522 -0.19604314132192352;-0.041966847517735842 -0.076201744711164379 -0.72132743302524127 0.83250761583319532 -0.66555949601348796 -0.10148188443022585 -0.19074311609897146 0.76708544662452927 -0.39658658530964475 -1.3426884519255096;11.324684510324019 -0.044743188711083522 5.9324083182822456 -3.6930484191480666 7.1920733871133766 1.8685123907455714 0.83489421262173535 -10.493996576932043 5.2967083243941087 2.509478546748853];

% Layer 2
b2 = [-1.3699657489833084;-3.3996804449298961;-6.5453211273942848;6.8513099493614957;-0.44454056369173839;-2.2566949120637489;-1.8560852441222919;-0.1875233534408102;-2.5460808351162645;4.2787781916252632];
LW2_1 = [0.17140001532881594 -0.43612019226371868 -1.1274407954235304 0.53644469967723218 0.034879753290986679 1.2691928763425118 -4.649587320001431 -0.763403675949065 2.199652851174593 1.5775520822058708;-4.7231888069511676 -1.2965058320115457 11.393531632558989 -7.0268618143666517 -6.6976862045444241 3.0739124586183393 3.2432544018226679 3.1045730218238625 -0.68967971301133535 -12.28511850248584;-1.8767684277930341 -3.2732149109020949 -6.9637611498108818 -0.52478737240929585 -0.43480356665398595 1.1114343750515545 1.2667283881839488 -0.70222873002754549 -3.4915085819685627 -1.4136401811859827;1.5021978381361445 2.9964032131110536 6.9453114902858646 0.4871260205201477 0.36741754061589604 -1.1230708348646288 -1.8136103357722027 -0.018746197493843916 3.360365072326204 1.3207900683484406;3.3121720881716401 -2.7626778823144429 5.2184354899204202 -0.42619179431187248 -0.36765756160769592 1.4542563010066363 1.6339254185644787 0.62407000072730545 -2.405821402579325 0.19941243223392691;1.3389044460689361 2.2879475973783037 -0.59534042497725392 0.39477084030976561 0.045843336261055537 -0.039309176851901322 -4.1475048113047386 -0.19823017391458775 0.93771635431682721 0.35528523301018988;0.30541221638436394 -0.092898503499229179 -0.0075075242318650148 0.4709135467546362 0.069629738073266459 0.15837578556022336 -3.4250869124868308 -2.5860419136733377 -0.66505959089734212 0.1974997528330574;-2.4441842513596908 3.2174629964364634 -4.9172024396878875 0.47761059363307462 0.46063178582710612 -1.3847161199296041 -0.81609977002697498 0.54695058777462358 2.5609102464359363 0.078390549007317623;1.3949367127512129 1.8268239578101944 -0.73337354015794454 0.43629137604509832 0.054063793129253662 0.025081644299918125 -4.4621237157443794 -0.71852345647505589 1.0895413949267267 0.53849246881016533;-4.1519524175493032 3.0162713885706931 0.20311891897294954 -0.42995927336794676 -0.16168803348146255 0.90454410187867085 2.188760962186608 6.145363772318241 0.43632895966212104 0.17965886966068417];

% Layer 3
b3 = 0.071056751007414404;
LW3_2 = [-0.12658488419680086 0.95006839755094452 3.3142715361885293 3.357216804224854 2.1963916371082339 -0.94723695571645228 0.071746394205747313 2.2297072751495803 0.87507032345870983 0.071835047020464116];

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