function [Y,Xf,Af] = PM10Centro2(X,~,~)
%PM10CENTRO2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:01.
% 
% [Y] = PM10Centro2(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.281968137600451;3.74531835205992;0.00773694390715667;45.4545454545455;0.00462534690101758];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.1488083258021984;-0.23124579348249832;4.1725920279542317;3.8497533562896007;-4.0831867756507316;-6.7537873618261051;-1.4944858693695704;3.0536491462076047;-0.31750961065342259;-0.37752355747867439;-0.93183479949600223;-2.3039286614253198;-1.9816680987609505;3.4632296371714095;-2.6061398355859473];
IW1_1 = [-0.010329402633712029 -1.851803641713142 0.25082680409675651 0.85579445787028285 -0.38934122419138656 -0.070663111706462417 -0.27908156119902472;-1.6154025865436883 1.6717379673858443 1.785689955830891 0.50468890330655203 -0.78839000791655733 -1.9904500283970623 -0.54693815349304908;-4.3347893472249224 1.5606619085303171 1.1988701804391466 -0.67944845206686044 0.58290444538241437 -2.0618151560061619 -0.071808578324443817;-0.83852778392453919 2.1795294385945647 -0.47539741284380066 0.81906861043030488 1.3157575752775477 -0.43491710906218467 1.4477253906416168;2.2986280271483297 2.3475536556987668 -0.92967509209894694 0.10715530897293486 0.92323558569240449 -2.1136632908063713 1.2077775168976239;7.0103585450550341 0.59144165463530052 -0.34647049527287588 -0.22644259364362479 0.39904120265205528 0.21652429490535061 0.61607575766376899;1.6473094140256419 0.55821613247593171 -0.90497811793838001 1.619122447230632 -0.058963108045355261 -0.21485590887972508 0.97909961441620408;0.73543565142239897 -0.31644113928201378 -0.7232189988500265 0.17752601611501317 2.4291727438535817 1.938344377816082 -1.3223182636076358;-0.22171073236359853 -2.1486007406215291 0.28135004163643401 0.2573624587962331 -0.54943394879535157 -0.14279553478497811 0.046473162431394661;-0.16963667128551435 -0.20475706850955322 0.30463444527130146 -0.42811974476170334 1.1447957961480968 -1.2383002647254662 0.91933039816732265;-1.7659703136824869 -0.96432763408930644 1.1637162249045716 -0.38829971170232308 0.6981128668599268 0.05762026948905568 -0.22280005463402036;0.20824117010268822 -1.9401485823357743 -1.3173861431978475 1.3093686543798055 -0.36322080751841052 0.94153780440981516 0.65670085576639092;-1.8911037566466034 -1.0469896068520026 1.2651711125158231 -0.76568703367191293 -0.02882610257249768 0.55780671467585285 -0.5175675841951265;5.7294242615322988 0.42241027718769342 -1.6505952921115552 -0.23814215828515697 2.9705507786123597 -1.284432180519643 -0.62060100518037531;-1.091679346014967 2.8653319823698031 -0.94919527894520106 1.5282321353994368 0.26772767276173043 -0.71311866864637086 0.17193531046263519];

