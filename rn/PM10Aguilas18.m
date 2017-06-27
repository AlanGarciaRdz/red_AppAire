function [Y,Xf,Af] = PM10Aguilas18(X,~,~)
%PM10AGUILAS18 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:19:51.
% 
% [Y] = PM10Aguilas18(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;5.42005420054201;0.00666000666000666;0.02;35.0877192982456;0.0561797752808989;0.00588581518540318;0.125];
x1_step1_ymin = -1;

% Layer 1
b1 = [-4.6150766652008883;-1.8386978660214541;0.58258735446608811;-0.58330717256784381;0.08277674409730916;-9.0193003607701101;-1.4028693767593783;-6.3798616050118655;0.52028420759239191;0.56075320022686714;1.0316126736205942;-10.390259561670309;0.65305356530813707];
IW1_1 = [-0.37769634229910265 -0.8898526956796099 -0.067023122947150293 -3.606788472686894 -0.10625663813255837 0.14453951583036251 0.10870809034997836 -0.045049996640395579 -0.0014945882909249333;0.66718364071059932 -0.18134310959421937 0.50702272064203446 -0.30668006175096424 -0.052642515988711572 -0.24632841767728691 1.0920298384740521 0.23940945907027034 -0.14015815240153232;0.2297678735014265 0.26517381441474103 0.47282941911532628 -0.39004203501623669 -0.30553404550142993 0.32938300497609974 -1.0957599044719626 0.10145554757186044 -0.019136153855129383;0.090267420009379193 1.1756921050862255 -0.054786921147442325 -1.9730156014116531 0.37369729485405923 0.62726705586552423 -0.51844870442199009 0.03102231990319931 -0.080212627089963587;-0.10276587702441733 -1.0214254510937806 -0.023239277300791603 2.4249210965737222 -1.4697493639864885 -1.0530841886656275 0.2886716443566002 -0.0671027069636254 -0.0048119462924126888;-2.426712968995163 -0.93674350624789082 -0.75519176855817904 -5.6329505074965036 0.25830696728587993 -2.3804142041054046 0.30377680703222121 -0.42636081299863521 0.083097611267817006;-0.61151768588599875 1.2102145637820112 -0.5028271068961585 -1.9655542112263786 1.3478059278584753 0.36739448497384242 -0.47613124781213317 -0.35803084936166074 0.026470630487074775;1.9600669805692166 0.6251665179746525 1.6118560088876595 0.40929810576973008 -2.3733346927915404 -6.2371831993583911 -0.26937809617824932 0.75359151322835805 -0.84049456634604303;0.053138042367646139 1.4701171688257637 -0.0034199884049202125 -0.3039408214413849 -0.11681061128801579 0.10284400691687355 0.021284880908188857 0.089592138212655006 -0.029813381850754422;-0.028414151657800948 1.6479596735015694 0.20374936442198963 0.14002407423467989 0.11994404133217247 0.35640579780742127 -0.010840256779518276 0.051947795490007269 0.13102818171857056;-0.40588899188491068 -0.12663417905662588 -0.054735549545262205 2.1681320779349647 -0.24555604572482911 -0.8673118221127174 -1.1208346312973758 -0.12980869966261799 0.048628266476502618;-5.9569014415188262 1.3332688154584957 0.88620138734820986 1.5509821920785558 -1.2123191527726935 4.0817401559313868 -7.3069769321791522 -1.4968445809287538 -5.8540331445301357;-1.5779160141852322 0.75239731222510664 -0.073053927852416239 1.9804701951284103 0.833851752540128 0.43260331746581904 1.6213364208646026 0.03380622765982607 -0.084896659639135952];

