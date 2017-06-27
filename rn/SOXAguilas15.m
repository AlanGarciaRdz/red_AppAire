function [Y,Xf,Af] = SOXAguilas15(X,~,~)
%SOXAGUILAS15 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:20.
% 
% [Y] = SOXAguilas15(X,~,~) takes these arguments:
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
b1 = [2.3433442821531663;1.6420964496313071;-1.250708285377176;0.35819278123819465;-1.3379626927248918;-2.3047573957392546;-0.1786614409664849;0.083361472650282278;0.1723153811972461;-2.2434228584991929;0.11701333793360708;-1.5079370745257235;-3.0270889377916981;-2.3872144748573128];
IW1_1 = [-0.38241132916063308 0.094321604973796797 0.093572336915399928 0.11331252922524326 -0.025935061947175923 -0.18439179038409562 -0.36000197641002307 2.2805470459549868 -0.068001801877034196 -0.29402357115083538 0.10923564873774799 0.8290748247076094 -0.54745226071823905;0.34576965238764445 2.9418877077245442 -0.23864025021501803 0.51255163378483137 0.5457312056898882 0.035706270952977334 -0.57147858645699201 -2.3403302102596872 -0.077542281693264076 -0.86079103580897054 0.025338720763470286 -0.51513301465486439 -0.11152970663893658;0.67290497365654156 -0.44091283906770973 0.39992202631065893 0.59324542726848317 0.11402500421435696 1.3228646012675531 0.14613705994639098 -0.011488992338309096 0.24529074062550751 0.43550490300083794 0.64556362217758334 0.36228215747819908 0.80158843506655097;-0.42276390336825287 -1.214767785519183 -0.54967572965987521 -2.4101637443245694 0.8222789897109295 -0.68614662269009885 -0.77008484881265649 0.18596604232252212 0.76174128321439216 0.047015961073497765 -0.7340009357714854 1.1961198048442552 2.4857530149715199;2.0731130972112952 -0.23066404351371128 -0.64660921523457981 -0.86877240371103881 -0.36297133644971841 0.77255961879323209 -0.29534485022170853 -0.34618095338869154 -0.14880246611089512 0.23987908254470519 0.11141758205151606 -1.2107523944618208 1.8177163322253229;1.3237336834838722 -4.0950305012814594 -0.65454880578904928 -1.333370165351712 0.89075347611440125 1.5270094616905185 -0.51038603215175815 2.7036850752900752 1.2610010826209543 -0.30596596776033619 -1.2878350858142564 -2.2458551060205267 1.7401190610486483;0.9481115011186092 2.8795860480259217 -0.59963065918115099 3.0229206827116499 1.2106653676694654 -2.6934382837937094 1.9531870028312648 2.1793616272161542 1.0731938296613659 -0.037738917867310255 -1.4755108470903966 0.93113341712206921 -0.012802508014665887;-2.6492322468366782 0.0090827968648044839 -0.44580225264609386 -0.24229423003227091 -0.22682435332744749 0.63889025240877029 1.0514199173273509 1.166957952780306 1.5234331832438079 -0.19144957364332149 -0.27367794243713001 -1.2563173044919811 0.45514198081362289;2.4012839771089713 -0.79692335879550058 0.69137695407919142 -0.14988599647737905 -0.022192550798404272 0.39444859360677953 -0.93758836801551237 -0.50727150563414281 0.98301047846804235 0.27770615992704417 -0.28912462376160097 -0.74060220140075472 -0.15585513014913777;-2.0880607908586817 -0.18968709570814793 0.0020052318083654541 -1.0363438808947696 -1.0932936077997764 1.587144477919112 0.89684967549517713 -0.11612020657623175 1.9769718834072345 -0.25791481362374052 -0.17885909622798005 -1.5250065679639864 0.31252052604983954;-2.6331148248570653 -1.3793467464401556 -0.79362100573643513 0.55381885949841114 -1.2881433262467321 -0.1233614749487276 0.45006409702889366 -0.9084740966437127 -0.65486308815550365 0.041721548784693363 0.81600768582885197 2.3396163435259725 -1.0450694071643805;-0.71653800214511054 0.38445714780221329 0.52058764879050012 -0.55194560313970364 0.19974480852540472 0.66655875697035361 -0.75237782089680871 -2.1136557610816342 0.628613987339673 -0.98388376003095335 -0.55053938890412712 1.2047438260578625 -0.5168128265697145;-0.52111253736205454 0.0066197637539916615 -0.030253016272473107 0.36727890432560839 -0.076508822019211914 -0.55486578915420692 -0.1951716982101229 -3.1799462930505591 -0.17827640670093198 -0.12669487869518004 0.28022743759601909 1.0088206963525483 -0.62782319204109094;-0.1995294866699662 1.1436210196685055 -2.4530309966564072 1.5619153340694778 0.24171893059636174 -0.14570074231460212 0.32373057422306467 1.039639310899142 2.0042098912188795 0.082802180361343375 -0.27413360901611483 -0.6321823323960285 -0.034191610493302181];

