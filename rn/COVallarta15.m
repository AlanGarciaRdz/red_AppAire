function [Y,Xf,Af] = COVallarta15(X,~,~)
%COVALLARTA15 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:22.
% 
% [Y] = COVallarta15(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 15xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.412371134020619;5.12820512820513;24.390243902439;0.02710027100271;0.00630517023959647;0.141843971631206;0.201288244766506;0.281968137600451;0.290275761973875;0.304971027752364;0.100381449508131;0.172786177105832;0.171659085057077];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.0167819335435215;2.6699416550849229;-1.2989551493410108;-1.1106978446564804;2.1239353632444407;-1.7742755410700441;0.026934992609311492;2.4873582523684732;1.3790039056399994;1.1508599941301096;2.4917666948782982;0.48507117582210063];
IW1_1 = [-1.4469817723064371 -0.050183409156908866 0.80305728992097825 0.59302870327701995 -0.60525342701287865 -0.38478386199263115 1.0640423575128268 0.17664272651379867 -1.0807616704949796 -0.78494465700559057 -0.62276563292415166 -0.75145200815664892 -1.2101598837272205 0.14144975159784448 -0.27748843713591859;-2.3508408403502239 0.43400728998660298 0.60168545925280781 0.74743716249324532 -3.9223415883798163 -1.2700716441363302 4.1770950829381528 0.35190450316932681 -0.60817085053100528 0.54836810654317347 -0.1305493543552752 -0.5121054053793157 -0.056127718313732061 -0.49410756777103187 -0.14623827060103572;-0.69623095919770683 -1.0492674686929728 0.85819242221186842 0.92593049002381578 -2.5127036347218312 -0.68635459725730508 0.030083429979773556 0.028939662635213297 0.14614676991063219 -0.092870893788272249 0.6555689539051065 -0.48090811078316076 -0.24095291807038496 -1.0299561611078092 -0.4709735586371554;1.4504060133393004 1.7736741149303592 -1.1265938674470768 0.26959587489256581 -0.44540065485713837 2.9255448227296355 0.66610336220775368 0.26991445734999753 -1.3573507662263156 0.057059123034720383 0.64552037009740382 0.76337515851625215 0.45845008621042449 1.1705929253413447 0.36145430305892434;0.10952793783614446 -4.8550657084300388 -0.38967001127283085 0.31300467163429019 -1.1043170969218312 0.11134019732523093 0.091094960451112011 -0.052748130776298918 0.39275722738428376 0.0083459407581944339 0.42493844190991448 -0.26064006528431133 0.20937754460400598 0.15871067723001725 -0.41286190019011165;2.7700243627527565 -0.31749077094380551 2.0388762966332448 -1.527442637034943 2.3833944999526717 1.5405939222292078 0.30034943690957405 0.34741733722759854 -0.67741927054817075 -0.071219530280394516 0.50709747989302045 -0.35142830829623389 -2.4125542248032716 0.71651234504236572 -0.1315949477810138;1.1925393264739148 0.089626844692593494 -0.017087719060861605 -0.10151778535497878 1.8373504436390335 -0.087466632380060749 0.01832652679852198 0.3224800822285171 0.4389078008569956 -0.43054084165889667 -0.12814666405992295 0.11501450511858509 -0.50711271513369971 0.032187887793467582 -0.061777553901687599;5.1402438778435302 0.069708131742324986 0.47689177980535752 0.39567835969507342 1.5904419923260773 -0.85036644982786536 0.14157414195935483 -0.42869679872845101 -0.55437997993708299 0.13925847640940925 0.68134740338787436 -0.74951653746233926 -0.34231281573504785 -0.46746666913973611 -0.23235856748794426;0.41643323684331457 1.3149458585537332 -1.2220370851155196 -0.26286797450543642 1.3865054818112725 0.37044589036632258 -0.1197348612811836 0.11977478714264816 0.31358616099885922 0.20439138344720639 -0.4210984489775616 0.40405570491573789 0.67411688697356797 0.37737111839424969 0.25799626935734005;-0.089172082356106422 -5.0844251402490688 -0.17958706477692055 0.1995088979725646 -1.5027270354916642 -0.033521092251514964 0.059342312443692508 0.066951422509596265 -0.12054809301402632 -0.058460640644349096 0.83041922753412056 -0.18572696610105499 0.56956148521845951 0.39028845193196793 -1.2655064079783449;0.4994759130183723 0.36845632438055637 1.0652765873447751 -0.37273593651678105 2.0352593275165756 0.011899430068344291 0.15179365918131099 -0.1503464455051105 0.18837969413686745 -0.18599993926109765 -0.61480378257386348 -0.073651988703041876 -1.524051580751145 0.11569776425614277 0.40425849771454536;0.071632365445406826 -2.6086477308433964 -0.5372072185565403 -0.1313137305986122 0.22827777590242943 0.52102992523655656 -0.057370571014159051 0.051646727371770673 0.55955070612071456 0.15121847470548538 1.0582526703091268 0.021457747351193008 0.36316188947240929 0.96296337098476614 -0.361475678242898];

