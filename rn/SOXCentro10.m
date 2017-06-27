function [Y,Xf,Af] = SOXCentro10(X,~,~)
%SOXCENTRO10 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:28.
% 
% [Y] = SOXCentro10(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 11xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;3.74531835205992;15.748031496063;0.00773694390715667;0.0203458799593082;45.4545454545455;0.00627943485086342;0.132450331125828;27.7777777777778;29.8507462686567];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.5141632371688984;-1.7301252435625116;-2.1946488999091254;3.1650343414478188;1.4860812372076717;1.6747900844979786;-0.16194377790696662;-1.0621489675132616;-3.0015814082823953;-0.44598713209072693;-0.024287584940303367;-2.5677107084541468;-0.35430192687857304;-1.8591201937537509;-2.4325726615524319];
IW1_1 = [-2.1214110213840764 0.83248236795152963 -0.99809328425076616 -1.2590193859678172 0.068178373952038435 -0.17627136885067612 3.5109232384727127 0.040883611479935252 0.028793456989294815 -0.02208229429734801 -1.7198193087959919;0.41725202415904167 0.018965934642203322 0.74862811812062191 0.016886046912972439 0.47860608193256221 -0.26578491326094239 0.5098392833907226 0.43272495233878111 0.67274118814597816 -0.28039943719346472 0.48077734823900176;3.923462597660921 0.10637947898491557 -0.25128469345766297 -0.71756211876908171 -0.67698257904770009 -0.20340701070701822 4.1038120700179403 -0.074806293728834766 0.25412507012161722 -0.060784236022040541 -1.1941614072321161;-3.0755547503602081 0.44382041041013426 -0.8511762253792714 -0.091922754582958885 1.1027668046908352 -0.12101565875402137 0.089988685431354742 0.50290082441238104 0.79509954715225739 -0.42837270250702542 0.33306279293970253;-3.824872176439063 -0.27431528888848344 1.2626543739924625 0.55283480671169971 0.95568035178650446 -1.0146845576668349 -0.19699458465398526 -0.0040483022863849576 -0.16065243330692297 0.50288691244298245 -0.54652184524452352;3.6687461443683631 -0.029727752144955225 0.092074856121121179 0.035894331276026356 0.10492764278079511 0.095356882834720477 -2.6578128314349367 0.034150714591664605 -0.057984006844436595 0.86102485838946463 0.0088093007177233902;5.1100257529772231 0.7845027796832087 -0.11196291108415311 -0.97394674244881985 0.23839829418493769 -0.018285640599215731 0.94118031912420819 1.907519553687534 1.4620648001359864 4.4594272798411394 -3.4703658110104532;-0.95465313975739596 -1.2288968230057544 0.29550235573184613 0.13766563611757285 -1.3381204746889925 2.0362092320825549 -0.036740602456187821 1.8298771804339469 1.3752912074233445 -0.71086343852096234 0.40833487755717585;-1.494547806772911 -0.8894149707519009 0.17841436825894053 0.21747038059809892 -1.1036240678929983 1.5600799393792086 -1.5606760389834999 1.0351119981992052 0.96701808763978625 -1.1963466322093703 0.46588446532423644;-3.7577452589502922 -1.438775200161726 0.0083765527690461694 -0.16625958873293148 -1.2543862732802928 0.61368768660850725 -3.0707697503690534 -1.6695888817591449 -1.047245481588837 0.33096173880006186 1.2642095118922947;-3.178356602585882 0.43142815694315872 -0.058888408762855192 0.11674736033713959 0.41143597790161374 -0.13521777247268885 2.9146752409286911 -0.17933692653145131 0.038206022277679982 -0.037407385700404167 0.5444838475754894;0.078622093320067241 1.0448033364866849 0.2118507449143664 0.026405528369690442 0.62051710301978491 -0.31678111751640914 -0.56708023200623436 0.096445467600379406 -0.32860524919438167 -0.49898564301519716 0.18516723108936989;8.2711251950416695 0.12411384424398389 0.99354326546235761 1.4007232011212445 3.033465906675568 0.61683397675258023 -3.5387967823616888 -0.64228485523787793 -1.0469723460628904 -2.3160904080198899 0.48795147207980277;-0.87727148692693713 2.7470927001852816 0.42517638276368697 0.4912276262174991 -1.0094581124669879 0.54488944104817827 1.0644035087816917 -1.1929583564403312 1.0377151958287427 1.3198042450187391 -0.046932802567417463;-2.2505425188924679 0.88866892491254101 -0.28436068300916778 -0.56535902149343031 0.076207996245833756 -0.14604986853526367 -3.9632700337103306 -0.47324266431055162 -0.19868229096973411 1.8764230669077637 -0.46606587746136263];