% Layer 2
b2 = [2.123244914373061;1.9972738152830467;1.448399919408125;1.3036120766287675;1.1814604416008958;2.9353639877530786;0.03620644663696667;0.86782466180618922;-0.15045875819356763;-0.19646536996125924;-0.88156290035585216;0.67445727016226198;2.2901255125655067;-1.6101476890396542];
LW2_1 = [-1.4725380301901705 -2.079946951734736 -1.2835318612901219 -0.1607677395175246 -0.26222382923123988 0.033714806082349232 -0.244615333900742 -0.61579250496802718 0.90691882134984159 0.2400244607298275 1.1329444985739474 0.7634854435307894 0.029155646064569801 0.10225704867090135;-1.7212249568529323 -0.35317508645110207 0.47705036763215791 -0.1952969028110621 -0.33978799731288722 -0.30978952661555909 -0.21919717730347524 -0.84888682480378541 1.0108291381928882 0.42357797693011445 1.3680362406530939 0.92004649957821061 -0.11202149929445768 0.18255350601295711;0.28185192503091733 0.1096693257356673 -0.11982023826698485 0.22249010132722569 0.37984028964166006 0.1168572754792323 -0.44636251725595172 0.18290382755592932 -0.41238791134246294 0.40531727732528261 0.10241535151958588 -0.14396235688786177 -0.96899609550998989 -0.90063791674999927;-0.54992931482925933 0.71491877015647121 -0.93114091740288885 -0.15432365391086977 0.25845605559417367 -0.43950964947281168 -0.30841309293184993 0.17951429131867752 0.57732509977094892 0.46521234056013799 -0.043253203778349403 0.0016043711241061458 0.40557550009363386 0.30528507584064246;1.2652729691326965 0.1924378693555702 -0.6757711967820007 0.70159403294363487 -2.2195111587082463 -1.295986824458065 0.093263302659658959 0.81210153690855857 -1.0408646376681541 2.3335612287194398 -0.11571455026691235 -1.0179302199493718 -1.78014570663744 -2.8381134853322965;-0.72351101747949376 2.672773127149727 -1.8098739806211721 -1.765418902481523 1.7380356981226373 0.34099818198777943 -4.2278933946045134 2.2643180168553507 -2.237394183573473 -0.36017733435633642 -3.3751889501142083 1.7601785692071485 -1.5090540666465979 -1.3719636043668706;0.21865654208007557 0.031738488625266098 0.014212656209631004 -0.06046811711364343 1.1891436352637526 -0.39401701851743759 0.19284953113488604 1.041335744366978 0.45731076740405374 -0.55731548518556062 -0.15423008062825344 -0.47023277789346457 -1.3142883756609793 1.021662503973606;-0.6563430421194274 -0.35522393224499016 -0.28934346915347664 1.002654790823285 -0.79400565465244322 -0.67868599464450274 -0.76684368186367291 0.60980491410450099 -0.26362808275097838 0.13250115723809724 -1.0067233591549536 0.19327923252225349 0.72251755605396994 0.098066466525846177;-1.8265587914619008 -0.030327615109506316 -0.45443523548126891 -0.49697368653987839 0.2247510675903697 -0.0043036606172206053 -0.05226026913518203 -0.11804612032107967 0.61111611392817611 -1.4666010394512223 -0.02615803099088021 -0.075761768943363644 0.73006343913005822 0.066917427236729096;-0.74481486952711484 -1.0119667160388175 -0.93567031322143401 -0.10082916712199129 0.028325509689836607 -0.54591786258434227 -0.24681719712727931 0.0047708543693788727 0.63728971731223261 -0.30306398453004924 0.53516545950909744 0.064670846119005171 -0.23405591329844458 -0.09591812973832245;-0.078492866708119571 0.41476970593167778 -0.72569261777160454 0.4623980187262679 -0.0097975296513220581 -0.08490534799153894 0.16303082058775539 0.2074901703959304 -0.54685702122276347 1.2882317879456597 -0.4094367457873852 0.38878357219697363 0.33928148245650225 -0.071063414931209518;0.35584227281785247 1.1752062794814793 0.68825630524517312 0.11817858569968358 0.094068729134529641 1.2683729249149109 0.20087760357656143 0.030474748975560417 -1.1563088622838646 0.71776806080334121 -0.77346349422988947 0.20912031237174883 1.4292442517033284 0.12485197147226558;0.83438694633736576 1.1153339656409125 -0.057745845996634397 1.2889382073520168 -0.59853971876578538 -1.06775830233795 -0.41433846537245955 0.53255239887346328 0.9522301551146759 -1.658678365668518 0.53621150976995235 0.48580335683477366 -0.754049607796625 1.0204159261314003;-1.3209923188277899 -0.076804021174939549 0.34119544382147382 -0.63386618953663276 1.9017493218695918 1.1928666920310875 -0.081123390217063163 -2.6737470154653153 0.25433109624390393 -1.0065956492041781 0.10515105967409104 0.90539418077497535 1.5976901091004296 2.5698208247301237];

% Layer 3
b3 = -0.37296763960836915;
LW3_2 = [1.1584651886432396 -0.91429757250389421 0.14788597225213809 2.1966390583369733 -1.6770071202501258 -1.8108250455655368 0.045522282736260522 -0.043915905490232034 -0.094721574723785354 -0.35108276932310539 -0.10417629713514887 -0.12557351669016475 -1.2560869169228783 -1.8288341064247577];

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