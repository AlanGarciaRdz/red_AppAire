function [Y,Xf,Af] = COAtemajac3(X,~,~)
%COATEMAJAC3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:22.
% 
% [Y] = COAtemajac3(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.201288244766506;9.52380952380952;0.00968992248062015;0.0210748155953635;166.666666666667;0.0561797752808989;0.00614628149969269;0.0213447171824973];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.6554797131049184;-1.8235314878458353;-2.5529974978867203;-1.9711886544262753;-2.5665509440331484;2.6214543284575722;-0.042393887627683313;-1.7076821060385468;-1.0895608432703157;-1.2000731061733445;-1.0782157697970869;-0.72593350276735347;1.3522316098699401;-1.477785872781026;2.4883967757270247];
IW1_1 = [-0.93925590349884369 -1.7640880980140086 0.3963155741400467 -0.32345027568198303 -0.15289107038647451 0.80043542400196732 -0.90151861678297329 -0.73988587622701063 -0.35570829195811787 1.005297580190508;2.3273282007134122 -0.2343549690666214 0.35377894144002398 0.64039212421279745 0.19845886019497841 0.65326030925254419 0.10162389328130959 0.53830711477299298 0.53189578588978303 0.98192944446771402;0.87855257849919111 -0.55222627741454433 -0.043829975603184787 0.28984984850747703 0.26870834360996149 0.6710891743372096 -0.19202635565526871 0.089107059405870687 0.64324805837909238 -1.9839884515660922;0.49474769152118453 1.8097464338288212 0.42138241730306836 0.41608269754231214 0.29788926992448406 -1.4092625649832458 1.2190309646858835 -0.65714225332332177 -0.22967402656814517 -2.3317006584563074;0.5248022056845032 -0.71353293294198727 2.0983580339033745 -0.3493988395140703 -0.85405260350688339 -0.88547541179546152 -1.2916766545423217 -0.98520304167157779 0.13618258544146769 -0.25610546097561798;0.22182425595000188 6.8178512154232553 -1.6963705602361692 -0.1178048614834548 0.29144683844860081 -0.24075906822067178 -0.044981637218601676 -0.33989842470980824 -0.35120229626129185 0.052914004109015832;-0.56651351012219686 -1.7364681219841653 0.65069375346687464 0.89140242684354432 0.015781669388122116 0.61714408741876881 0.28723753268622076 -0.25441970862864244 0.46770581740227996 0.056954936386115082;-0.10702256953115218 3.107029683527585 -0.2661771524018679 -0.33112974845035065 -0.14434990176680493 0.034698472249491338 0.33161988715849272 -0.28104052686148973 -0.092126246846555654 0.088762813385034292;-0.004911787366185809 -0.2804584997569925 -1.4273775939178701 0.38202622022362831 0.24143853544407695 0.2159871961104296 0.39154104678202545 0.43206493371483651 -0.60903274862598655 -0.14196932676170826;-0.18649766973542869 -1.2744066457832202 -1.3766221447122704 -0.018839035448493652 0.032439463741647093 -0.15326176113993648 0.022397088597519939 -0.058509060396474022 0.07585665862415944 -0.16554391993951148;0.064718206848654841 -0.18041244684790267 0.59716549975757505 -1.1008420860727077 0.044853103156698292 -0.74800365862075191 0.92295650462941803 0.021487521120340022 0.018878833466773999 0.77622748190302981;-0.80776345026733953 0.40871956819086058 0.23918579688397615 0.37800106044403942 0.20595914085664785 -0.36716519645453183 0.66198153159483097 -0.11410455425471032 0.20761341392680938 -1.104324566570962;0.092033670410963053 2.233791546070103 0.091753258267454438 -0.55916467597259178 0.22161872777214336 -0.68768309492147384 0.24205364175412275 0.074012023710937638 -0.68273477676461425 -0.6386348699828428;-2.701602162484142 -1.3354190892149125 0.35260971274967234 0.67758808894175604 0.076639919797351949 -0.1337532560528957 -0.031685734147936823 -0.59096215741748459 0.12178959614781922 -0.035734229009537696;2.0101522218238106 -0.12507555755619634 1.4430420827410868 -1.0426538540466799 -1.164214324501565 -1.0187646024281776 0.55337857514846367 1.1052672130854422 -0.4743631998796361 -0.081643288036118464];