% Layer 2
b2 = [2.4341311023757295;1.5042971999067623;-1.9327006597725154;1.1067275137960728;0.10325504797580992;-0.15508331748861401;-0.66582228303844426;-0.096572087468532838;0.65503066020510614;0.9716892840327841;-0.93767453261813327;-1.619386760465737];
LW2_1 = [0.58969675724881376 0.038128231561484878 1.5822451305824812 -1.0425331743725106 -1.6320946020944165 1.5664432067832685 -1.5566421669170802 -2.0160668798610186 1.3828426334608623 -1.2084343071115531 1.0504220342720056 -0.68764675910596873;-0.67141538414967217 0.10104073479331521 1.0932748438750524 1.5388905182864427 -0.39996786081238223 0.92888114676806477 -0.81363362548271245 -1.292718597442378 -0.028595729534994931 0.79895579073487599 -0.33669082493451913 0.51069880864227601;-0.43683169543454481 -0.29485443376221199 0.34187924830703659 2.421147909694461 -0.38058445897590265 -0.62886360741774761 -1.3312607311018887 -1.074577583752292 -1.8106580298465651 0.046620363962088629 -0.14597331894386006 -0.9439775280279159;-0.34000203308937693 1.8419584450612521 -1.1741979796644479 -0.19058811407279622 -0.31886952886272935 -1.063511876998402 1.218842835526275 -2.2789104322120335 0.031655605167500558 1.0101811308605195 0.63359008061930788 -0.31557988089920624;0.45548236402020775 -0.76011700365848189 2.8048947198360517 1.0437413364507322 -2.879803092847427 -0.58863725308055703 -1.9033142749802865 2.115377273635898 2.7057495398178206 3.3959318190461709 0.97192814609453526 1.0857088304178708;-0.50595526802277346 -1.5792425497511768 0.86171989303608376 0.26033905859559375 0.63745000574449295 0.90220326916561255 -1.0776732390815713 1.1280994588674158 0.091701874352790397 0.11340732073288308 0.60039670738076989 -0.66587898664527889;-0.35663393379400887 3.2505827099567939 -0.12704205686061859 0.21112902742635686 -1.655847735258023 -1.5356100875723928 1.2305729155530474 -0.027449263414876711 1.4194218035229467 -0.58608626933548935 -0.63267616368888591 0.40897218409475394;-0.52595930779193223 -0.49341160818872892 0.26017683221509058 -0.19104903585975658 -0.36013540660470045 0.0053009417259119035 0.82837768801323108 0.5561276867607049 0.40023162421198999 -0.80078695621939655 0.20307295110681045 -0.36714416580361242;-0.02190797178705348 0.52650463221360133 -1.9528311633491124 -0.45605523645633383 -0.75335371159105313 -0.29331209034321243 -1.2025606567933915 0.24665582805794573 -1.2108113778148215 0.90334085190454971 0.39305989570527061 0.099780042757285206;-0.24352684258225826 -1.0794991938641716 -0.63035467858900407 -0.19378307134035322 1.2931184205232469 1.6019281128657545 -0.72359220274590008 1.5765152720667226 1.0316964435653606 -1.0090212506362999 -0.69382226950727 -2.3167248542178398;-0.12150714957674716 1.1971579764629159 1.0185663101717106 0.49131738745275177 0.72576084305002397 -2.1630844188458784 1.0301698335042664 -1.5064592348801749 -0.89882750632516761 -1.0550363298903875 0.90094223975684695 2.521283820229371;-0.053167842903267745 -0.60838914632985663 -0.70073610394780916 -0.12976085704614093 -0.55985154095758349 0.87646126023465076 0.2039179016457649 0.20780448367795482 1.5561179928247499 1.1800841234676529 0.38472936397623636 -0.033244683627179042];

% Layer 3
b3 = -1.1955153399479628;
LW3_2 = [-0.72832298881613844 1.0526677161774969 -0.93662407543403081 0.72239210850471036 -1.0865231817308993 1.045499249086292 0.32646302854782289 0.83028075921435163 1.0369881599973985 1.3677461719908968 1.2903550024328694 -0.64534488318234873];

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