% Layer 2
b2 = [3.0949431077761256;0.57247676093813593;-0.97777620998533543;-1.2946289912919655;0.16547811073086469;-1.0261735756563515;-0.27648132113904378;-0.47265871209905785;2.0045506819417636;0.29165205519185333;-0.56698228431870845;-1.6164258994509735;-1.7371065663042269;-2.6322628022978227;3.0697975878730599];
LW2_1 = [1.4187219175000525 -1.2221201216879478 1.4166754084118798 -3.1225771358821537 2.7164590384410769 -4.1946950359671478 1.5407598159636147 -0.77187399674005719 -2.0294218187146496 -0.5858635575403468 2.3174821503686762 0.17798518812183015 -1.9488757052562582 -0.44981031146409906 -1.1319332870937786;0.44304872796262607 -0.49565827663376499 -1.0700948862792576 -0.18156118703036739 0.13609054878007018 1.0985114732214483 -0.60163564171408246 -0.5511336369735248 0.22619209829020182 -0.046746873492887725 -0.59933549351904891 -0.16587150915798504 0.028089897944623569 -0.42978462391046912 -0.26468660051491388;1.6188370896247271 -0.88296950856334466 0.51208065008491699 0.021424520987382206 -0.60557937106804716 0.40313350799001069 -0.46746887232397183 0.20545953173538881 -0.52005943681686206 0.87658251658046482 -0.15802004502299405 -0.90306212030714661 -0.4824061462890139 0.19983862770799432 -0.66044160980172162;0.77559240701386412 -0.19832823905277622 -0.66288951254638395 -0.085983093900845756 0.46708014510069518 0.90920375650406915 0.73970841707752955 0.1727614072679004 -0.82330607467000416 -0.12307336334163226 -2.2793139551815269 -0.72356084159350753 0.38542702933841055 -0.013629317544891485 -0.15594985727099253;0.58780862807767331 0.086018570426956292 -0.63210265214519801 -1.0076926568284192 -0.38380482424769369 0.0066301831352990892 1.3438003012553794 -1.6976399303919236 0.10523011471372734 -1.2888512840569559 0.31405778074618174 1.0722025484263844 -0.45821464229133685 -1.8591673698454423 0.23724378930344919;-0.20022593988907464 0.16042481788854268 -0.87314710384374794 -0.31202817085592971 0.37137167254623366 0.13729895261192746 0.62206518306632774 -0.032050863711976824 0.17658803267936482 0.78042604763550416 1.1733799837456871 -0.18966705486839272 0.45803985129927943 -0.1506006819554189 1.2383941229526989;2.8052355858381892 0.28672627662809824 0.10262289009753589 -0.45572499721774201 1.0154803538325123 0.27095324415264732 2.2153251153947746 0.038179483156808358 -0.42947298192505778 -2.1730748789812186 0.50981395890757752 0.37882598549670021 -0.052566526891372353 -0.70788141614536326 -1.0556582347062908;-0.72856546259422106 0.19459529794005756 -0.76177705260692685 0.20324841177773159 1.0603198216384153 -1.0442117760815397 0.37921146240437803 -0.45466090527298353 -0.62889472260687151 -0.39285412654815099 0.63008504540981036 -1.0375146209565009 -0.74812588780555511 0.80724311934543336 -0.23258662590679519;-0.421907567010396 -0.41921712959905449 -1.0369936658027763 0.10845509641969681 -0.012684085505748184 0.89333527473120178 -0.86439974779879758 0.14253112474372398 0.99393737369456203 0.12380152914421663 1.1670500602713409 -0.42797078855298754 -0.83816384655640086 -0.64596677519630596 0.42659128571752208;-0.81478697504621378 -0.59280455948057253 0.033776228502853445 0.007507061738162818 -0.78979330731098196 0.5146916753801174 -0.21658493016274011 0.11098422790974143 0.35314338581066701 1.2320827751072065 -1.2075948851144016 -0.29997325536929226 0.2885078196850846 -0.46941710827022054 0.39623407688278905;-0.94014142971719861 -0.16613167100780429 0.55787646759516374 0.36468591914908488 -0.20104943335049333 -2.7472766274425484 -0.40092451522769079 -0.84389841882685912 0.82621840597951379 -0.21229164622979232 1.478267962711953 0.2621655207951043 0.81562301406884408 0.42510666202295255 0.027937861996295568;-0.54990452457682171 0.16446799149781013 0.64381117961201551 -0.039564864405828071 0.75227305991438664 -1.3559272265493734 0.65308776128512924 -0.59225998556486681 0.52270177061698198 -0.91606771169872914 0.022919678804454169 0.58144244996125405 0.46956025051213535 1.1927021390257133 -0.1259410806587748;-0.2069823323596589 0.070604221105952589 -0.76510480687773696 -0.39564322159296256 0.89063943765493347 -0.26826753724568925 0.18143139189011823 -0.74629039458833013 0.25717737277994956 0.46540359499187794 -0.020215227538088881 0.41501793525367481 0.16191124350986694 -0.49090876414505336 0.061653151859975018;-1.6259931015584281 0.13439447956336231 0.49396841652039702 0.117089293434725 -2.7179111343123115 1.7728176840857808 0.63776663014001256 0.71078654837502842 1.9006565123112038 0.13136580270021952 -0.37701364827334377 -0.83168257687715441 -0.017604920422005808 0.53990678881178977 1.3505694964071842;0.66456610602986577 0.29937814746041458 0.23947826333364017 -1.6654021826342329 0.35714919121739053 -0.39066587454823748 1.1688690008114999 -0.083578048940827709 0.61240899692396034 -0.72379999983981114 -0.30983982108643005 0.21839794130151091 0.70603372447236867 0.39115753548920129 -0.19450209384020187];

% Layer 3
b3 = -1.3726481945053868;
LW3_2 = [-1.4376262644087729 -0.63575893782094539 0.38171566170619109 -0.96069868981935402 0.12684960002162188 0.17492950360395379 0.18020709147686356 0.89196172979491029 0.95277983740394079 0.65247630261363054 -0.75142040382086683 0.75367429903221983 0.058486368963785333 -1.3169684926536496 0.96928599308206087];

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
