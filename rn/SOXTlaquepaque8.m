function [Y,Xf,Af] = SOXTlaquepaque8(X,~,~)
%SOXTLAQUEPAQUE8 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:57.
% 
% [Y] = SOXTlaquepaque8(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.171659085057077;3.03490136570561;14.7058823529412;0.00462534690101758;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;0.185185185185185;35.0877192982456;117.647058823529;27.7777777777778;5.12820512820513];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.8642436485790554;-1.1522782168370684;-2.1955247267667977;-0.78508249458733415;0.00074333629079099007;1.5905859700826537;0.52014389201288136;-0.6657067502304117;1.231948225188563;0.93964283324648401;0.89990955258680827;2.2468029703145898;-3.3621665283700026];
IW1_1 = [-0.2042547401930499 1.2278260696490499 -0.37265092279547318 -0.23570061896484282 1.0385069088309054 -0.17129921454653119 -0.53991762180928027 0.39638031003709251 0.59537857830103114 -1.2163894330835314 0.32605699379354347 2.310461722792414 0.19554330357913077 1.2274094924462153 0.13409730604955766;1.4579427720043916 -0.74196818656598928 -0.40492742396837667 -0.14101853230062797 0.50577975588992219 0.91173331316384798 0.00055080795073905991 0.908970645570221 -0.57310698260656256 -0.066684106334221421 0.18526898389042401 -0.65357682714676646 -0.15694501211878573 0.092040315259787453 0.016003275263881751;3.1860740786343809 -0.49673306004130652 0.49131077735614687 0.20092955994959605 0.19298754685544811 -1.8634715540213613 -0.37420857735464136 0.086638716526468665 0.31356085471259748 -0.043093740020298678 -0.15731922072883203 0.098549137970077499 -0.67352318703283331 1.4334893873310461 -0.74850948562646047;1.1033127325467111 -1.7369017471062018 0.015800538113155068 0.49727472801798772 -0.36733482937627393 0.21665754605145998 -1.3868872113432422 0.18664705235778958 -0.11654612223769618 -0.37853058785501548 0.89592723549407538 -1.1627399658472359 -0.098279833161063285 -1.9392695737718759 -1.0058679861328474;1.1141080678574184 0.80229293998960505 -0.57970523184227829 0.49120357058159581 0.86503100634183194 -0.36386444341838592 1.2608127731096643 0.39979261207006189 1.0737708649125717 -0.79372458733803497 -1.3747779399055657 2.4229942401003153 1.1960922602886963 0.42018275499184943 -0.059575467713413585;0.28508731059069664 1.3249105179502911 -0.63705755798422781 0.52325725531159129 -0.72584940179451618 -1.1099858180943687 -0.8604466693895747 -0.049625446195138936 0.57007300180371889 0.20903649275363584 0.42802611333861895 2.0005684222815221 -0.09827260821680614 0.97856534015970176 0.13896206663427318;-0.22107638847872418 0.091828140865129887 0.087784513641446793 0.46128142890191326 -0.18915729352284938 0.5753425203294642 -0.90702964374985484 -1.0171284073268287 1.1093487717162989 0.24016062066090796 -0.22740861284480585 -0.49607506500001031 0.069491897638832983 -0.27571021444703075 -0.68533446741110338;0.013547306021516377 -0.25470153891417707 0.17319312129071232 -0.3289836389667195 0.73669292660136865 0.03970330883803392 -0.25322305112551413 0.52980763189314395 0.52124725049703979 0.63630429231545149 -1.1747466839973348 1.2023414276387936 0.29281779382719098 0.53803013039306213 0.69097988504301566;2.5818256597894309 0.45340384948752832 -0.91632037489696971 0.45816320717931269 0.44302868020304315 2.1204439004607014 -1.2223945741114068 0.63736944466248591 0.61673369359898722 0.49712869944713994 0.33551636540208879 -0.6137791193039388 -0.26136663592354459 0.38411110295024942 -0.13859648751484288;0.97120338544086748 -0.68007761910047571 0.7861952840504508 -0.24611829929982409 -0.30052098566557456 0.90442394647197633 0.82846918534584357 0.2997812296696068 0.30166029880370809 0.7781736383739335 -0.29280767740526675 0.39044156546564085 -0.0038153446607442241 0.18982602051613995 -0.15686768540366447;0.89361426556685708 0.84313893942462936 0.33633413320979794 0.80200414418336441 1.101811560941349 -0.32868883158996526 -0.018295668084855429 -1.0307556081916693 0.092559282408389343 0.23228210815624342 -0.15574885555473503 -1.7552226687274453 -0.33844518382264333 0.67519767121515906 -0.1362071483316471;0.80801734035528539 0.56671760805163351 1.8621975652591216 -0.30267057055175051 1.4473956331148985 -0.63218277397018585 -1.8198234135336133 -1.1295742702968297 -1.1651017750300305 -1.3877856474554791 0.87254432169157337 0.431364421951282 1.1606282365454106 -2.976677586902083 -0.36561353675284813;-0.065779468653427237 0.017458493385697441 -0.0054796952061612466 0.0084009110085769573 -0.028087725810969057 -0.051056644056014476 -0.028802790518457848 -0.030556870718253543 0.022068798110020642 -0.013013603689219885 0.028600636128711252 -3.0920950936160949 -0.012113890693259691 0.17583709626483615 -0.0057871988660319808];