% Layer 2
b2 = [1.7383673673407651;-1.0301546981358127;-1.8219713841744611;-0.54377972540862796;0.84077005923108661;-1.3124883939643297;1.1449827336235474;0.49907990126137225;-0.35627573586571504;-0.046749701717894193;-1.7311995371874815;-1.3899033625125135;0.87224580960143983;-0.97439873990338111;-1.1529847979293748];
LW2_1 = [-0.19308142205919029 -0.8027939590014922 -0.36503959557986043 0.14102412372834575 -0.20169013805207983 1.252070403930357 0.38305605433946199 0.98309997477982225 -0.76290965590548165 -1.9547592139851442 -0.042462866992056786 0.20350596956139463 -0.1544846346167599 -0.42272284044768954 0.018769822444136407;0.77254891991197328 0.88857673649149371 -0.34086426511500789 0.28861419001477301 -1.1877569841869946 0.18507781934232082 0.087846764096470326 0.50950036797402065 0.0022828855038009403 0.6406127315499095 -0.062370512799520814 0.13290503868357628 0.040358231909820803 -0.087702980007273071 0.10198536131763801;0.46323439297537311 -0.41441637622702171 -0.4070671947332315 -0.20654433440746872 -1.6553097225254596 -0.072930235598366921 -0.52793321023693407 0.60394199568776352 0.59223826418503467 -0.21054535109863518 0.75391770512639733 0.32111328677806034 -0.39270898546475819 0.60147069243787332 0.73470996105863051;0.22649648614243442 1.2403703170158009 -0.23873062987783927 0.066612283386556614 -0.11716659398892323 0.13719336776290608 0.39362052319088653 -0.37858072968826878 -0.46452339267078813 -0.16258127697680738 -0.81754574435768723 -0.09311793146333297 -0.02360355396951196 -0.74381989578423346 -0.23102568603733187;0.10651038441863975 -1.1604151064692765 -1.0497391274227383 -0.20530275100474549 -0.19956678405995018 0.21663574998052654 -1.3616048635980138 1.1945428217681495 0.53496010349471868 -0.76139307229018205 0.10762675928635329 -0.096930609399368192 -1.1610593732143939 -0.15399925979954274 -0.20000675840285431;-0.066585138072658076 0.03796344583741796 -0.090577878141727616 -0.024201925499247236 0.94990544778694175 0.034023342711102841 0.063908135405122579 -0.94850777382956919 -0.133723987848688 -0.91454769113064716 -0.95865447279399674 -0.14414592299530726 -0.28310788533561393 -0.89299210913449678 0.17081583670061273;1.0674214088239686 -0.8094464423238501 -0.89895004904924503 -1.1667296733560466 -0.67008449537358405 -0.23919401829501319 -0.027386971174912039 0.060865828263624279 2.1408694542567832 -2.8083027460214911 -0.26564375569623488 1.7516582540042551 -1.1857959732905432 -0.69116497658420695 0.63637033307004565;-0.79379163024975607 -0.56160476351846322 -0.018002414389956853 -0.41541064495842606 -0.4129323408316844 -1.6285812322713553 -0.81769337084859717 -1.5431040376089036 -0.41561928284768612 -1.4692567804201175 -0.49571107822776506 0.17109566916094496 -0.15936405499105513 -0.31158340413493607 0.042719061115183865;0.02602737806793274 1.0072740600250449 -0.48768574533381642 0.99504655346749082 0.092945746461477824 -0.25346005108880648 -0.25624190682905995 -0.051904875195435067 1.0295139801844027 0.45212198014559113 -0.99520120970544823 -1.020294264941193 0.55321549821825577 -1.0497041521030557 1.0134970339876928;-0.89727653524611273 0.16182852917943014 -0.43680470476351335 -0.22566374929252461 -0.19498241952628398 -0.25981502866475287 -0.29202517741154466 -0.86333575412335306 0.33684973597173179 -1.0943943274060584 0.50600952574948821 -0.093739263768571945 -0.63686819026102015 0.27426531171284696 0.3601936216354184;-1.1321891891358034 -1.0949653364832854 -0.29057939412242084 -0.45346757396676318 -0.29303770823462599 -0.59686898490055096 0.98514774012224804 1.0534483002983794 -0.42360889632479154 -1.3276496082072839 -0.12142645640684215 0.69070428018403929 0.29127751727202589 -1.5169334483685859 -0.60299090147354961;-0.74031520486905944 -0.74891687431122811 -0.21687200038848195 -0.020844864998542576 0.76217489522270354 2.0738419852960694 -0.30397514547533644 0.89784801847019613 -0.2975697901418155 -0.90582286051674432 -0.0066635084703681804 0.35742907847114874 -1.3335617831266104 -0.17179607042316419 -0.079475344577236984;1.1434729707387465 0.49017558675459771 0.13065416318371798 0.84448649023921263 0.62777612345517009 -1.7849245370105078 -0.10858692576467741 -0.54076995773202674 -0.69978837745091371 -1.153500587229777 -0.52588802192385453 -0.52648528189896404 0.97215696673098717 0.69341598428436912 -0.59135135327373378;0.44584603444477278 0.62672964390685615 -0.38752610884174638 1.7221251544511245 -0.086251728379601017 0.2727760123373531 -0.52135929106197931 -0.15620147951557356 -0.23836141715418149 0.11825347541777179 -0.5386821207814062 -0.50886486189791924 -0.10803996110778549 -0.25931112401646161 0.27581428237248568;-1.0016752573537866 -0.18928555244329073 -0.21381961721732617 0.17365500419768845 2.8407205282633821 0.053569873300504153 -0.70428137412636893 -0.68813142763231583 0.49621257874718999 -0.50441344991521075 -1.0469572269249448 0.0060436987913482605 0.75815962217141042 0.22855583150078351 0.41764928887042435];

% Layer 3
b3 = -1.1378935434964719;
LW3_2 = [0.49269630740691539 1.6410394597024758 -0.88629393475966811 -1.5255690325752984 -0.36574929537988282 0.81077815172472423 -1.137743736748031 1.3930283540376278 0.16674601874851808 0.56272081041293631 -0.89680558522042619 1.3765855029566536 0.3174648341154076 -0.38707461339215593 -0.63950371766934055];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.201288244766506;
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
