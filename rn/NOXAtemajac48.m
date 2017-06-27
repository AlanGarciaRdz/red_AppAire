function [Y,Xf,Af] = NOXAtemajac48(X,~,~)
%NOXATEMAJAC48 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:18.
% 
% [Y] = NOXAtemajac48(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;4.04040404040404;16.1290322580645;0.0210748155953635;0.0561797752808989;0.00614628149969269;0.0213447171824973];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.8160441153740543;1.9599561262205727;0.30613552328262261;0.36151663026673758;2.1039868413425791;0.86544970865633297;-0.74156858494119993;0.3895962371563173;0.57112554535630544;-0.42565052502552914;-0.98125878753568552;-1.6906617711337963;2.1661873915757095;2.7549490715410547];
IW1_1 = [0.11492582299074279 2.4885293698757169 -1.7682681299154981 1.3333495603018066 -0.081056261167412741 0.50931187585492221 -0.37470103692679896 0.16788883807064714;-1.6327535553900558 -0.59818547450204673 -0.2233594070971042 0.033878840597102396 0.71760109892783108 1.3284497436346674 0.37303461612860062 0.079840493911303545;-1.0452217838557143 -1.8741054850630703 -1.3282929735351545 0.0029978225523464366 0.80157708080390422 0.81294565621268366 0.38581033216511035 0.072153822287124442;0.12800705923757777 1.283576370119085 2.0577632850566698 -1.3169967427886711 0.78197946844323285 -0.47671070897958562 -0.42985131207272148 -1.6770086831555167;-2.4227944838008222 0.13815485143333411 -0.70987629361836146 0.18148636813668967 0.011297753932016074 1.2769340260266244 0.27132575986338581 -0.90628439753097212;-0.31455935120649159 -0.11497749030948023 -0.75769906049620117 0.25385935284318056 0.1968536370639723 1.3613112534879626 -0.28813312081119702 -0.40324149985129876;0.58404555767178967 -0.084960365319150605 -1.20156799447272 -0.32276277379532897 -0.24033567881734 -0.41034649024094078 -0.49127608618215474 -0.76642229621476243;-0.64213053318967495 -0.069395211136423787 1.9178367377395229 0.50576732327924978 -0.45497367917744974 -0.36491959570570831 0.19552912893147278 -0.074152351917215586;0.54345226600592667 -1.0060826809034116 -1.1397959152724553 0.70697818894882891 0.018365821669164412 -0.39347613137119536 0.23209385093611237 1.2399681513164329;-0.90908695533992745 1.3082091157598834 -1.3595006201152318 0.68575931474780583 0.27381348521469034 0.84047227625196619 0.18283658509199222 0.19066152555085913;-0.36796133070515941 -0.39506410050042273 -1.3437855415595819 0.048856120554567437 -0.15327126209837102 0.096231638952508622 0.017376359966876663 -0.34550369615938414;0.38985654780016249 -0.75604411811316341 0.44640569195263857 0.0008083484756869052 0.98567644664628762 -0.57181339658602348 -0.11522024493336869 -0.35570267978946446;2.2615315770332276 0.048604500693401553 -1.2298843251086502 1.297345052649026 -0.92161188093332391 -0.60616219622891332 0.5506220287040593 -0.1200987958228508;-0.34006276078847547 -1.1867428764792711 0.07119656287859745 1.2288844339245819 0.54024335584207384 2.2907522220234995 -0.077622470229327459 0.47473098395309815];

