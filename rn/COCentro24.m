function [Y,Xf,Af] = COCentro24(X,~,~)
%COCENTRO24 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:35.
% 
% [Y] = COCentro24(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 10xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.281968137600451;15.748031496063;0.00773694390715667;0.0203458799593082;0.00627943485086342;0.132450331125828;0.448430493273543;0.241545893719807];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.1098551696089642;-1.6413645174028757;2.4675507646816834;0.92148957196524861;-0.98030764114879732;-1.4336365318067341;-0.61131230144505688;0.50816149894318829;-0.82286608378239512;1.0467672430577812;0.87160141165083072;1.2214460465984196;2.2068770300106859;-1.0327779899509275;-5.37603966768721];
IW1_1 = [1.6497934643386729 -0.67904977653469001 -0.31027283700234198 0.43657276469970274 -1.244937993056934 0.5253587658901675 -0.32062722565293328 0.32963195450060062 0.47519796265940045 0.36406416467906566;0.74733750100800111 0.34862910465160041 -0.9149275136104289 0.15772727875950443 1.3013342269186665 1.3780615544289818 -0.59442309394452042 0.69269238960241031 1.8972209431337332 0.61316745544795681;-2.2674405448010582 -2.5939307872138286 0.88273729313958516 0.22695170607995285 -1.2142656657777458 0.050236852356423015 0.68467782883496597 -0.78418288117087087 0.31252777187475944 -0.42087565983786079;-1.3971719252967123 -0.64674192389420671 -0.40742089304107298 0.53172232608219538 1.4242319515728741 1.9598609131832514 -0.19907033858505707 -0.20581041615269235 0.057366865846724291 0.22181283770372837;2.4909359878416835 -0.28264805007879718 -0.087365724708619655 0.38644950621134722 -0.084667545716477513 -0.88825580329455534 0.016788810113809081 0.50414971300746381 -0.60492362934711352 0.35684733149477227;-0.31285712233366997 -1.1199562045117204 0.79049108630985621 -1.1904145417549066 0.09871473358425914 -0.89094939103080539 -0.041765202318056659 -0.93624645490773628 0.72951040172138082 -0.71119415533297414;-0.063949933962613309 -2.5150005659032275 -0.22737369127711249 0.24905358350209456 -0.099815944629176714 0.23405739698316547 0.0082713218718711082 -0.011118571627235611 -0.35916751352578002 0.28805379477954512;1.1423697702536602 -0.10398304681256242 -0.0136395558811583 0.13801701386267545 0.20131081235064757 0.14448087963092757 0.036451211258133699 -0.1303409084186849 -0.10295021171782703 -0.37441771292846121;-0.24677043972751395 2.0489272473806217 -0.0090011428533694256 0.089477582157767743 -0.47301981290996981 -0.5360528207302846 -0.078491481105183239 0.37478004085357147 -0.16070980241008584 -0.43552327898433596;-0.38270009594679189 1.3269708562870941 1.3471149875377106 0.82476217877672608 -1.3140246075254551 0.54145812516536773 -0.57546942390153555 0.80536766751362976 1.8256578290923675 -0.96591153787417861;0.23141362252788472 0.15223200435890291 0.14679701888114782 -0.31343406062207663 -1.2277142441968791 1.0626107017845829 -0.10259049411753397 -0.076352597606629602 2.1553406685172729 0.32962546379432256;0.25791785065747702 0.89736847203680392 1.1449221367979749 1.5892128604280336 -1.6196022855847008 -0.24740392857537388 -0.48443346197935599 -0.24942221419414273 -0.68324785934278531 -1.2700532731587937;-0.10064967217594192 -0.2738409675464139 -0.40548387979139444 0.59304842471100161 -1.3122910910025483 -1.1964104739190995 0.84064301312080647 1.1894664358326519 -1.5177656935450399 0.65819094121168831;-1.0589855890355657 -0.24881695867810141 0.90835857171563239 -0.56923211198155088 -0.67396316175837978 -0.84694919663576707 0.42101310149472954 1.0231907896715606 1.9635819230959688 1.1406794629471395;-0.60572035411967284 0.040568305779568652 0.55831199838386869 -0.11423506107436145 -0.65993271174741874 9.4419859889977031e-05 -0.049863482171240286 0.22699662691208344 -4.5102849749651845 0.38166983731242166];