% Layer 2
b2 = [-3.2739913231199393;-0.62921260436948334;-1.763582569041487;-0.66650607443376197;-0.26759118137665883;0.85444602101898037;-0.5217978578642033;0.43189817657412022;-0.83048516947351159;0.4488278197569342;1.1430933263871386;-1.1400359063104197;0.84038459165173707;1.6125267448405571;1.8487247031895664];
LW2_1 = [1.8284909702034036 1.5070134446791159 -1.5007313874395476 -0.56625478356093362 -0.79060783784115851 1.3699724531118931 -0.71585769348113437 1.4710975612462815 -2.4574638894023351 0.54369965434308687 -0.57650365851345176 0.56929093129885489 0.030420482700352448 1.0461792654907978 -0.97137998456635832;0.73787799348840821 -1.5373879917890776 -1.1351795976322638 -0.88993209802597206 -2.9099226579814985 0.58031888326255365 0.62611463000194989 0.73136754390231429 -1.3561427947815079 -0.25318098016690505 -1.9621953968835446 -0.37525247550446134 0.57163828961184593 -0.71355826869491912 -1.2711096933890531;-0.3236627299166619 -0.55973153986225765 -0.016070534935059659 -0.3966084694690567 1.0536321230434187 1.4252030804055731 0.9454555262830282 0.094209947403483818 0.38104417041547994 0.70759491517066575 -0.22674900647029655 0.34048244857611176 0.39586370505227375 -0.70488219864931179 0.42489072242301629;2.2092054852303318 0.16588388330678991 -0.88250777069258857 0.51228105986418349 -1.7234490333935666 -3.2024718579748948 -0.34690058037577104 0.08323845128496235 -0.14435153248600657 0.60234155147534219 -0.18640640125610408 0.35012097327274716 -0.24546141186214682 0.31094788917070482 -0.69221995048346052;-1.7967875823349715 1.3090405106186476 0.11890870856634411 0.88347407581694981 -0.52613582653177038 -0.68371719337010151 1.1149456318086299 0.040444929971819782 0.50210793859878911 0.53205039421472577 0.42369031878305019 0.94209275267386972 4.4599252354993553 0.69564004966334458 0.94751968432787159;-0.81562109467265642 -0.070189512111039895 0.29405873067553234 0.87106272507788385 0.51958077836004213 -0.28903499134709287 -0.87475251172632174 0.39291177525869303 -0.22364733423987299 -0.48875557968729122 1.8996643400080504 -0.87674140054417982 0.61270596830578228 0.27011721102347291 0.42246727363421693;-0.59942530578728848 0.46870040648099121 0.060376820321559659 -0.3718688494720247 1.2496641241845479 1.6352923684351446 0.97260216308816538 -0.00079728463852407616 0.54754057009541868 0.6967108779936837 0.085946627828905053 0.17188601101231857 0.48040313573734444 -0.57676167093115449 0.62400259128160007;-3.3232335575717662 -0.26825145266912698 2.1441827584356177 0.0080207421073280188 -1.1904180693033208 0.35157720323153113 0.60232231165731076 -1.6710426369992433 2.4832490578859714 -0.28216908154616899 0.3845076937127912 -1.3689265380830007 0.55242561282781943 -0.40127302775559037 1.4151056489846707;0.82415000056922072 0.9086992744482707 0.51458954957508574 0.90301402995349855 -1.0912538572199453 0.85783155913997078 -1.0802038565654535 0.63989510451609632 -0.49596282231176841 -0.77797525096351983 0.20165342462396485 0.53167929347690945 0.30162116862816374 1.073770503864635 -0.43449873274600637;-0.59348000450657468 -0.86810499416963172 -1.0831785954480566 1.1578487505454642 1.1268518224952362 0.10922925787982783 -2.0202664218123112 1.385520431895447 -0.88558863421590328 -1.0126326243015809 0.093080713663035428 -0.97678730746957632 -2.03670794746141 1.4812411923484541 1.0770416758705506;0.39427812005773027 -0.73808688453301241 -1.0404921441972368 -0.84279752756505544 -0.79437802182254647 0.088689526357404694 2.0017137063677732 -0.12916258851310869 -0.16848705491919042 0.85224578758065106 2.1679162514295727 0.14564931274367043 -0.30662833511024651 -0.062518506779328478 1.0041199838974553;-1.6878318565937847 0.73337630485123262 0.10533883790724076 0.88451639023401429 -0.44808155330631666 0.623189235975949 1.2422730842968615 0.15942017538486061 0.41294684270566306 0.67462447057084129 1.1597240412186809 1.2698342148427477 4.2090521030098484 0.38995245231442055 0.90071606262129855;-0.54967784315114265 0.14733118503729919 -1.8122970505472833 1.0722642870548695 1.1016685364783672 0.97221468487717844 -1.9328714263701943 1.3237742802393218 -0.85884932126909497 -0.91059817208623817 0.094830351716716207 -0.62991798368429786 -2.8379855681532531 1.3149727469630617 1.0138524260120034;-0.25564797791848776 0.44605908193241844 -1.2251659811591973 0.64254464105602904 0.40956784021680359 0.81187430821293383 1.3062089476403012 0.85474365129872087 -0.86986863088174293 -0.12527898616358962 2.1239668638579601 -0.67532240869439453 1.2498597629847226 -0.79986718864851936 0.11439148164414695;-0.33500148003360841 -0.87583148544292988 0.37829158803526447 -0.73541969122771311 -0.23679992982792658 -1.0379730889526777 0.47647700842770613 -1.2149619668499565 1.3717605273085411 0.1261062456103102 0.13549978216946132 0.55052909858960319 -0.7409387674582758 -1.072070618945401 -0.0098487972123597438];

% Layer 3
b3 = -0.4747155609451893;
LW3_2 = [0.23288566218628617 0.24517229600334658 1.3511223095470535 -0.1487044627956049 1.6661140167948996 0.55356729210784095 -1.1790466770231149 -0.17526418565985349 0.37804914543776935 -3.4544337087899679 0.15124315532316651 -1.5353297638748906 3.3787680943767211 -0.39791670071233215 0.38135189880076059];

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