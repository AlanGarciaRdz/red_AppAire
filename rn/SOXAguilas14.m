function [Y,Xf,Af] = SOXAguilas14(X,~,~)
%SOXAGUILAS14 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:19.
% 
% [Y] = SOXAguilas14(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 13xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.448430493273543;14.4927536231884;11.7647058823529;0.00666000666000666;0.02;35.0877192982456;0.0561797752808989;0.00588581518540318;0.125;95.2380952380952;90.9090909090909];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.7665811148428157;1.5613214054593416;-1.1499962643554595;-1.9910452278807482;1.8512598519300389;-0.59578483625983281;1.873540516034591;-1.3049349453804955;-0.21268708310512083;-1.7271093694346802;1.9693502338767235];
IW1_1 = [0.20686148802810739 -0.71909878142542705 -1.7278817864681333 2.801231590999492 0.68055053218635719 0.5118131859005739 0.21788205176800987 -2.6246870521103243 -0.071984892012578613 0.73801562357929962 -0.53452551787527913 9.3311440066365954 -4.8462935606994622;-2.3079653401561404 0.69579216733400728 -0.47090062404173216 0.25335672157078515 -0.1976558741863495 -0.011248622891359829 -0.20621686133543499 -2.5087341084445494 -0.51218053388560081 -0.016172537108122477 0.021269578074801176 1.4211112691519667 -0.60473225470557312;-5.9418001055796461 -0.95146175318994897 -2.8083241762328557 1.3036881772853421 -0.71011447242724612 0.19479858690742136 0.98436923783693342 -1.4063345856488041 2.2836621006471698 -0.26128907841688009 -0.7226045656918304 -1.0922855441984456 0.62104392581019896;1.598279317828555 -0.25027803020369571 0.41364819266835406 -0.43878379454546956 -0.14474640176176018 -0.1719030484118555 -0.046592015885959626 -2.1193861326047121 -0.14676077879620134 -0.027067900953760528 -0.013000401717544392 0.51989723245321373 -0.028826095589300837;-0.35479139292786566 1.226696804604346 -1.8298703042575255 1.8676392109606823 0.1501804020001484 0.27056442843027279 0.41708008356392179 -1.5296741712091277 0.093132328660675098 0.24430239283398825 -0.4162623956930544 0.28843173000436445 0.25410804356064065;-1.5968466111627564 -1.0157975098941183 1.08533869937085 -2.4521623920936073 -0.38559573059575725 -0.22648358602409643 -0.95544858523018306 -1.6260094543125416 -1.9252316868935195 -0.22378411268278697 -0.36477213342003112 2.1059954260558045 -0.92395084822779661;-4.9092935564606899 -0.1310490419445707 0.72625859225945211 -0.89055701742875859 -0.15642251540318028 0.21040464963176697 0.73535972793172855 1.2110322469827055 0.67223687022340228 -0.22782647692426694 -0.43908189402896525 -0.92451536603920559 -0.31818414934509998;0.49241443961008124 -0.21796455098621015 0.0039496578521794265 -0.29017187700540265 -0.89154405534430547 -0.1535151897037258 0.25067826453015163 -1.9623572430178362 0.26574341757713321 -0.015548407615355314 0.11552688670988275 0.37921905618253704 -0.85612072770086189;-1.3905690868444107 0.24644950122355236 -0.34558571461709908 0.41156281083105323 0.13497895913795124 0.13630022184990606 0.052048841054418184 -0.63309188653454573 0.12571744061784298 0.036861122970909883 0.038528591575423661 -0.5121324082787504 -0.014647888734065487;-0.32851129896908848 0.21021300363792647 0.099014237422611548 0.36781761100772919 0.408890311124461 0.79539244908527995 0.31523736974690708 -0.25266055653164493 -0.43998660723838517 0.12115593452479211 0.61443184217901115 1.3146813646663027 0.51920332298172844;0.26076616368820071 0.81316843621388257 0.80566655373382812 0.40755009959109634 0.77616845283332681 -1.0092754591841862 0.34281042835488867 -1.8812120350869097 -0.26160038091286425 0.022321866664435943 1.0059525111312673 -1.0795390042555435 -0.12840609175574036];