% Layer 2
b2 = [2.0968337586644101;1.2919322323653708;-1.6315766436202013;0.88910646032101348;0.17865634811059622;0.18891165524747433;0.25906306913754312;-0.4623258555046153;-0.42535922603692566;0.43834684691907505;0.31684843134386198;0.50757879647216875;1.4298236688785211;1.4863365419397998;-1.3691470809840751];
LW2_1 = [-1.2375216423795441 -0.20542955719655245 0.028182257195328152 -0.55476010034751533 -0.49659679520195688 1.018689071753264 -0.94500974311492558 -0.4442207732733619 -0.027092571224075206 -0.52020099640818718 -0.89713310632680532 0.87499914298275161 0.91708403567398411 -0.57601928879639508 -0.63469088578080213;-0.26792074982099351 -0.070569344281772292 -0.021616326076711656 0.21808835627095274 0.58598091932819185 0.048238922967571686 0.19289423773811609 -0.79027478725084588 0.24060680969261972 0.25487609961868496 0.10362718666523831 0.10596447269094995 -0.056598625961829817 -0.29360379066517817 0.55322141550832227;0.54843608905419972 -0.14006376436021895 -0.48547294076311304 -0.69378090342093934 1.190102556580811 -0.62202860453279374 -0.76944118242641724 0.40054370021893987 -0.7341704790419048 -0.087586725645520808 1.231859490457534 -0.6859605564825485 -1.4730522736525815 0.87604149530807174 0.70003516211240291;0.1312017566856386 0.7765320937546607 -0.25648508227055311 0.39488166969994093 0.32519580771489476 0.79358783432960867 0.65222633134418029 0.027423434731062263 0.33323312957817769 -0.099474030489562243 0.046193120342375084 0.55824546945703468 0.14673861566191002 0.061445480785319861 -0.41992406726290665;0.4773062206674335 -1.4259640378599809 -0.26656784978329212 0.22098148507027593 -0.58637425672038268 -0.34014631858129019 -1.1818582550214036 0.15397903975258725 0.66336562549951161 -0.70508391669942627 0.45435071869156968 0.15468059668113621 -0.77258826781223011 0.56648888538346276 0.3239785262589775;-1.1453361057897793 0.68012701906100503 -0.42601122234683192 0.10900833380603489 0.29000068417381264 -0.12906757832426041 -0.24747129397360113 0.81317000762400682 -0.41399258787305188 0.58516437035707125 0.071678736239298074 0.13554499500638292 0.71212167232024659 0.6537831436788285 -0.83843710549622497;-0.71513060614385071 0.30935795579892655 -1.2063622772759055 -1.289748398894851 -0.029040755457589294 -1.7285941469460455 -1.3817420890531762 -0.50336218816167921 -1.2310270303709643 -0.075132667717577095 0.068587038979249726 -2.2134542329266336 1.3461042539685164 -0.062786055782467709 0.49393418392407951;-1.2045805817679982 0.88035353014461293 0.56311008107620719 0.36144017402887096 1.4759755300270674 -0.40899710214672264 -0.043677902723028371 -0.72245857979241512 -0.59446580179459119 0.3289254407602597 0.52166726207829395 0.81675567863692911 -0.50948405662032192 -0.85394248487467794 -0.40404817201156762;-0.29315700901457398 0.92900350879444216 1.327624198865057 0.12808487267510968 0.23221725064677429 -0.99561162208689713 1.0320020374496219 0.48989099017945892 0.16202821749724142 -0.46591901677014813 0.028961378774818962 1.3002355799438483 0.14186542717149858 -1.9409932634018208 0.15600630016787301;0.48166606195224276 0.36657650447679635 0.17260806697725781 -0.30303195784057391 -0.23675142817946856 0.48264519893311503 -0.24653419479770003 -0.46253847294996331 -0.1281943194625027 0.90570357200629459 -0.62308920604320372 0.29735117985719689 0.35693609588809205 0.13577219229034088 -0.31327179168438579;-1.2145511050397615 -0.94052191071547586 -1.4239642534370505 -0.91383032115237162 1.6020745291915908 0.11547790282039602 1.6095926202476292 -0.88680855280472337 -0.44213196795418536 0.85809148097812482 0.30370050117352321 -0.69986433074461218 0.51100541355869855 1.0519322206619641 1.3082420186157728;0.38336511714867028 0.33278377742334364 0.45168088307855897 -0.37269063043004447 0.018626124474277257 0.31999624759138057 -0.85968130189978409 0.15348455541365258 -1.2012642268981719 -0.060541557989177167 -0.29902808061721003 0.77638513047578228 -0.54939479492871013 1.0173047265384156 -0.069099942880836512;2.4303955504218298 -0.88891141849405275 1.4927958067932177 1.5290207436003982 -0.51675277018450405 -0.14873098270324164 1.6755390421454595 1.1005734064101385 -0.20602305045862015 -0.25536320614761143 -0.18004126641272611 0.69564471462305799 1.1715820815310281 0.057479805507385955 0.44597344349408125;0.26375710622631149 0.36734284792493921 -0.41938965309198883 -1.3014201340091456 -0.89499066127171245 -0.31100633542928152 0.24785656190430225 -0.64645488946508922 -0.97768076398043835 0.88128135238309557 -1.1856009904467482 -0.48937806787661131 0.36457957912736422 -0.62801022464880396 -1.4534495890891721;0.32534255281541524 -0.53545908738204917 0.48108792951835611 -0.10024155691545332 -0.45155260683064796 -0.56680688783193889 -2.1238060536076091 -0.43087128666215385 -0.736435010272396 -0.26473308810665452 0.069565411103559821 0.063418946975477841 -0.36798563230901005 -0.49006923696703414 -0.1240337083025316];

% Layer 3
b3 = 0.85634829819125946;
LW3_2 = [1.089345668156976 -1.3863215446528685 -0.64036791809096261 0.86528247025559002 -0.80949442159614349 -0.45359778512380433 0.25086263395889147 0.47323992084634364 -0.62692551822908071 0.41943410140555648 0.44747887453064417 -0.61109519596397455 -0.13564027354365604 -1.6983880018892974 1.1487192174233329];

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
