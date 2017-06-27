function [Y,Xf,Af] = PM10Centro1(X,~,~)
%PM10CENTRO1 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:01.
% 
% [Y] = PM10Centro1(X,~,~) takes these arguments:
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
b1 = [-8.7784531630177352;-0.021977641017389048;-1.1665139654371468;-0.76749017026653588;-0.56737724571568082;-1.2139939505889676;-0.43047137087948562;1.2261148527138217;-5.0895050279508327;0.63473791243782385;0.81335761164210729;-1.1373037050412285;-5.4417879173392292];
IW1_1 = [9.3451503366962498 0.27921565144992727 0.029330523142293258 0.85816369030700856 0.79594166285514378 1.040353597409085 -0.98050829316566146;-0.56335081501158768 -2.5293130213690658 -0.16499941942341204 -0.82384184238242397 1.8482491214893224 -0.53806224377672862 -0.16186324383393774;-0.30111810699366287 0.02771270154819638 -0.70736429916878141 -1.0112997997494333 1.0617929886628308 -0.82503798548525564 0.67800459006572389;2.1117293177035474 0.4217476234071752 1.2572322180244007 -2.3825299556349813 -4.8737794336110349 1.1053096784145151 1.9498122856197599;0.16640929119750367 0.2882681789235903 -0.42266440496028801 0.52826705625077308 1.2054596510615565 -3.9157311040377651 0.25810126830486357;0.11591226556362914 -1.5870373938938598 -0.45435617995743349 0.11444603940765599 0.11058659505111512 0.33682122267287495 -0.78354001506892235;2.5749145902531474 0.05025532889653108 -0.09368438641375261 1.4798658769712323 -0.74436501529668331 1.2840863329326386 1.0871926396650884;-1.9815294522210651 -1.2679801145866914 -1.3425791003869973 2.6857327146156833 -6.9397034377361626 -1.0254467099516782 -5.0108787898406799;0.32613424977700234 0.24164479363070829 -3.3026700805915801 0.34805014014184832 2.2793892952401067 2.0107050922939256 -6.4462067516502257;0.16452029199878374 2.3457842177573851 -0.65972501892885127 -0.22750555271721135 -0.2479015366760601 0.25043255903157369 0.38370684061887494;0.91288077869002071 -1.2233358790414537 2.887354284306932 -0.71618634068813658 -3.3245661487684615 -0.35940863981086801 2.0142370389610829;-0.54052728392873539 0.36144750632936107 -1.2203086928433771 -2.2386403266630404 -0.51204142186925572 0.94858359198649933 1.3797339559602078;-7.0499133030906638 -0.19553621397116427 1.6722998963007882 -0.67354696145704673 -0.36035373969397416 -2.6884373506031589 1.1693188085300039];

% Layer 2
b2 = [-2.3368539071522676;4.3457543853506175;3.3731399041426631;-1.3307607211895387;-0.88062415773045633;1.8748704375477088;-0.74483921251164364;0.15406327111619839;1.0037807864615904;2.0664756261945825;-0.59542230886353853;-1.9870465575287912;0.31127157122781646];
LW2_1 = [1.5734260526261226 -0.57303054992648417 -0.73145467955479382 -0.45728676158601567 1.7744084387564867 -1.834461182309715 1.8899751059539656 -0.39045745394662557 1.1793197593443678 -1.6916826092194301 -0.45053960917399527 1.4976052238407336 -0.32673204716831561;-0.038602592567239635 -3.5022838049178651 0.99470130811682933 -0.16997814308733422 -1.3718946229516849 1.7694496123749275 0.17736271212109003 -0.23763629023474719 -1.1904656468603299 1.4881009951016047 0.16341168507854775 -0.53403181929533705 -0.17661602643690472;-2.9767855121051765 0.92135308598734589 -2.3885977505014742 0.069760737329716549 -1.5433353240230507 -0.27989993860452456 -0.82637902185121692 -0.67613301636934109 0.24854237335733548 0.45584832249321428 -4.9204276013575159 0.59278357578945551 0.17572314873777189;-0.26428180092016507 -0.056330625996300843 2.2598159877062587 -0.53380350680432331 -0.96115242340915608 -1.2683371186067298 -0.21248047444442331 -1.354450861839096 -1.6304608520753969 -0.50298799202387467 1.0292268953843697 -0.86710414916892853 -0.76188552644341856;1.3759051501786712 1.1260189817763218 -0.094666921491430536 0.40963623370257907 2.2917852126019844 1.358845591843131 1.8696215019833511 1.2866164966656586 -1.484478862934467 2.8366085511705785 -0.70684495557235749 0.36204751021914194 0.30822439675147212;0.56683525664589018 -0.39623717877430453 -1.0857743144748193 -0.21513028539927434 1.6814406069245984 -3.6061955819324742 1.1389572130313446 -0.09787046341606212 1.6763866379699448 -2.5116489769140586 0.50330946815731614 0.41365274971856347 -0.090086782968437945;-0.51463132570368986 0.34550610532855952 -0.31970386316720112 0.16549109414443661 0.61513016130793063 -0.53416335919688895 0.33462529851279543 -1.2133350531498006 0.25700314656923673 -0.24982961168978293 0.11418928301309514 0.16570957756456176 -0.48214069061576004;1.6129276018097047 0.40592934826696636 -3.8488380071413193 0.49678979888166852 1.3920917772950876 3.3871852893083259 -2.8767458713716474 -1.3222779446775337 -0.030751059509577551 1.0282565972469071 -2.3464721284036707 -0.92976686657236041 0.34769146232710735;2.1976402129415953 1.1199492529528645 -0.91163216464807506 0.45665774820457888 1.0300982967126022 -0.59502888382360375 0.018628946041806149 -0.54073939507093205 0.3930253017305877 0.82689436992683429 0.41876823226137688 -0.08752055025045348 -0.69622450511848699;0.19563365508604191 -1.1140654731214923 -0.98248593011119356 -0.45660876533442168 -0.45250684142624115 -0.95380340068822389 -1.4626619971865209 -1.1294937511784831 -0.57338794703311347 -1.7447283467041494 -0.91592157766642657 0.86618878065089189 0.033502607429319403;-3.505263345340953 0.39547476168275797 0.81211431333145756 -0.44857064816284609 -3.6340052992737499 -0.83610160104111664 0.73995928860851068 1.7501979247715376 -0.39150344004647158 -0.31607947875321979 -0.61179319008038602 -1.6082212535946179 0.11978884721780923;-0.65127192228034758 1.3492034721832471 0.44238524757261999 0.41579987634938886 0.64203707541214516 -0.016584377096072744 1.3505602337701932 -1.3259327618378496 0.628108822916567 1.2315222252701732 0.77661647696621972 -0.69304072907379555 -1.6110789206229663;-0.75069455066436719 -0.43842209344130745 1.1627856424191636 0.32539374960962636 -0.28275462767566023 0.96922999759661199 0.91670188729263891 1.0148341752932821 -0.23832062055522674 -2.2281994157077607 -0.26988908858997673 0.79979191162718433 0.39019009130051352];

% Layer 3
b3 = 0.2101504137735189;
LW3_2 = [0.35714841264368019 -0.094249884423644584 0.30339983382131036 0.19177950564043467 0.079455203330000029 -0.14781535588867797 1.2819790494344605 -0.058274473739806973 -0.2773714122506904 -0.96399107565473197 0.17158866524561958 -1.1281692567480817 -0.1699494650057477];

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
