function [Y,Xf,Af] = NOXCentro7(X,~,~)
%NOXCENTRO7 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:19.
% 
% [Y] = NOXCentro7(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;3.74531835205992;15.748031496063;0.00773694390715667;0.0203458799593082;0.00627943485086342;0.132450331125828];
x1_step1_ymin = -1;

% Layer 1
b1 = [-3.9525265522599899;0.25678622643823779;3.1208387440448906;-2.3193051452881894;-0.19366013607081523;3.8680742449881991;0.88293430257546368;1.2430694577884889;-0.54954007102166202;-0.069704183675781822;-3.0117997596055774;3.7345262240713155;0.18646248847958552;1.4636896954236716];
IW1_1 = [0.52678059949940126 -1.3474058587607218 -1.8495883823675121 -0.06896369388077872 -0.029991452362817299 -3.1974541101113898 0.20311006109145399 -0.50711891713575774;-0.89043555083622106 -3.5181855795354013 0.17452719638505695 -0.060147213553482293 -0.26590234626022785 -0.070245242575605035 -0.13642302497473643 -0.60347638292027095;-0.57221974492661998 -0.012083714743411507 -0.65686476886089218 1.2964549171625235 0.79431183731331456 2.4937235424992021 -0.066418769181972662 0.57631251918344162;1.7332978637006631 -0.28011593210213759 -0.4215937278392386 0.065614382070112359 0.42897719118726968 -1.578723167111395 0.0298884548883969 -1.1674605945190737;-0.65300908683300052 2.6901549352330383 -0.031427431708347636 0.49667694915768945 0.41479483265631273 -0.24903811526840924 -0.18703761060889412 0.3853057520357589;0.0021678682392332841 4.057945817032186 -0.20860465019197749 0.40058035685630755 0.23511166362285527 0.28533874147612276 -0.18390181144403878 -0.0035349310299284085;0.77513662092089486 0.38468464973054817 -0.71695345982962688 2.7242359587108376 0.056023806617057338 -0.51906974131436634 0.29129576269224472 0.28831713870911685;0.57583451204673564 0.3076107061354188 0.27276859585775137 -0.046968306703674211 0.052162004187290903 0.14757591823875879 0.13800527322120104 0.59524804715369939;-0.51264798478119733 -0.78206506204292392 1.9805968766769357 1.0244211672967503 2.4400518422364939 -0.22644823571780812 0.6823600665423003 -0.2565042653488474;0.81458622223229282 -0.90827635423830222 1.2943140100938642 0.31021453268084676 -0.52595677364121807 -1.1275264139293366 -2.2287962090040909 2.1577843484482404;-1.781291013639319 -1.2767180678507613 0.27809279588638586 -0.92309493370200368 0.40535417808695817 -0.82859627985275819 0.19316992806252398 0.12434889887024572;1.626692013820624 1.6189414103735351 0.36846304213647579 0.005657772761593266 -0.97072901933967992 -0.24643276761342309 0.10695453554353482 0.4932835481423346;-0.45016866841976111 0.82929315273897697 -0.57960332378075163 0.081691106979204661 0.020806699096088579 0.69752440223080414 0.60827446201140523 2.3916196982654179;-0.26346465168447919 -0.09892380410016656 0.59764678452387288 -0.29069242096641928 -1.0603820987997219 1.2192722377738847 0.66283965511345511 0.4768834510234537];

