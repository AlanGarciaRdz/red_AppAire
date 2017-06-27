function [Y,Xf,Af] = NOXVallarta15(X,~,~)
%NOXVALLARTA15 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:16:28.
% 
% [Y] = NOXVallarta15(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 9xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.412371134020619;5.12820512820513;16.1290322580645;0.00782778864970646;0.0208333333333333;0.02710027100271;0.00632111251580278];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.4325071079255982;2.7743551493109182;-2.0383873929699128;-1.6548932021259395;-2.4081647991187722;0.10799083572002015;1.7101125221433513;0.98301861553056624;-0.05636313466434445;1.7480025782425219;-1.5556860116264357;1.0262857723292367;-1.4351188627802269;2.6118099188339792;1.1550685767123976];
IW1_1 = [0.89813541718178336 -0.41738152654154603 -0.64438214295060392 -0.6783262701550492 0.74117169121103044 0.69127966621439563 0.51838560725330474 1.4166795751392582 -0.26272626414824368;-0.17431746229572898 0.30539287464104159 -1.2365215492297921 2.7101862644644266 -1.1294809660878311 1.3366592075118915 0.29611144575176346 -0.83412828808155959 -0.0046985455967103948;0.7818415161105059 -4.777599527791673 0.13681128320954725 0.47030847973291068 0.23791280675303905 0.32211530120172166 0.15759925530186131 -0.87874353785299364 -0.10826357066795372;0.29374294703300341 -0.1952749351044121 0.70736866874109461 -0.42543347126539743 0.24076667087102635 0.47638234950847103 0.51927876707174037 0.56394168950780288 0.77035334833063018;-0.057050819411353829 5.5137810426433651 -0.11802496974279747 0.29765041688294369 0.46360280248945157 -0.055361441423037554 -0.41471185938862132 0.65704892682959382 -0.10857346730853298;-0.12077219837344087 0.50575473275392069 -0.59691274885428314 0.65550260164303609 0.77876045284600515 -0.45965175942114822 -0.13938187432323262 -0.39740821830201539 0.057149882820281689;-1.43479224177094 1.4143390690377944 -0.062264197655275529 -0.26714251459901656 -0.18539846667574633 -0.12233429276191495 2.4523374269924436 2.8362072520138386 -0.84235938852071046;1.3153267553439314 0.83253457506329576 -0.28677387117099551 1.1314295314615639 -0.57520601984445641 0.048617434762828801 0.40814873820551328 -0.25318619682189497 -0.035914526430089223;0.71565922203781995 -1.3904248322587149 -1.6395082564058159 -0.56710480325890367 -0.22981579132716073 0.14127501559152958 0.068462075966605848 3.1665672046315634 0.077135772195192742;2.2807150507461169 -1.4595786408699551 -2.2169969879342122 0.2576969465642247 1.8346966651793957 -0.80476815035067273 1.3732004983927397 -0.96258877825047018 0.13857231438317899;-0.6742626532388184 1.1811016959492169 -0.31971696272087974 -1.6607787209896636 -0.81987098888980281 0.51990281379388947 -0.18590830931122621 -1.9363268121789503 -0.21077752413939077;0.94956915987987145 1.3170103372621631 -0.69843420646228038 1.6505477778545803 0.076921644440684334 -0.050226326897532397 0.28855023268159719 -0.42075364577685753 0.20558601825565631;0.74575927439526801 0.74135648169952295 0.24971117859234157 -0.97616639307268172 -0.89694944109144203 0.37015486455965568 0.016594507780931581 -0.74525183948863449 -0.094226297589793812;1.2735531190346643 -0.36676174973242043 0.074804157304199648 -0.46265407638308942 0.82961986914950225 0.41463100843159384 -1.2168980997474177 0.35863032236568926 -0.20556631563007327;1.2098589997843365 -1.0051522398610695 0.30398142540774242 -0.84613243673742355 -2.1465734164847268 1.0154634718138089 -1.110515572987447 1.5921038405517074 0.21925119817730379];