% Layer 2
b2 = [-1.7272111674414308;1.3408154492820399;1.2030526883166444;-1.3547765901352704;-0.20722245235410072;0.20138433393696051;0.13484400334065308;-0.036648795092996955;0.29859210244836004;0.85899744590447169;1.2525716010018959;1.3232951843853784;-2.0622031072829992];
LW2_1 = [0.71688967854309094 -0.09927003979511681 0.61893939203526216 -0.17492527936535107 -0.72700764857240596 -0.090990067905296013 -1.0408338697576258 -0.59765764093642793 0.403109182128713 0.393100781387072 -0.311878092621998 -0.055768168594334575 -0.15525176161126819;-0.63470153409932573 0.090980211037945194 -0.11648005189865837 0.36764560481601893 0.0079775105657191522 -1.9813820851903703 0.19902216333290929 0.91580974197713461 -0.58509645887194794 -0.4484941965325841 1.694588144278566 0.95358735457291022 0.021988303249472603;-1.1749392676842738 0.48687213595992723 0.23303030727652563 -0.68485916951609427 -0.9211360919742152 -0.77953556502497867 -0.01913456004369132 0.24962557950045458 -1.3147619094354042 0.011129165385691775 -0.23201786060239876 -0.32025583316419254 -0.71698441241245603;-0.051469630794416445 -0.14587643488416391 1.6690960759976621 1.7263942480653121 1.7740451275076841 1.1058986546060934 -0.31049357416847967 0.23474730005577282 -1.6776467401795028 0.396531094891794 -0.94291630477529864 -0.27234779411505683 -0.0056769994425729768;-0.67815290646221316 0.13473316319604517 -0.37866280220047099 0.62544690829369776 1.6383836679866008 0.72520906440772803 -0.37823938963870002 1.1744491494871503 0.19991228040861925 -1.9265903302339102 -1.8345023779370853 -1.0341312617475662 0.06076495074287265;0.025669903912234004 0.6447346936733801 1.273794562261894 -0.30694466944825199 0.88226452201814876 -0.36190822302032993 -0.15646623572216012 0.17710955220887878 0.82289063133734852 -0.43994781410638184 0.31046445563577107 -0.26064934978317922 -0.25034632034957993;0.43600866187353782 0.39943581324695587 0.56206113115280687 -0.22665886306079874 -0.91681589499079785 -0.81143093020679635 0.22130754900335581 -0.49936384824079511 -1.5326176633773374 0.02352081384073473 0.33640838084529928 0.80954495165795803 -0.74260024120844781;0.9050486352617757 0.49010201735354336 -0.69764255014177379 -0.45449371484486784 0.23018536802988113 -0.0018053909477637299 0.34179481999903083 0.36508826786533854 -0.66760455619194214 -0.74295895923066857 1.8112815077207181 0.0041446840344713017 0.21793343486099137;1.112247405399984 -0.35344806656059835 0.37684498170093983 0.74039986066675534 0.16750496639950863 0.21023231421446012 -0.17831271049424688 0.23574374815975857 0.31433901915278439 0.49114907228723809 -0.16019480351223925 -0.077357420101713287 -0.44097086684747194;0.63817352728295562 -0.20175736846249956 0.067145590149331275 -0.1079206884976999 0.10223380217596448 -0.1020663538304299 -0.16309258194483189 -0.12891926504449139 -0.071718845626113401 -0.20805988825707092 0.44825880411602653 -0.00060022495788517559 -1.9572346921359087;-0.038327454067508621 0.25266150330282039 0.89835082526197707 0.4113757003172494 -0.68494645189874803 -0.79389678283037091 0.23600848398610164 -0.69827953891495309 -1.9386108563150364 0.18810956892441194 0.54104832504799594 -1.0152772465426481 -0.70345137167788208;0.51790000234518307 0.57282530720961067 -1.2739844693979123 -0.12609062371031032 0.059706613921693658 0.89933179912159833 0.28078212982236683 -0.45918637480985902 0.26650375173761981 0.11010186167260336 1.2353255470062277 0.1738220594009989 0.14150206199615201;0.20149561689288531 0.10741725041809612 0.68281724978458758 0.8929518574927523 0.085766111540168305 0.34474461909121368 0.84600941028087828 0.25909831496549834 -0.027167723862106002 0.23207905876040194 0.36518434301486558 -0.13195919329265926 -0.35505114691054862];

% Layer 3
b3 = -0.11979898275068157;
LW3_2 = [1.5009166165471366 1.8290723380937688 0.97790327040445735 0.77936315508948839 1.9482602106430578 -0.20017084767915444 -1.8316407907118064 -0.22905610121885989 -0.6855906892442315 1.0844549448102148 0.79156713068084361 0.70808985614186037 0.75394738265381467];

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
