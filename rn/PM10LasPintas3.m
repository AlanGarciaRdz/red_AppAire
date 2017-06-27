function [Y,Xf,Af] = PM10LasPintas3(X,~,~)
%PM10LASPINTAS3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:27.
% 
% [Y] = PM10LasPintas3(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 9xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;5.0251256281407;14.7058823529412;0.0179856115107914;0.00280033604032484;0.0558659217877095;0.00576368876080692;0.00618238021638331];
x1_step1_ymin = -1;

% Layer 1
b1 = [-9.755211889138236;-2.1822580012785791;0.31062053828819164;-0.41830211430344594;-8.2319384408624394;9.1590595299680384;0.24889630980137678;-0.83025820483219859;0.84787368266064467;0.90735987786054939;1.376279318902649;10.410763367472139];
IW1_1 = [9.1927324837435371 0.12161893631444781 -0.52759816428768025 -0.45941053469160603 -0.57664403582887269 0.68982298617483007 -0.70144238275612125 -0.11745319706673625 0.26470651400278383;0.88887870973159189 1.5353754682787621 -0.1876284618278212 -0.5081702249909773 -0.18429610069647917 -0.62913043505978805 0.3826486649665749 0.022694760232820795 -0.083155815370363262;0.004520835857167756 -0.34815631481840909 0.53110753331123994 -0.42926730340894581 0.37778043968837394 1.1830071949248187 0.085913093537609092 0.036477605272667905 0.43644575767973171;0.94066063015407575 0.77112809694682172 0.14458873369972769 0.07894402500331546 -0.21456786906051936 -0.35735495477405466 0.017660235848055077 -0.092806804256033104 0.038033855973980894;6.1844334253721964 2.7889359247205747 5.0506106662211296 -1.5986522275872983 -3.7378935066593484 -2.5754743416612076 -3.295951040969276 0.54914685575375521 -2.122171347655331;0.18560460987953789 0.31958127146435589 -1.1190170430588102 9.6488303151703629 -0.41898379382041601 -1.0782153459222699 -0.27254042915050575 0.019399948380851236 0.5593958775568193;0.40817667774554151 -0.42229734690675363 0.29706888666815029 0.15714605796841491 -0.11510304403636105 0.16204263115173898 -0.11425147936384415 -0.078485481411610353 0.23794512191589823;-5.4328243587933152 -2.5959703166484256 0.42487394035389492 2.4145246889719343 -0.34471260460648839 0.35225284739032892 -0.31052060024465444 0.11096394899895692 0.93344785610558656;0.7591478163833022 -1.5810315648806386 0.55145437187685897 0.15845321641573248 0.27498049276877146 -0.17221975815231719 -0.17261540583518067 -0.052385824387241299 -0.23893322546576587;-0.50502388475464288 -0.14907947320434364 0.99574227119121994 0.91338576568200691 0.75663398635628298 0.74749069339013874 0.75646455183456496 0.077783486352300285 -0.55639317432211044;0.52678716839393414 -1.3004631050773963 -0.0099153482828670883 0.57295425648909748 0.010968783561816247 0.0074601289831699759 -1.5235584695502327 -0.12717098540265839 -1.0146439006406189;0.30115178712409524 0.1699294548948751 10.188151308985878 -0.495508293927718 -0.11571714714844782 -0.58947732653923746 -0.45553973262403707 -0.03838967808617736 0.33768184320706923];

% Layer 2
b2 = [-4.1241395528336158;-1.2565213223367291;-3.9209186481937821;-0.14971013860107979;-2.1377803679523599;-1.9117423253288708;2.8962736975214951;-3.6100096550958742;-1.9510528635097613;-3.234125068876764;-1.9179440264414382;-1.7398819534616823];
LW2_1 = [2.961343846301479 -0.050424649090521079 -1.0848738035875012 -0.099111460512746802 -3.3608891065084112 -2.1537777922597745 1.0805060074348261 0.77817030156974754 5.8641292339405595 -1.199586792037447 -0.40163887241694057 -2.1517222340557707;0.82126182974351303 -0.24529020849105124 -0.21745040249677783 2.1007953905933787 1.2656486188344103 -1.3848300353800687 1.7348044924977528 -1.5787165938924055 -1.2495141544663686 0.13816874804504226 -0.73095870463301638 -1.1020917539833124;-6.3661277672204903 2.0929670325414294 0.82397600948997851 -1.7843617730494807 0.94588342380974655 1.5091115898849694 1.2060035117058654 -0.68843091056065309 -0.59893773020963137 0.26994725769186961 1.4319963423492095 -2.757908037025592;3.7536058473937692 1.0880619805426961 -1.3222241445309635 -0.76348921675597414 -0.2341470859106142 -2.4981870296986823 3.4696046964770439 -5.6545549196062961 -1.5733310027049927 -2.2757313712913132 -0.20271595818972701 -4.5426936361802239;-0.83606567095720086 -2.7104712506649138 1.5487331265422744 3.0316048314376958 -0.037047136178392025 0.097468969624454824 -3.9095137650262703 0.26446626875724077 -1.0411821169849238 -0.93133265573788226 0.40704263205961433 -0.089177587105009268;0.37425984153241604 -1.0130215328103147 0.64755759029574067 2.1024895613571979 -0.079683035737003916 -0.47872490325684225 -1.4696522191682901 0.5053723849133287 1.9049413242658075 -0.86985350726777944 1.0011243256850366 -0.26381217453404149;0.58224457214271597 0.73909848462311278 -1.5276979762984457 -6.5196470859963318 0.059240650682270482 -0.94319498672010815 1.6815940356316372 -3.4274828644204303 -1.1861743522347987 -0.012963577463563677 -1.6620153812357539 -2.7374952664773731;-2.690997333065333 0.41914530083949209 -0.80442682799085119 -0.68401783913943126 0.19428736560301491 -0.26461715509404576 0.53347179101138942 0.025970209014183024 0.50510697237006641 0.52597008599000183 -0.34314545254580497 1.4110939142169019;0.85863021736770018 1.1476442368993618 0.79477831177961011 0.29993409773717977 -0.37495477993840165 1.139371108906541 -0.066596632624290136 0.95913078790638662 1.6754132514840097 0.32992499981369955 2.3936909492390619 -0.3128312733359464;-2.9153966771785877 -1.0290680653507509 -0.20997387253406521 0.26934779967964906 -0.017284035018720827 -0.48515895815616183 -0.096429457493361764 -0.43701846933770538 -1.8870276857395787 -0.22666541441067886 0.91535967608933999 0.53808235551445549;-2.4627644115516532 0.31075135861186709 1.325165479453124 -1.7682470484092536 -2.2111111050293477 -3.5018705951178495 -0.35540945290322096 0.64620836806875404 -1.2087310339212631 -5.0646461813025061 -0.27784068779802995 -4.0063730013031558;-0.675952609486281 -2.2535410517077672 1.478926218658994 3.4425437175679265 0.62155210924772974 -0.36420500959030222 -3.6250121455713722 0.49766155530305195 2.497662889066766 -1.2279216637836112 -1.0512510088399252 -0.16849227633638103];

% Layer 3
b3 = -0.19816094954507391;
LW3_2 = [0.31508737107178936 -0.40224803495726791 -0.2873238810210556 1.4237498760593335 -0.92021362881395719 -1.3432680262493686 -0.049181951886637487 -0.94193359936722287 0.90641822419022666 1.4907803638902535 -0.21091740806123163 1.0014278153838336];

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