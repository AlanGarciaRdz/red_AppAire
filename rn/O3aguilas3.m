function [Y,Xf,Af] = O3aguilas3(X,~,~)
%O3AGUILAS3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:33.
% 
% [Y] = O3aguilas3(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
%   Each X{1,ts} = 7xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

  % ===== NEURAL NETWORK CONSTANTS =====
  
  % Input 1
  x1_step1_xoffset = [1;1;0;0;0;0;0];
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;5.42005420054201;35.0877192982456;0.0561797752808989;0.00588581518540318;11.7647058823529];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-1.4981952152948204;-3.040062490952129;-1.6469574948636101;0.29965395254489063;-1.6459603540690444;0.016318513625967139;1.0271049915062898;0.010357367585591672;2.0707454775951559;1.0480282915090975;1.029626254397507;1.8574025692165834;1.6396371277385264;0.056403364498826276];
  IW1_1 = [1.4930961451019593 -3.1100576587985662 0.6881414023694109 1.1129349944920375 0.78653675637855724 -0.43909567417602718 0.59471683838857536;3.2291003049151099 -1.6960231790949956 0.063736640280793178 0.051311815060239296 4.2711734339303478 0.81494487230400425 -2.6307576624857347;0.5803440704615549 1.8480510000797581 -1.2838756231580344 -0.54939180597844151 -0.78692295430616921 0.37128215368443118 0.65168642050315728;-1.097954305182447 -0.20221573744291785 1.5483107567775747 0.70761962693566205 -0.082413620441771043 0.31596867048404048 -1.3144731327301922;0.78694244238396838 -0.98671371446181411 1.0463099430136864 -1.4449681121689339 1.2089669977302306 -0.1900297848731074 2.4639646869717748;3.5414618593174549 -1.4820086729937125 -1.6511590183356082 0.51660085954834933 1.4578703667553208 -0.074389399114566754 -0.75476684641116365;-1.7196960075541756 -0.45516473011497527 0.27169058601606788 0.49033542509176381 0.46232541477439193 -0.3067939555623852 0.91841923379891566;3.1396807703993916 -0.099340484479116642 0.70704074002441963 -1.0295396620307249 0.3662724358231737 0.03443493953496523 0.78509845369691034;-0.82796931729612289 -0.33772977416410083 0.415010474253381 0.43925743873277967 -0.0046010238406318793 1.0977541403876154 1.0662011915173382;0.91897257992301817 0.32838289119362196 1.9736494214951492 0.81859146364169888 -1.3299905929313744 0.84223201307499351 0.23219868253185727;0.45343299332313808 -0.20424896344686214 0.34063205219814324 0.14964688914319083 0.070093150740448779 -0.075408195817815202 0.9324883232546024;0.44552610424830685 1.3407201465347769 2.656025613788414 -0.32574134417623679 -0.21466207540464602 0.7383101310101855 0.20957429998037189;1.2440519845272713 -1.5630197335862497 0.42518960103946035 -0.85447390381380761 0.487021378232111 -0.46161908797275836 0.34507171543596005;1.509887473462344 -0.11145886643644651 1.0492156088569031 -0.051905519451653413 -0.029673380454389657 0.0015560783938185919 -0.7843234307282223];
  
  % Layer 2
  b2 = [-3.3559398102857547;1.1825802951829247;1.8093197337809042;1.7353240492144184;-1.2778562128459334;1.0607670186599607;0.59942688549533518;-1.0176915955539358;0.042464493647197475;-1.1800898862593456;1.5277394706532452;2.1925557594626142;1.8226643228386861;-1.0330432481212153];
  LW2_1 = [-1.3712978616497467 -0.33778839351709583 -1.7006671277271508 -0.94460494653127069 -0.50807275426885545 -0.23612389999418823 0.52401947045585395 1.4381624821439176 -0.16186902689012023 0.54152955829003036 -0.739658518012974 0.8459390461621622 -0.37585355637030554 -1.8080088923111057;0.57747768642921438 -0.28307207293900827 0.29670458378582548 -0.66520831819786441 -0.89637798695995607 0.16407177172185017 2.0425593615644329 1.445766239444543 0.14116888028348271 0.12244222636171048 -1.3045790600510043 0.69811634772030251 0.49893286024116063 -0.59085395385156969;-1.117430617627281 -0.6041753635644781 0.029658132636594371 0.028033652600393078 -0.70860072339891489 0.87791697477647945 -0.40557097913902451 2.6394769028006055 -1.1251402171279736 0.90469565307086974 1.7754775953304043 1.1304097783408558 0.51379405822643542 -1.7572950412267481;0.87152766230835621 0.090120780013881699 1.1877015576433423 0.68205997673448093 -0.085516576522805199 0.064908543182572012 -0.40054152338676963 -1.0273282733525437 0.37215458094320064 -0.44836059884749924 0.56909895631539886 -0.50796701510131703 0.36348959457955599 1.6341010861747731;-0.24241838666931437 -0.10906780247080089 -0.35277858888919872 0.064822675500379304 1.1791647564845467 0.18908317404461822 -0.11794684049849385 -1.7415659069319882 -0.28617143379776933 -0.045348741695472178 -2.782661600849436 -0.036975477808925752 -0.48392500369757374 1.7861001671549308;0.60653053462613316 -0.7806291793923259 0.18388529275663801 0.49028555565772663 -1.0903791368148619 -0.091817292905878867 0.078797256215209416 0.87998147479524258 0.36602472370718953 0.67162328360108503 -0.84076855182114851 0.19346839775127939 0.29440260028714715 1.0994719131338568;1.3997865469889348 -0.63936865044453395 -0.63689827065827331 -0.3772224275643522 0.3836039294887742 -1.1882932658409715 0.5446397253158235 0.60961455486184912 0.98686568515522699 -0.54782594791217676 1.0707348503439524 0.37681735523911997 1.1299187527182899 -0.42623414687913486;-0.13425754852666583 -0.25064456030683735 0.14635673869501092 0.77074771344334025 -0.89167534110882873 0.035567159838867268 1.7520306069750535 0.75534953922821213 -0.22199923109235203 1.3807939085972003 -1.9327381190953752 0.033781908655812612 0.0066086487957430808 -2.4960961999507694;0.88223415648664127 0.26981408108710658 0.035027670236695778 -0.32085899773243493 0.53271740186004246 0.058673356297065521 -0.84767119238777955 -1.0541198285188469 0.0077151167395404976 -0.15665720939195399 -0.096613662728233726 -0.44425417521751337 -0.057934489702491314 1.2336905340881918;0.1722494513717914 -0.014364890969287645 0.37359498529913854 -0.11506005333011915 0.23325161650616519 0.46750997687698981 -1.1069346309164603 -0.55885888839650122 0.39593675436379366 -0.39148606785232304 2.1469916760158974 0.10817066025233546 -0.68369828422313994 2.4719134338225679;0.65717894045936898 -1.2578635259577515 1.7337398842678724 0.96199479156524148 0.066496645410122124 0.92644005996361833 -0.46329091551082807 0.8967818741163317 -0.94702778428696188 0.077276643262851191 0.0011239518778827021 0.014345432048753182 1.1749971540312505 0.48674878543359834;1.6560474850670817 0.21982725629424676 -0.075324193873291062 -0.28355100186481219 -0.98403007263296549 -0.46032731439004376 -0.02469926769965277 1.5860727013149787 0.61940470673541359 -0.46297676350368955 2.2792501064186466 0.14874928117820913 0.50991410588946917 -1.0653875005529996;0.76789403181234939 -1.1005318296869426 1.1943299922857669 0.69032081830985981 0.37825745572161901 0.89400661462161601 -0.52810159695126047 0.60493509310147608 -0.95668309222311476 0.091278914138927025 0.027456072762017471 0.26957628936754829 0.93744842424848052 0.34372953075869472;0.64010632119733024 0.21209241681452398 0.044012645740512224 -0.26093026219200088 -0.13678340503589062 0.40826667488019913 -0.68834057246757674 -0.69652894371520468 0.065261070613167022 -0.2297162958655071 0.21147187350806834 -0.31716987679196801 -0.34670183148396533 1.39747580980083];
  
  % Layer 3
  b3 = -0.0084587229074975408;
  LW3_2 = [1.5680384594580727 -0.8004399741763415 -0.43096999313785023 1.7770725033486774 -1.3602678084266864 -0.64173345597124143 0.27476865074511458 -0.43116396877083796 -2.0599231182933826 -0.47464719177179554 -1.7632335582073759 -1.2725943519422993 2.1457199160925007 2.0378648878685452];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 11.7647058823529;
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