% Layer 2
b2 = [-2.1475604661672505;-1.7427657162334138;1.3728391287183477;-0.23296247954543473;-0.85404626395028915;2.0327523357187971;0.34498847741582805;-0.90651626863282853;-1.2391657259355708;-1.3134579079901822;-1.7165027124347743];
LW2_1 = [-0.26172785221614642 -0.91614599623023074 -1.1728222445042353 0.8384763568756316 -0.24908259774655256 -1.6372362974573214 0.22112032879409732 -0.56999801849227927 1.8106778944584387 1.0125803591667546 -0.070526873065101831;2.5430612376876098 -1.3632983754478021 1.6619864890425251 -1.3008494561500852 0.60601074024184864 0.056779520697326398 -2.9396264183128249 1.3857130307325147 1.3300734940794801 -0.20936740401648429 1.3472606465488532;-0.59295678516143624 0.32277457718120933 0.22761690312143507 0.29171906245344148 0.79329505784082543 0.45764566972996312 -0.42212298067304577 -0.40195244525195412 0.24025531447349877 -0.72519230818229119 1.1811073217943764;1.3988561849409236 2.2995671196352063 -2.6862829358592766 0.61758372267978701 1.4663730314988226 -1.1503768597894564 0.60873616366832217 -0.76501987532531612 0.91399059986979858 -0.42030237884757293 -0.2063026568048974;2.3784527966812283 -0.42205188570631774 1.7871406515056121 1.0710866947050643 0.29926532103533987 0.032907201315061592 -4.2102317138436334 -1.2811745512601245 1.7105201157738978 0.42577370302197171 0.13600032257427755;-2.5037560304040687 2.4379901911139572 -2.0330861962074493 -0.28675977642256267 -1.0667395786983842 -0.089772171276742127 -0.7665150697038472 -1.2948730205686132 -4.7779577870794618 -2.6426647607905505 0.81311050524272055;-0.13568088067195938 -0.17859054779173061 -0.075627998775839256 0.084742900511370484 0.071499858783721865 0.11930765373691474 0.0046787057262512484 -0.28505415076029295 0.29245894079081025 -0.81462787208782217 0.11871455572491496;-1.0532205814082283 0.029177271902491142 2.8479614409673286 -0.50518748807852676 -2.6263671700068585 1.1486255784273558 -0.74740634652193749 0.92129173251348162 -0.80711044081419525 -0.36856876506497671 -0.45051281283545452;-0.77906492349581802 -0.84191221028675511 -0.85548647434849334 1.5845241628882976 -1.9936253649246509 0.13826601524084683 -0.68319560076373997 -1.6591650363786477 0.54007336650357729 -0.28911909570105132 -0.33376333839966932;0.016618018309816761 -0.48964090856452674 1.5441404867411976 -0.78007651714379234 -2.0632482917583745 -0.98925632835059896 -1.5945876783150537 0.86672185385177425 -0.61010640539807703 0.095418227524179972 0.64686562410123782;-1.1874271815238775 0.12350859362177835 -2.2274704575120166 -1.5984169246250342 -2.5840132677148775 0.71098745558151633 -0.78313304385165283 1.3890156317267419 0.61168909183689479 -0.44269666895535476 -2.8293361670684494];

% Layer 3
b3 = -1.5982446592670203;
LW3_2 = [1.5486873778359087 2.8136787355605457 -1.2364643861156606 -0.75592355442341397 -2.9245067388091419 2.7025581564150132 -1.0934500497654847 -0.74902173959714469 -2.7444170154524832 -1.5108321213797897 2.7473603647953597];

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