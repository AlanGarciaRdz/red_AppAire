function [Y,Xf,Af] = NOXOblatos24(X,~,~)
%NOXOBLATOS24 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:35.
% 
% [Y] = NOXOblatos24(X,~,~) takes these arguments:
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
x1_step1_xoffset = [1;1;0;0;-10;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;4.05679513184584;0.195790504160548;0.00618238021638331;117.647058823529;0.141843971631206];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.1627161621365052;1.6903159252523567;-1.6663021652102612;-0.7666448575599295;1.0443184493916484;0.13300949297711878;0.74213483261388891;-0.53484233529391101;0.075802174337216671;0.52853438164584576;1.6317464677454083;0.13779275138800823;-1.7092703479294766;-1.8397869076755919;-2.0305358466917087];
IW1_1 = [-2.6589624052279075 0.98543912929831556 1.0679849173016609 -1.1159454353590768 1.2631234810673397 -0.22532689821014201 0.32719479556422565 0.59816373599930972;-0.37083160108643737 -0.45022814005875189 -0.64096625950376607 -0.41293207970056672 0.40195593338503877 1.201977778613373 -1.2005666712500758 -0.15025984161037448;-0.0082766685182030925 -1.0932944983754926 -1.1717854669473065 -1.4818366852631288 -0.3526239858179977 -1.0754718220558785 -1.7947583880747628 -1.4385537654267311;-0.14613773978679934 0.090397752729714384 -1.1988984433822667 1.4716440536746653 -0.41719510074779265 0.11815330786768161 -0.77714143550889614 -0.55802947835003014;-0.55255729489845018 1.2346384882841155 0.53408108742421223 1.0128935726714243 -0.1855758018908745 1.3639574028336963 -0.64529663628514577 1.8441674335415656;2.0493146871283865 1.021894586508111 0.72729935289195424 -2.790928702273122 1.2195718456522886 -0.20145870817556497 1.311848482591049 0.60525463162867099;-0.77670681062650926 -0.10972593192500246 0.41861840209952028 0.035835290661050248 -0.36985138393675326 1.6161325887894646 1.010524372654344 -0.27472797423979439;-1.3890483275232215 1.2336376152555246 0.34336998414440967 -1.1251016841635828 -0.85152793272653204 -0.69198632628140966 0.48483966154036445 -0.20896348656270217;0.1113743140382893 3.9839448459374673 0.97807576595125212 1.5463711524604529 -0.84003069201379643 -0.029810299481581516 -0.053385731711065386 0.23995271967191603;1.5157328207355025 0.26093220689418212 0.34365295708000343 0.0061071058595948136 1.0206700292070969 -1.2293532981398196 -0.55013474638744997 0.31151149662536942;1.5953162825614817 -0.97926433045635553 -0.6943787705696024 -1.3823767874512245 -0.085045331988853085 -0.65988516948009024 0.9378516811212505 0.31914109701898863;-0.096842371920921017 3.6908032272788529 0.73975779555862031 -1.5404570190538573 -0.089603761438395532 0.18706891532581654 0.083311850395213105 -0.2294897062200377;-0.85034216358692483 -3.0354088730832878 1.3818255559321702 -0.48329499064295789 0.1395653325372341 0.020301004282852895 -0.5541796133904795 -0.78233258996469413;-1.1735662616543237 0.69366949013472001 1.1553582858415337 0.33545559748540654 -0.34027780495817045 0.40942863923196238 0.78695356561487728 -0.88022930673096167;-1.2755871663501948 -0.23605522323487502 -0.43520303551850709 0.13422135832363993 -1.0237592840242875 -0.68990556831212591 0.2663745329748009 1.0331816313912219];