% Layer 2
b2 = [-9.3390394294390457;0.86376734966037727;-4.4755356787119469;-7.0605130526540245;-6.5158362296638463;-6.8261139626383676;-1.3016945682067917;-14.491940026646414;22.061456011126676;0.84103282623055453;-4.8867030869594714;4.1279043513469613;0.29415090287231271];
LW2_1 = [2.98089205928965 -0.40659028295435473 -5.0303631094832184 6.1477626846788915 -0.57697514609858047 -2.3116730014504152 -2.8926656952802356 1.1918781708415458 -2.8732727313724591 1.0619852741032738 5.3536106980835942 -10.649601988066122 -0.80613184536220728;0.37740595196649296 -8.2764811453166622 -0.34015193559001816 -0.91613808447846357 1.8674176452877198 -1.733752903645752 2.654018123570836 -0.025097517768963122 3.2708095664081869 0.34702017577128175 -4.4239231992261194 8.9787166090857191 -6.3777520116733069;-9.5830913581374908 4.6351431266500214 10.095812305412728 -8.0857584739930797 5.860854791879925 8.4271817973265577 1.0837826439212921 1.5849344620332242 -4.7000132455128005 5.8009620931956531 -9.1024047660201539 -11.714778292158019 -4.3108135484822494;-0.75896288050816718 -1.4486972282561028 1.775467969717577 -2.018859675157239 -0.275673658208266 0.10858953275686807 0.41612544220538428 -0.029403761809865758 3.8724694495173049 -2.6367409860645901 -1.0925502967767957 -4.150275326430485 0.46750734941030331;-5.3480935537869847 -13.403478373090014 -8.8858962886044388 -4.4096117117047697 10.404087687614354 2.2766839883223851 6.7226570996742048 1.3904639958495224 0.7499151458168718 3.7487821448121008 -1.8614604843776965 10.598798097286311 -5.6506313478308572;-3.2206261139766204 3.1614213125546438 -0.90776515699087668 2.3503209843545014 -6.0057877180027566 -5.6676454948066004 -8.8036090353923147 -2.2305924022573809 -15.212508770953823 13.970146186205403 5.0894819964705658 -2.5747395766818482 -0.27491529356228184;2.3456800494552952 -5.0813725123095397 9.9073682220427433 -3.7369000424580618 2.4332638762944958 -3.1058223296354561 4.1110733946007141 -4.23300209319628 -6.2092865547900091 -9.9511820438209533 -6.5445274109028855 13.661030015747658 -0.29941668306929048;-3.3101857953814569 15.490955390341064 -9.6903797842462058 3.2551537851445151 3.8450872640829785 0.57118181339741647 2.2409887082489424 -5.4612894055846475 9.0906900375286739 -11.120098977389436 4.1723820962942737 -3.8669428639978221 -9.8059533877791161;16.654035249595157 22.99284460826124 0.83905274008904862 0.3397162647208431 1.1354405251100521 -5.4978766249746656 3.6567244131559176 -1.0684158181614216 0.33740289907769971 -2.6775496913596943 0.93223810038500399 -9.9736275160290777 0.80891918817445663;17.794372002490253 7.0966858124312306 0.17508462203493791 7.566585923229602 -7.9282525254057798 -0.01764738159619661 -8.9528204746520146 -3.1021898635665588 12.882635400600222 -8.7235985893443626 1.336792481806337 -3.8783363629395042 3.6816073525928599;-2.0015019142177675 7.8906006776256392 13.247007299172504 -2.8152635947864151 1.1921531361172191 1.8031580452613645 -3.2207363642428941 -5.9728612846922546 -1.8384216559027677 -3.2513560421901895 -1.9442363218606065 -7.7263873943486603 7.9900331110568574;0.16223096132302856 -0.74425371799872919 -2.4055366713855295 2.9778626551588889 0.22495056770184127 -0.22846025744475312 -1.252184697515293 0.24921547445357595 -4.4964422661721963 2.7813532477998408 1.5636174032175845 3.3888960245264772 -0.49246184631872492;-4.2477009604570179 10.820607946528039 -6.2619955194009931 13.327333606085217 3.6664955961865506 -1.5724836879390314 -2.4130615902315995 -0.30853585336822664 -12.513103429377049 6.1582481096714297 3.7753578925812894 -8.27056528998164 -0.13778220386819007];

% Layer 3
b3 = -0.73228994144284343;
LW3_2 = [-0.099577627195847271 -0.049191145622248286 0.035546495907804003 0.7086461848600043 0.018708389018656034 -0.025759708506657455 -0.031876157919362449 0.19086680408854223 0.06949760256569848 -0.045228083924093027 -0.038687415223507708 0.68611395645975348 0.090258153393077079];

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