% Layer 2
b2 = [-1.1771014641776227;1.5268267602467376;1.136027483259177;0.42335189370576898;0.63638898881246553;-0.41644047606987789;-0.5167688942805343;-0.35566708624979393;-0.067146564400408462;0.83069851951754536;-1.4620919611955923;2.3141707079419356;1.7025323166377258;-1.7660840420948347];
LW2_1 = [0.79085459102746947 -0.52166529844158194 0.97209612082725538 -0.055783128410188371 -0.46965019743212244 1.0190092452277746 -0.12970329988927667 -0.71371891590064873 0.167374652739541 0.70959236933539316 -1.3493434766369601 0.31987415568169902 -0.0031427575804137652 -0.12390100593138996;-1.4738316941012048 -0.79425639160955819 0.80151245254296555 -0.69979038054449993 0.99237844866522273 -1.0896463838276167 0.40122820325410918 -0.78891740434395785 -0.1420124938547897 0.49712594718127895 -1.277851347668802 0.12897350485835471 0.2794794784735698 -0.094494713616561893;-0.27597567470484913 0.73897604317699361 -0.040799237326803975 0.62240649863710784 0.80128393951029897 -0.3618973162332117 0.47598865877152291 -0.48861629788808031 0.21356663682857502 -0.30988451193715472 -0.92595940358716522 0.62899570788798476 0.30365446169258842 0.24697490711594519;-0.33603852732091938 0.094456635948043294 -0.6031840976989834 0.79376806578235326 0.28925453058171424 -0.0016284997958670644 -1.0912751013489594 -1.2003043473363488 -0.097674482541443272 0.54708396375952884 -0.53788191246171391 0.71909422426987679 -0.15916551124770889 -0.97504704476436055;-1.4725053772527925 0.62792442959900163 -0.02540782187080242 0.059579005413641473 -0.44490848859524684 0.17795286923512441 -0.0030685783568767007 -0.26656665051809481 -0.65981138611265255 0.61361023797971259 -0.64061816997338072 -0.3720977533841805 0.22393245631398689 0.76087733732229268;0.61053168045096073 -0.51810628556667626 0.15604028796394803 1.2119078659349705 -0.56036269137883299 -0.55022597284906294 0.025037311066767563 -0.037416107492775089 -1.1672154773139036 -0.35619546437500516 -0.88602786380007548 -0.83081590200624256 -0.12414323715604321 0.1066122453257036;0.16165914769460527 1.5434678945941611 0.48315729479469988 -0.26151012599262702 0.052196154738420646 0.060369406297434577 -0.1104511336954436 0.69793007178735444 -0.41624559009813394 0.79994350170551054 -0.75399852016435187 1.3286597261774342 0.75308234679332808 1.4244990917808626;-0.24737412309957629 -0.41092051707442678 -0.14421017091927135 0.27245054285620002 -0.91094158902074818 0.2339341013073615 -0.52496393549335074 0.23511302895354624 0.46866026822899798 0.30093700526081357 0.55992158426990668 0.063826342251862969 -0.7344385642687038 -0.66818149078349931;1.532343571053441 0.12747113950074401 0.60230525157751202 0.34358295375373005 0.4197325053690748 -0.94858149322649732 0.070725544956232511 0.2474937183915962 -0.059669021336746043 0.89976906305582949 -1.1610263170653186 -0.13432888625568123 0.27788858420519108 -0.53107897346550137;0.92890473299391407 0.22728305352999306 -0.13297517825602118 -0.08551991547849444 -0.14409994998325137 -0.95120925514564014 -0.013411176274667685 1.5557932737089943 0.32563514620632289 -0.1853574331680633 0.75693028830595577 -0.56192074878576914 -0.21739112685153825 0.49806151896002809;0.95812206407697031 -1.152591736671845 0.35756154620977976 -0.43747359733424307 0.7758077671961201 -1.1709374084750217 0.44541047502182152 -0.13620749168342372 0.39701853445242963 -0.36750674166200498 0.78852087431946494 -0.067708582248046226 0.33401720864154122 -0.29146664533769812;-0.64335496120429914 2.0751327240221915 -0.46205979929508384 0.072765671739479038 -1.3291703883980828 -1.4088440069318442 0.83896360655878266 -0.02930584748663689 0.053268901161120846 0.56110135539157702 -0.93489191237760061 -0.71873429183328952 -0.30268576560726257 0.50178398982700889;-1.2199182459003861 0.29113371460021847 0.67287901611632295 -0.52168252386075564 -0.38081265674271586 -0.58564554898976329 0.88839147438103794 0.034639795073290972 -0.81943178316320564 0.64895196830475277 -0.74810229019214525 -0.104403539213693 -0.13469338371211648 0.87170383887725267;-0.36471060926101473 -0.46561097440146254 0.32844101494649569 0.085067665641682083 -0.31527085636281332 -0.50639428956665922 0.40168137595654341 -0.60059153182405556 0.23891552305329036 0.12177611976006306 -0.13312570363810727 0.15633281225538381 0.16432928890678383 1.6286614476715608];

% Layer 3
b3 = -0.30869651935982656;
LW3_2 = [-0.63585854645349094 0.91212889434751576 0.86425036387131315 0.58530422443103913 -1.4887381495975225 0.22184475539487605 -0.49128288111969676 -0.15130059131770915 0.63318278294558827 0.86891437675623329 -1.5165692374902429 -3.0460213808403753 2.0239563324025394 0.97974360026255047];

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