% Layer 2
b2 = [-1.9789730437968915;-1.4619599300774262;1.0405369607256867;-0.80398828850393256;-0.92350215433199034;0.33413464783742952;0.2879915142666658;0.04879810022263488;0.18384494449308553;-0.44503379916737457;-0.63181349792301789;0.76149355394472407;-1.1906442501764756;-1.3779167717729917;-1.853733020288423];
LW2_1 = [-0.10744328532826271 -0.67289661929529976 0.31705533688549925 -1.2253062909682322 -0.70432719184007597 -0.57765652570574877 0.96796254753924527 -0.065318716764044271 -0.38383682167536864 0.48163263269290824 0.53042651995581713 -1.1151516345235404 0.63100460024829119 0.17348234040961674 -0.7796059411283035;1.3400962357414155 0.35224834785176273 -0.32330993656904417 -0.68256404513683033 0.20982996895081985 -0.81372546578031801 0.0014576622225380004 0.90557034562261396 -0.4586607933618207 0.74852778903085737 -1.2609154593271144 0.68573892161750105 0.86183844783975183 -0.53021370867699635 -0.043035987058649833;-0.095633943219533696 0.35769694529135093 0.64763144390554195 0.27748228006614206 0.55258422108357552 0.49104906758460581 -0.49327228285590535 -0.27896515496809277 -0.31542968516458703 -0.841675733648519 0.31310383116123169 -0.18286178204868003 0.64985435502133515 -0.47197520442624702 0.63277516927969868;0.59796647734787967 -0.6447422243692672 -0.31430972059671081 -0.5020301753783073 0.15837758424056259 -0.073194140358647644 0.10733024561287412 0.88654391968956192 -0.10483358693359192 0.15944155129310955 -0.35703593112127036 0.6342534086420738 0.97843647234826125 -0.94510520946402066 -0.28959847772394526;-0.30859364177788268 -0.41612846564350414 0.25827207877022795 -0.44364198753580825 -1.2901706275437868 -0.18750813450967288 -0.45599595851967889 0.93207151732744153 0.64690752719151812 -0.31628324500418348 -0.43107478051633458 -0.57697071973103242 -0.12733235027493334 0.73087961111002542 0.34355462792783681;-0.09952505916307651 -0.72360829231406787 0.073894210370646238 0.087893266337909032 0.15315606466222223 -0.96588359797624723 -0.69896370151687537 0.14217267140816045 -0.70646354488001861 -0.17677409186759188 0.61608029192843716 -0.76305530420722667 -0.88494369970730291 0.46688793066144196 -0.40708696084206297;0.94403555479341372 0.37483550661645842 0.44940602852956874 -0.66647293084847792 0.7070745609618283 -0.31820017633124331 -0.72947768279483516 1.0089424749031974 0.044376022752331344 0.18101511306716087 0.43015093465599435 0.70660454670854966 0.73775491154266581 0.10941227879730045 -0.60448015203796446;0.7669116774054664 0.066830963179344574 0.43321934033125992 1.567247060813719 0.34568425288071858 0.37486722814172901 -0.13560779127839837 0.1735799164280708 1.0218694940651125 0.9767048175183205 0.51571714902394428 1.3667298897007425 -0.8314559486198605 0.14861859338859146 -0.10683301230764811;0.73266181200152536 -0.2856721396318338 -0.06115092135447453 -0.59138805210885215 -0.17350189606722091 -0.91743288101658671 0.3293759908367333 0.20685664828182093 0.67298290699915964 0.26844326790782919 -0.26525532249453976 -0.49299152797322388 -1.5003307673222481 -0.71418107742073622 -0.22729984837405581;0.025297461364257926 -0.55717432976962455 0.68522004100200573 0.35123719635483458 0.12511028781152334 0.35177027823164614 0.43823887505986742 -0.60435404678307392 -0.1686336170150948 -0.49448769536043596 -0.76871296794397581 0.19455504781196609 -0.043395465145616978 -0.16567078668529228 0.52134844519222168;0.05167209620700261 0.33739705019553101 -0.74393557723609993 0.42693418035196906 -0.90868960152267275 1.0073845778987589 0.13302261800470938 0.16941165670597258 0.9603895941830477 0.45613742121078438 -0.48112915579822874 -1.289501649023169 0.75480334204654098 -0.58996208575736131 0.045116634393668135;-0.39366012298277658 0.098150590687384243 -1.1804312477708407 0.28114074517640536 -0.68237726231050344 1.1221859747233087 -0.56406232709510284 0.068735823689883124 0.64942971320683496 -0.8963196489925781 0.67546604196542581 -0.72973659615382358 0.68084322266988373 0.79225455713904158 -0.29837783458186418;-0.20720544631841001 0.37595818493471161 0.21381355154032144 0.84199209806951503 0.05252243278935316 0.62200966127603219 0.56457772748286328 0.19612189644437097 0.28494349199246782 -0.71890770788531055 0.14771099800360152 0.14005766961497326 0.19281191818956997 0.53939099623775033 0.40227562136229883;-1.7668357058613264 -0.18912463440419136 0.73958604462255972 -0.46995479955892189 0.63645110642277691 0.026865814861213942 0.40152517947195132 -1.1584943473232838 0.86493116399993641 -0.41583146241946461 0.39323674297282807 -0.18792671204412453 -0.85379144023717601 -0.09039582124760101 0.098809964477111559;-0.53254169791294825 0.2200145864682217 0.2735207107900598 -0.11714098647581675 -0.28010272339542625 -0.72916892865192573 -0.20089554859744346 0.47193476720853139 -0.040683130584635373 -0.6935900088815149 -0.019493182466275051 0.7667683546793852 -0.45934174527317873 0.50804165672643342 0.60886686204325757];

% Layer 3
b3 = -0.31082541177693346;
LW3_2 = [1.2548644033400231 1.0893443437246944 0.47309118827263968 -1.0799955722099164 1.0609560669237046 -0.58069064089152367 -1.6153370606760975 1.0632254171701641 0.18848049784843718 0.17942156706752665 -1.0644877000631527 1.1526804908813886 0.069595591618827196 -1.505077830307932 -0.56978905856502671];

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