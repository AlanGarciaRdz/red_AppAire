function [Y,Xf,Af] = COAguilas8(X,~,~)
%COAGUILAS8 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:18.
% 
% [Y] = COAguilas8(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 12xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.448430493273543;5.42005420054201;0.00666000666000666;0.02;35.0877192982456;0.0561797752808989;0.00588581518540318;0.125;0.281968137600451;0.304971027752364];
x1_step1_ymin = -1;

% Layer 1
b1 = [-0.49656235862307435;0.065516965327700571;-0.72585003441416285;-1.9678480973874044;0.1762003820712072;1.2639466518870217;3.7573304107955137;0.43957531167612041;1.8530303979859561;1.1557796438988177;-0.5736639655179433;-0.61051234795310694;2.9685091918482733;0.88371570169769542;-3.6281427954333916];
IW1_1 = [1.8038841115263651 -3.08080068554316 0.35054489508547382 1.5762738068925068 -0.064261664370828184 -0.3617345613374488 -0.43548849941796247 0.59970929427986874 0.12257826545333214 -0.8448637341841162 0.41994174189887684 0.33068996142446538;-1.1285865152833114 -0.45285309784795219 2.160234186777235 -0.28891776510361344 0.20237531702957018 -0.29645508327480724 0.37030781701476634 -1.4879637918776314 0.049299403327884128 0.19887263441315492 -0.47073091838878456 0.092906138479507086;1.7756983352248767 0.27253020816046636 0.70781564582622802 -0.26970183425286259 -0.73594060851646659 0.46808295477128908 -0.27387842898051812 -0.81248380705547951 -0.040072502683576705 0.11477936997816329 0.16281211381894697 0.27268877807893294;2.5480670006032651 -0.97787928805893731 0.60488447574712445 -1.5220103708446227 -0.06129592642946792 0.012675535595467503 -1.0888285492198793 1.5932446582413755 0.25457096395618961 -0.52612723243185555 0.9737986310566088 0.10266040268467332;-0.0069601439150507594 0.39442511927235746 -0.14552739668547476 0.54307503298565496 0.31212616895067896 0.0066294069230240105 0.15839482580192249 0.33672250548719718 0.23370173175850892 0.14895292020507403 -0.16529710461851704 0.2593656862783994;-1.2464833762521397 0.1072295595858485 1.2106084311788752 0.13612213141607107 -0.051926529963746616 0.19478463871348084 1.5376020674387412 -1.053426730780975 0.0098836747994144551 0.18826415169129657 -0.73296383693740341 0.42321883397181881;-0.37881179590448605 2.2744643041656563 6.0129722884568544 -2.8323799824377716 -0.98541731372811414 1.5061118710241705 1.4852801707016741 -0.87569396460431848 0.68465599936405552 0.3721391860686547 2.0622011861811034 -1.0972463818096263;1.0199080454214038 -0.47121380325112994 0.56280128249709804 -0.75831116182535718 -0.14263122778543169 0.55536435153190677 -0.1593232062082012 0.21479013705052311 0.45738571998268673 0.19498204579701511 0.099440322036385323 0.6108099139640687;0.31481468534000984 -2.379889728945936 -1.216399625766474 1.7604322544710509 0.28451420594534887 0.16447322156139185 0.231514007501431 0.62399538025981793 0.60224475524966514 -0.11534951645442251 0.046651511071911206 0.055408407913678834;-0.5145588330821983 0.51230310746288965 0.75919110326729866 0.36099983772544969 0.31583931750699323 -0.35687283201456177 -0.071977788967165737 -0.34694452247013008 0.087993408019760064 0.081787640015846791 -0.28249726922071827 0.0028091826934409517;-0.41103863508896427 0.65440485891443856 -2.0830379216119326 0.90470854767194386 0.40291342654704593 -0.1941474883528414 -0.45904431221973435 0.97454037370162916 0.47753100044357755 -0.45026906572764991 0.63974859554018781 -0.023877403165858582;-0.15828125817868405 -0.88161843407524665 -1.065872691613069 0.27039948597096619 0.81393213746171511 0.07022954055850722 -0.92848560197092778 1.5407497569287674 0.25322436144891197 0.43315535199931587 -1.2541244570869094 1.1629580356793734;0.055878713783599272 3.0679611534271123 0.31908105514642721 0.048843773303372133 0.21153575534713046 -0.018259540184944779 -0.12451267882193742 -0.50920172048188128 -0.15719952153585948 0.2716088816513918 -0.016007590476996701 -0.11133003703375431;-1.2122255285289776 -0.4129107927876029 0.36538861520838845 -0.19687471483989583 -0.13555346584980965 -0.64639702740591665 -0.27002515389111537 1.2394496867893086 0.1828902528856024 0.31207302919000085 0.30228634084247258 0.01719859628730112;-0.75020115008193478 4.1791529209359553 1.1690830073997032 -0.79005737437524837 -0.38053607143129176 0.41692551073838025 0.41837218032845447 -0.99586406840143538 -0.89088675339209 0.78845572889936699 -0.6405334407401343 0.15284907094530692];

