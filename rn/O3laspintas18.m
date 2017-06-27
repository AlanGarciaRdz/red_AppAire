function [Y,Xf,Af] = O3laspintas18(X,~,~)
%O3LASPINTAS18 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:48.
% 
% [Y] = O3laspintas18(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.241545893719807;4.5045045045045;0.00280033604032484;95.2380952380952;0.212765957446809;14.7058823529412];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-2.6517215620663817;1.5694075948129906;-2.3256824784380377;0.86106339459986414;-1.5180097282255252;-1.0191702014414201;1.1266555617276097;-1.3889920515837719;2.0640052970376597;2.8947436645809721;-0.71517377314813568;0.91317185522170485;1.5176680906245559;0.82022171304268698;2.3264505041868193];
  IW1_1 = [1.8432709016893707 1.1049056810442499 0.4814600573537724 -0.94542609792998922 -0.084974800474176576 0.043589905364499471 1.2369781507403861 -1.2733626394883488;-1.0778647725541706 -0.59951665894087691 -1.7106874842437998 -0.57540323341542554 -1.1893286835970829 0.33455036482161082 -0.48645461213552549 -0.59131143935927832;0.87014199652523294 -2.6171812516871475 -1.366253158129183 -0.29774362355393424 0.25816408101858312 -0.29907087437979446 0.97808844082969393 1.0999700372947434;-0.97633869048113253 -0.22714557745093425 -0.04760502076797607 -0.0097044901886950245 1.2783427435488404 -0.46545831172698121 -0.19181487996689994 0.96703047559316035;-0.072430987881898876 0.78649055623750141 0.70662527555236543 0.91941989985172523 -0.22034242733907658 0.92743611640269374 1.1834738484914404 0.77529826613864583;-2.3182284793271184 -0.24870156151827721 0.23470850718286262 1.5127027792601744 -0.16638388430061302 -0.2808171102390713 -0.30430941929721533 2.0033180354256133;-0.93222600957786306 1.0282300007179683 0.13900126111745675 0.074207651871383173 -0.47235188516063836 0.35197350700983238 0.67473234727051112 -0.56381480472220014;1.6273205069474508 1.0452291764394337 0.23608574284009909 -0.011060029154928833 0.34042708683270179 0.082575750549352261 0.51594131240974961 -0.26763102269396333;-0.97806453040262065 -0.78560416735328675 -0.29042654035288568 0.20218673059603884 -2.0537166194931791 4.1466856794883196 0.062092224337624152 -1.4421533706644132;0.64711887378760657 2.4712065722703165 0.43219874525802821 0.075798496124478018 0.1691438821192042 0.42333157462381166 0.27995856220756443 0.15431759223259237;-1.5561400098722578 -1.9037596437092266 -0.7565555675421477 2.2159732549974738 -0.17010226860446243 0.22229718657484782 0.52466392274476137 -2.9215988775182642;2.4304254143102981 -1.4498949744262293 0.19746040126435246 0.19423460448834015 -0.44029142747989036 -0.49587175204656503 -0.32116345057362239 0.22617388205841532;0.67723666043887476 -1.1077076279599931 -0.015509333090597171 1.1040925132937289 0.97373944362052256 1.2400065286185102 0.752987232086887 -1.9534194154511879;1.42648655275634 0.14796329905703054 0.01776142153634061 0.23121587253115741 0.37958811843434415 0.28002109273672021 0.26775222287469819 0.70692412973861152;-0.27986170583601827 -1.0668698872082951 -0.026704351998017781 -0.55847213470935464 -0.26486284391401371 0.78729539344268451 0.037969139324478596 1.3158189815988555];
  
  % Layer 2
  b2 = [1.4943668255296363;-1.8605648143810241;-1.3132848893357931;1.9445060646904098;0.46541884255415467;0.0067684998903969895;-0.7283001580770847;0.49083416566576116;-0.36081885100772271;-0.13447534304644759;1.2489698926739818;1.840311887738558;1.072045188399867;-1.4798048103301922;-1.2557588770009906];
  LW2_1 = [-0.92641565503720358 0.28549394019537566 -0.87863782019321801 0.29181519373000786 -0.35554124181624219 0.56462191466244438 -0.10124545052507017 0.06501426820471265 0.87628420290778886 -0.64202899199718588 0.83115545197645602 0.94482435803981735 0.48647325920659124 1.0874266959768557 -1.4791290840856275;0.33742157566050612 1.0826835781487356 -0.54026415433514519 -0.20798921106569052 0.82611576355669747 -1.9193140948481036 -0.17285737308883392 0.67221094071445309 -0.41522614566593657 -1.2100671671875691 0.19955438351134033 -0.29313845927760263 -0.92163932303840501 0.31098708369772071 -0.85695053650365693;1.1687572753073283 -0.03379289253674065 -1.3808287181483392 -0.9193320312682387 0.75741938881330384 -0.0059338001225425312 -2.8462803880468934 1.3434733775328853 0.68609974681956942 -1.6203337100547028 -0.71006302962985868 -0.012438553666452598 0.24150026646778988 -0.033521625385398671 0.52503295727973731;-0.22005039225345008 0.44598357557014939 -0.63937789422845259 0.0614785646289365 -0.5629323899216464 -0.17757436851791847 -0.80870960458063434 -1.1189509311520296 0.35566616897634368 -2.8932177551073113 0.074422669796712762 0.31107095370002269 0.25991611914376067 0.56892516180908104 -0.200473948850247;-1.7195153010607516 -0.55041154493454081 0.97488557975978296 0.59712116872055787 -0.22430586547397696 -0.3679095990041798 0.035371452439741456 1.2436317548975482 0.04587407981474971 -0.43216722616732162 -0.583477929134395 0.41543712509210973 0.66825388924903462 0.22181492653529689 -0.21192763338852028;0.70482976086876004 -0.55086213394118344 -0.24494347733772387 -0.52506635613891917 -0.29910587285199486 -1.2059523097375759 0.23942440273268009 -0.72135760945128558 -0.059709882229908799 -0.15166163507650388 -0.006577816547929459 -0.47257123101050547 0.11357718762596485 0.24398587910876979 -0.10852401508788853;0.2051669492425362 -0.64630041057991461 0.23327584337320281 1.0940444364118349 0.60278430788417436 0.84248056813071981 2.0901211390824064 -0.087203476618488984 0.85422366796546756 -0.63752770593074826 -0.80986016415847495 -0.27859668527743592 1.4252341948946652 -0.39234103303003365 1.7668084453493835;0.41131641179202511 0.32644090697081779 -0.74081506998236857 0.0029350656787185542 -0.99724153781559843 -1.1566248136601467 1.3297479251588122 -1.0295255549553166 -1.2393185310262447 0.60360888029322002 -0.49050168140115807 0.15134464364894482 -0.24400939814674188 -1.3559734879898526 0.0043444772650785427;-0.1045190655422514 0.017077567940263133 0.3872207439122568 0.5707499026598053 -0.04340531250291195 0.096246963557296644 -0.36429850636670091 -0.33598299428250994 0.22709721507178507 -0.5805644652369979 0.37157680394543224 -0.32880138595990077 0.16608049330106894 0.73380026894453776 0.094706105979356928;-0.85285814323941678 -0.87659864394918074 0.15877509025063649 0.49461650516832667 -0.34781319510662106 0.9741164812019909 -0.87824034803877649 -0.31301777261296865 0.22303439992237045 -0.91267970049657698 0.32996265148887249 0.67147222131660256 0.37889444721797172 1.2613819202642791 0.19626528271243629;0.35209964821866491 0.25442956574352332 -0.30039823580725494 1.3372438349823907 -0.45716137098411408 0.14318941912590372 0.75555773469188914 -0.25410502341974817 0.36604366954570677 -0.52732691477435711 0.11027564907421711 -1.0518835799151318 -0.14732752651646888 -0.9835706655723937 0.42516877873034631;1.3864009684303025 1.427648161031478 0.30076812371385259 -1.3076800788452543 -0.67074984095003065 -0.33212020201542863 -1.7677595579661975 -1.0130277775842322 -0.058137476799467423 0.62363123219057059 -0.45920375078346065 1.3055927458611183 0.071751137179599037 -0.81363989148361782 -1.6523574428652477;-0.1421915263142105 -0.18595295371685419 -0.49988945234339532 -1.0165499196150025 0.57030868370962107 0.10100461594939307 0.26780518206545451 -0.92503972477128249 -0.40409655829221858 1.5670372313990104 -0.35484904919324384 -0.67081055617562546 -0.42299260179534826 -1.9814596852187847 -1.2827970276037228;-0.20822137705067767 0.12635360638133319 0.4794977136138282 0.85318254399551052 0.25312566478743453 0.80899748264772264 -0.048116403645693653 -1.3587175837804844 0.23614767061501052 -0.4007438689396729 0.26423608416674671 -1.1193710907063967 0.12531738335218795 0.54146335639116039 0.80941058241425634;-0.90060489204983218 0.37667388767559407 -0.64438005178391145 -1.1178656881492679 -0.1397642103029329 0.17695497199623447 0.034165053677177287 0.16166135805804738 -0.38190985947400613 1.0353247065276872 -0.42452484246447614 0.057270071635992639 -0.18448586267953895 -1.3830145246786993 -0.12760165392410211];
  
  % Layer 3
  b3 = -1.1257160882119668;
  LW3_2 = [0.33538588387635493 -1.4867354979819383 -1.4535965390717138 -1.9444380743256953 -0.29666424671813779 -1.411784676056187 0.18322702983188141 0.78525960248224735 2.7645706712950888 -1.3101323528708249 -0.80198155357945644 -1.5366704691160424 -1.1759129697118869 -2.0757377137468289 1.6956521937104783];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 14.7058823529412;
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