% Layer 2
b2 = [-1.4940224386350003;1.581045382490234;-1.6033118834938707;1.184147197691251;0.32152547719995112;-0.33512725842674507;0.10684850679115609;-1.4046184725017983;0.34269775176894252;-1.1519883265778361;1.6884056205627431;0.13283381356893834;-1.1624246782796372;-1.9260182824723358];
LW2_1 = [1.1313444693580164 0.40066670183966668 -0.39319188195110216 -1.6998665995288387 1.4344015166571387 0.062730537039644416 0.026664053252406748 -2.5570972051335135 -0.32086693254465437 -0.49318077388107451 0.67151218705773585 -0.17989978560288189 0.38121643343392891 -0.038508933824968172;-1.4187988169452732 0.55192731973043552 -0.049944914571430452 0.66049408898945527 -0.63738366500250787 -0.2584656377341279 0.26104049868780327 1.8906310737109919 0.10563940713371614 0.20152160052024159 -0.63010745173753979 -0.19568010482892073 -0.13453953435452876 -0.41535547292967984;0.93695582564281366 -0.5110130305181978 -0.042340117347949791 -1.0417534153450814 0.7249650458735869 -0.89812247286006175 -0.047023779667599484 1.062731717955816 -0.068839984370839991 -0.19631812915789679 -0.50209770095140172 -0.49592587923002474 -0.56516391254998133 -1.3197829290519645;-0.19254683655786259 -0.71122428856414821 -0.22964448007309868 -0.4238594319544538 0.26909183534353237 -1.3417521282259217 0.2816991170018408 -0.48482787559841017 0.42724533060515896 -0.18435235973430561 -0.95132448237185863 -0.94226390750403022 -0.09580279038478838 -0.35211884103262114;-1.0696863480847698 0.92944999206818102 -0.62851710733964405 -1.1046050929429738 0.15719513650387645 0.32237533102181803 0.15823396165262482 0.96191742225774346 -0.61072944631814619 0.36198549043002703 0.98184864997682963 0.41316709936239709 -0.056630592542647962 -0.3973120927185293;1.1803782004208923 -1.7765640986044484 -1.5705221601294237 0.32840310965251257 -0.60260292763074852 -0.49625850338545596 1.6598637520298771 -1.8579473731577463 0.9778519595657067 0.16169337298253372 -1.3947792993093702 0.21832167994235169 0.28210248902788382 -0.76117658621467577;-0.714513310720296 0.18600425020252026 0.16515775352901707 -0.89893671247073215 1.4212679736346525 0.62358055245188526 -0.82833346179649603 -0.8834042416769321 0.16609844966764362 0.50283491271774927 0.069892977373534657 1.7339980146050364 0.10586301673319853 0.70536133680280111;0.49744109960007826 -0.52315525657950568 -0.26713130197400536 0.23651127917939369 -1.6493314171365334 -0.26249691698780331 1.2034331911575855 0.76092415688417137 0.71532421958972647 -0.079566324488783979 0.95857497293114602 0.55027327679563731 -1.3937369344735901 -1.5084928691593005;0.53353881442335205 0.48985315808332419 -0.026784551235335595 0.053353347297907791 0.098530173201239413 0.23639714393126043 0.94428849742923748 -0.036647976419985052 -0.70267321010245443 0.11057270152606116 -0.15291610082139181 -0.51536557849453879 -0.224827099862067 -0.81843523109022631;-1.5766769721419471 0.035911552454733035 -1.1177791743040348 0.95957036203057611 0.37874806208360123 -0.87820303413165446 0.26665871417338871 -0.42421236625330394 -0.28887786138038829 -0.53967106374536189 -0.55541996016007988 0.88823781991931239 0.027311442378839264 -0.15963964730024993;1.8040085094762399 0.12088237117244878 0.52069790741926092 -1.2760136502009038 -0.88186745449762827 0.86686958772534917 0.15863244611765995 1.4226050811526163 0.84321768722574031 0.92454297041543609 -0.98567257210451786 -0.26020317595200859 -0.025964139864946383 -0.78076150952240253;0.10512031957527396 0.89781988106140975 -0.28539628930716487 -0.15282614159865054 -0.052230919933226969 1.1369978909428753 0.06671140196682035 -0.28339536090821771 1.6883061312431551 -0.28704590564470001 -0.98546868956057776 1.0177743460574824 0.2301252979874511 -0.028904393432430564;0.077889867828429799 0.84883214816233987 -0.028870310340376133 0.13505551350092718 -0.13655817785704527 1.2450058045916925 -0.18873294501193488 -0.098308499964570431 0.27799432832233323 -0.10808045004239954 -0.50643561209059873 0.50448813670503045 0.24312932211873234 0.1241394111660801;-1.2796176228546636 -0.44190677436227821 -0.62584067432976065 1.1096234098382667 0.1992796188087281 -0.27904966969146783 0.062975719185734497 -0.68451525239774935 -0.41514598081905479 -0.86480418837525119 1.1646846641943611 1.6336892314479714 -0.11186072457982441 0.022741781422386823];

% Layer 3
b3 = -0.8951007952881741;
LW3_2 = [1.1138854315610529 1.4733297658416338 1.0534911917517777 -1.5866911573492899 -1.4234257972192343 -0.9394988520524129 1.4777663993970132 1.3402302432473703 -0.032259861053086834 0.50637654186499226 -0.89827003505322556 1.5780368370909985 -2.0662273882254838 -1.2368937184909918];

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