% Layer 2
b2 = [4.7609587570893224;-0.12581130613260566;-2.7027092088193707;0.60581813498604931;-0.39185804715810785;0.0077245220474050982;0.45247720656675433;2.2267889256086995;1.3424554601371672;3.8749317819856595;2.6832833515613199;-0.72990626182117369;-3.401412134624143;-2.0281504735448648;-1.6476396110275007];
LW2_1 = [-0.64622560576765742 3.0406421790768325 -3.8998164017080277 1.189487974195339 -2.3027640466816743 -0.46778549255105156 -0.73048977794395309 2.1660669859119057 2.8457029029031267 0.46816007799107179 -2.4884055286338072 -0.53426032650949873 2.846095862742283 -0.69303575593873523 0.01832858781048367;0.48771870432892828 -1.1032539187676524 0.13832288880405463 0.47890178893357527 0.55370942494269748 0.75968828774947328 0.074868073876291116 0.052046928013770796 0.78110951198515799 0.048082564466929822 0.77040009765575757 -0.09826015601704563 0.50985207037354963 0.53303597098003719 0.64610224001932959;-0.87769484581049406 0.30562079720133922 0.4742282534789054 2.3886523436554068 -2.6635315542700262 1.1417862024269434 -0.22907707885779127 -1.9960740553518437 -0.1602821778541707 2.7756529333530979 0.92060333038866848 1.705334945423876 -0.91108276814494826 -1.1885440616348537 -0.16705299121926218;-2.1119278782608086 0.77162012054801787 0.64835306961657257 -0.45138666688748791 -1.5471533544887601 -0.37855339987108255 -1.4021170373814673 -0.236328913342299 2.2407887697415307 -0.72142717231224907 -0.23398264277431477 0.60911640811179157 1.6390630224766647 0.34815138728384543 -0.44904100397616792;1.2326695115321453 0.35323620020960911 -0.46905401986015288 0.10848775442901937 0.99571343948981295 -0.37113991764053511 0.16049974034427142 0.66099662501365775 0.90231173406336063 1.3584144691304161 2.2807236968413815 -0.13058321529208175 -0.23651573727455374 -2.0825181122382208 -1.0477053597715555;0.62042318976815702 -1.0845204465384068 -0.46687541518314074 0.79419362683972339 -0.72149466948315888 0.73709407390037973 -0.032383988652062087 -0.25747498989055823 1.0002283025311998 0.57135074992622359 -0.23951600975533946 -0.15323541176773275 -3.0258978125898688 -0.059862828734022169 -2.9730263752138106;-0.38575215790405459 1.5107694180597653 -2.512345732585505 1.2246512748481961 0.45393820360353571 -0.73706545190296213 -0.11057395511845951 -0.096340181223778951 0.66082066816644824 1.6489075241679643 0.044226064135706948 -0.96560976215027494 1.1433021263641658 -3.0711246970908737 0.76234633940243857;0.33331667592209979 0.93929391127377659 -0.40029351322169782 -0.89908432789611803 -0.17999493082312942 0.37449834288282796 0.21098988752296249 0.080341870434241541 -0.71164855458812981 -2.6159060456920784 0.49316166296894826 1.1579678891451834 3.4963128573416711 0.11999375178451384 -0.31217176551952008;-1.1386008417429525 -1.3457555605016236 -1.7859166391387076 1.0375465260811596 2.0095026321531657 -0.50706962149186086 0.31603861099045572 -0.4020866286404029 -0.38184970280827352 0.1739656414263917 -2.0523403308073918 -0.32490601630400145 -0.88843292493159742 -0.084843538444102529 1.2489213119250375;1.4420749570876186 1.2792239618670262 0.51253341815414921 0.70189283192375762 0.20534167730228034 0.1273015886401892 -0.13200377212594411 1.6925880162048603 -2.213920748990315 0.88113334348883876 2.4576286411710164 -0.11377876404079534 -1.0950781393667259 0.45825327020059564 -1.4014193275606299;1.3341182711245758 1.6855212905864123 -0.86804723418298579 -1.7760024109884252 1.8472699814885845 -1.49465673403874 0.31022588893645975 0.91972412318447438 -1.9731663759997347 -2.7563068381647913 -0.28281445162776464 0.94091514443314195 3.1130996649505938 0.12346257386468874 -0.27860930469652445;-1.9001217141618261 1.3455975457459013 0.54230335372759331 1.8970893537570628 -0.85022476512496103 1.1675905777471702 0.36761646119217489 -3.1482151683601924 1.8715811422107551 -1.8927508208009654 1.6605962843391 0.31665723278171415 -3.1227327044279583 -1.0945387668662738 -0.29614209099031713;-6.1681167881060199 0.55438486899873762 0.90676464850891936 0.22397588910912819 0.9838505635399436 1.5647974733160084 0.29599595150475883 -0.34700562322761386 -0.67542545540761478 -1.7899164096478175 1.2824961256358753 -0.39613438376637622 -3.6332675954114992 0.95471334859995827 -1.3316923284532547;0.19195883153768575 2.5360305819599729 0.031962711787515599 0.22875495997129994 1.5829104758330477 0.52060902673836174 0.055158135756359028 0.23853035705523915 0.9652672722910558 -2.4418742450133109 -3.5336119216432329 -0.4477123137111827 -1.8908004632585205 -1.5731988819401586 1.0586811444049662;-0.7750485106371473 0.88700404938183708 -1.8653268336129925 -0.01647130080347085 -0.0068267144842400693 -0.20768028600403701 -0.40100851888788558 -0.050097410439162868 -0.31317104598691986 -0.87853076069905289 0.16131688432858449 0.39412601418111587 -0.90520441732841128 -1.3138552041154679 0.15091628196949275];

% Layer 3
b3 = -1.2701845275619881;
LW3_2 = [-1.9992709599118335 -0.41839766491135544 0.56552495624128984 -0.59372040341896515 0.19565273024487972 0.31232210018176537 -0.17689713750797431 2.0038773662575315 0.19458593380784647 0.19521012494929488 -2.1941843853390592 -1.3769489341518881 0.24751414883489081 -0.68029841079374287 -1.7810801807361376];

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