% Layer 2
b2 = [-1.7683686019633624;-1.8847772458065581;1.9552563094532078;1.1467496083654938;0.68491001072455138;-0.78560797473847654;0.014720393868783016;-0.012325514500223705;-0.7584060244847709;0.2157992552716432;-0.30730589800707203;-1.4308221149451075;-1.0985059834795454;2.1471878101910855;1.8392762445418436];
LW2_1 = [0.38907141592788735 0.25871719542181659 0.50911162160907175 0.6602104867567582 0.022894664589038681 0.99717951130961735 -0.23530683581982978 0.18918863450032575 -0.64957617062355399 0.72038430307086654 0.30749710939107516 -0.3743362347009746 0.34178438500399566 0.082912804541108109 0.62188132913840011;0.16001616635088095 0.38376315880580053 -1.2255689924504827 -0.23014971528292244 0.91285885359787178 0.27235103382652731 0.41953987842133927 -0.65819727144479034 -0.65495028973902192 0.62380743858571153 0.2800238835833691 0.41158300277578624 -0.059617918804911775 -0.085272927136994109 0.31349817038109096;-0.64145592273975527 2.3386079644216551 -0.61047097017366392 -0.51126286648700681 0.87991437472985923 -0.064242649608272445 1.0387746839429952 -1.2079142944666206 -0.20246322286499674 0.27716205917159586 -2.3896820441068285 -0.90344013206553131 -0.10149195922417487 -0.78244232783273893 0.20164519511597845;-0.21294498537266435 0.38050690284613753 1.0594351531042128 -0.12454551556519473 -0.40814187500070054 0.25967329452276017 2.0569583451399827 0.70706188427663053 0.79923514455972744 -0.09137065826809547 -0.46042496071364913 -1.230371609811258 0.91707336530811467 0.21223542500797482 0.56543094242331993;-0.41163082184454436 0.029998421911137607 0.66682174304619501 0.26861909567943026 0.2752833685893965 0.47883391574061779 0.3405599857731797 1.2439675014480978 -0.99963539526271439 -0.12255837099003121 0.13209691545344174 -1.7603816807933119 -0.19984102256520458 1.0836359240253604 -0.38522914544488879;0.98166656749432812 -0.55950255779426361 0.43964380339632203 0.87319947037255774 -0.021721520018626237 0.83118724203293859 -0.2453318695893594 1.0215582992576255 0.7029500305900942 0.51831421821603474 -0.19392877129090744 0.63541344887558249 0.80354421322794745 -0.11036354072382212 0.66035701010101133;0.076368745084207323 -0.26337857598485515 -0.011413245060252313 0.13241380214345178 -1.4166598115716404 -0.8717262328197346 -0.066593409820700167 -0.22028523034382452 0.11091706135577983 0.33776417759261973 -0.39320933519738882 -1.0705588835684634 -0.61425651618431976 0.60822783786095602 -0.040353125141755437;-0.72716442887750832 1.4519500049655745 -0.42298525587675495 -0.67842083936287068 0.85705540829781723 -0.661453027972281 0.61943812938345966 0.10494835210029427 -0.56668168686361065 -0.86157288360096973 -0.59853491566088479 -0.072370947045637166 -2.1324436185887046 1.1078986646959548 0.57944110735893728;1.5291443054357434 0.010390104180985731 -1.3509015537352544 0.10433409618502987 -0.24399274151503006 0.6744744442991959 -0.043797786062766367 -0.72711410829430445 -0.70245861073707538 0.12835295543027389 0.28115709658715549 -0.6256105927110257 -0.41220229773720385 -0.54987375193284815 0.26465750685535089;0.90820868541946087 0.35312480475263358 -0.5953936823102729 -0.52009286963051593 1.1277407963018318 -0.063336688814929751 -0.22156104355582759 0.96814976260299479 0.15016163387366649 0.46455888521076755 0.43123535737812008 0.43635185866683768 0.24091978617679927 -0.73150303468583311 -0.22652774116889474;-0.93099162285376069 -0.43951584170069796 0.49899669634463978 -0.2764119670385673 -1.025384693148792 -0.66720003726844279 0.095261450624315291 -0.8527068637501517 0.021411225322992628 -0.66276983853087068 -0.64254206907217049 -0.65941198975854864 -0.35397393787544795 0.33932762649054615 -0.15986903968851532;0.11759087073434565 -0.5554132355395337 -0.83019166209807249 1.0882878320951719 -1.1663138523533025 0.59015803595573946 -0.52514791645959558 0.93488040426501928 -0.29806213542428056 -0.015410570574375882 0.56024520304225178 -0.84744751497297333 0.32642453361656742 -0.17446996212468219 0.23628792022588305;-0.72154812497211751 -0.5155602830798971 -0.61941239601586762 0.61499717689413924 0.060725757906126873 -0.61923901537625547 0.23746727588772612 -0.65970783387068166 -0.45579082766888407 -0.64779525025336171 0.33475670978018296 0.10077141757369201 -0.44985633837307659 -0.47408360575565478 0.47249250182946267;-0.13493973869693626 1.7588240725909183 0.39232968617450692 -1.0654815646958364 -1.3601697999200488 -1.2823918601157931 1.0820765832449724 3.1505600760060948 -0.91275021511524512 1.917010251615596 -0.92516426227497983 -0.57857858962746966 0.90193939077758967 0.018850547957941249 -1.4179177918113726;-0.25423923120524689 -0.74825602456142182 0.63752412140115478 -0.41856165719358029 0.5645435757028201 0.097371258446581344 0.38139224321811771 -0.51875895480788048 0.15452755284737016 -0.032567833544889208 -0.29460029834638751 0.48681793130269091 -0.21330957937703413 0.81032801616611694 -0.41292105173067917];

% Layer 3
b3 = 0.68614460260450338;
LW3_2 = [-0.10664139672017608 -0.62819418993124188 -1.4305870443341993 0.16426970313146078 0.27004354737398845 0.21855803249404193 -0.61618604180886205 2.37064247155369 0.68710432757746098 -0.86106540279878951 -0.85250831300116947 -1.1138856617222417 -0.12019003080000043 -2.099037481863014 -1.3698360027284024];

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
