function [Y,Xf,Af] = O3miravalle6(X,~,~)
%O3MIRAVALLE6 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:42.
% 
% [Y] = O3miravalle6(X,~,~) takes these arguments:
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.304971027752364;2.48447204968944;0.056980056980057;0.0063552589768033;15.3846153846154];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [3.333060052199575;-1.8727892242754405;-1.6501877943478469;-0.98039850872682177;0.53298976536705334;0.30458112331915377;1.0550919794600135;-0.035755986859445386;1.4736515188476114;-1.5952118157286463;0.14874346262714322;2.8296080494587095;-0.81907039097621381;-0.65383295704178324];
  IW1_1 = [-1.3907271582174709 0.15135288545852538 0.24132715513022426 2.3391022231103586 0.19762348549771649 0.037835455656403429 1.5202135347771648;1.6350420263999628 -1.4619774324168171 -0.18568346604418484 0.3277668644075995 0.22206883024399993 0.0097322199386151824 0.11345565420408789;-0.24041480337152416 -3.5802011747422555 -0.65522830681448796 -0.61664934356418388 2.672007686001606 -1.0644934672153912 -1.6144007539849334;0.64997520373419115 -1.4002309990784858 -1.5365464545345884 1.145998513961147 -0.50630537594139524 -0.22777765031400235 -0.30778152193060093;-0.69045336885908004 0.29771615163319121 -0.55603064250361789 1.4034155170686369 -1.9857796480066592 -0.53618562855335006 2.4440067177864262;-1.4667356456245768 1.8394995386130946 -0.37976051545212725 0.079767691402454766 -0.87779653643700428 -0.49488997729494927 -0.57885873380260244;-1.3301259934868996 -2.1712655442483104 -0.33343222784393617 0.32967745705065465 -0.84331060801309932 0.05778355071193006 -1.5220669123315902;-4.5436853067080936 0.3665422042508209 -0.58066258462895592 -0.082477235125622217 -0.76504686366533281 -0.25189317503061898 1.6581724422592627;1.6917856618461959 0.83655049441190443 1.4722206231608437 -0.23653962127613248 0.93077293263871153 -1.1409495471635691 -0.54112545543920654;-2.5469898715241612 0.19052492553265257 -0.43881033349727022 0.10834045608957453 -0.47879681813083425 -0.16775761782107101 -0.53230621339040596;0.59049905984230877 0.64782703221432492 3.0095257418863959 0.35302286344479933 1.4614666983539275 1.2760424807799589 1.0716221201433862;1.7483881561053873 -2.6785832739585413 -0.45484725984112234 0.65304633555845593 0.047935146518532847 -0.29889917705476721 0.13353887724965219;2.6818750198213825 0.10279922971989132 -0.40281173911501694 -0.27698007155196241 0.23371766682768355 0.067236440413747434 0.39580279784486422;0.18189299503799305 -0.73941104639918831 -0.48863467430338531 0.47514777134200747 -0.16153220266089752 -0.16527005682006596 0.3244816489793767];
  
  % Layer 2
  b2 = [3.6150218126986773;-3.3445541117271844;-0.31968702410423683;1.821780214708054;5.0591861525755615;1.1281913417718235;-0.82331014838623517;1.4177945603125917;-0.38322093508492105;6.9713395313160147;1.4097823458441345;-1.0984189312229227;-1.2800956796387908;-1.3807177755574611];
  LW2_1 = [-0.14730310115439332 4.0104183242053502 -1.3525783480694442 -0.4335512144878812 1.1372647005742087 0.72833061628937701 -1.2015286740561699 -1.8475287513526053 0.38394612666162209 0.87079811714930444 -2.1151390083429185 -0.07652906330681522 0.61025474258028989 -0.76038278823100547;1.559663283039731 0.48997201650746303 -2.3972717024877594 2.9907962600162792 0.9449075561678888 -4.3598818047604224 -0.20455959778907645 -0.71725402385380177 0.0039174935102650127 3.6816906788910044 -0.018976476549394453 4.891564534428543 -2.1248714925766756 -1.0655108111584424;0.26416068073050181 -0.63447255555553927 -0.037802328767484225 0.46366846502924414 0.47224641703335585 0.21289471088499823 0.31461498107374264 0.20644993061676131 0.059742966029908653 -1.3717316579533363 -0.015684036351029773 -0.19526817704847524 -0.029382304253707952 -0.76314539356975053;-3.066028346287009 -1.7192337538011908 0.52424391368738743 -0.53494551501131604 -0.57872887666873962 -0.2373715505278354 -1.9842319547018841 0.46350838165480679 -0.012084557504480328 -0.24738898531532838 0.75664036446170779 -1.2943624908278655 -0.41185803317727132 1.2669131933350535;-0.88452920104385335 3.0940963028199677 -0.44254509218416538 -3.9798997937899845 1.6593777225661477 -0.90157415002153762 -0.46014931569696144 -1.9243863514591688 -2.0199523024280959 -0.52678933247308302 -1.6186801199182481 -0.046025866712216354 -2.1245548058019219 5.9722407903796864;0.7128913522853666 0.62869830414013794 1.0578321749921034 8.1307976701522602 -3.4332491876958802 2.5386078625595609 -0.81746852256426028 0.56800755109053591 -0.19457914320499775 3.0697079512602636 1.0504589645251541 2.7866194145383676 0.66031574926876624 -6.4462759117002344;0.025152521898459144 1.5189967623296583 0.49332632603446153 -0.48724438105566542 0.51880556805319666 0.018419599641923835 1.5275771356563226 2.3592638316177323 -0.0305613340658734 -3.2295929976463316 -0.38033475064837163 -1.2952525652203548 -0.62026245020877879 0.49916496237559388;0.20059347652978121 -1.3095061161191957 -0.41066104110893598 -3.8023598923501662 -0.52676827701945661 0.68385754497551343 1.0577552632670826 0.94151107790981958 -0.61414906646056711 -0.72655971183170187 0.48954660181025178 0.38717853592886176 -1.3330083353036815 9.4498533972668284;-1.2138749281695302 -1.6095971879209587 -0.02259666314854674 0.37891885386994567 0.41437257638934638 1.5680455619840179 0.52354796349234967 2.5514946059050634 0.1193642520249283 -3.5478173297103917 0.92963766966266492 -0.19724778917592378 1.0998580976489274 -0.23807940438990516;-1.188077887464523 1.1284031180891327 -1.370692126037224 -2.3064492087703012 -1.5618104544335207 4.5369531188546874 -6.0219649819272663 0.36795009937904255 0.32376561328452746 -4.4119720009165286 -0.61321271878697692 -0.053825119820216177 0.49020360452253153 -1.0518248427940589;-0.20664583106152662 1.8861165642432804 -0.18090308543616643 -0.9970554646414137 -0.70607826597024148 0.11374302820468005 -1.137823815760423 -0.87960288847316037 -0.13862689751180987 2.188127202169087 0.11450135049673887 0.44116002260850412 -1.9197372438140454 2.1283978602637008;1.2115075071702908 0.79910219370896707 0.60359622953144176 -0.40928939041811491 0.31159494711043523 1.4672070129018386 0.43252718013125535 -0.12431046737252996 -0.2717419555659295 -1.1891561152150152 -0.363078943525869 -0.85920352964010038 -0.18190118578846765 1.4160261374502705;-0.87400986044736406 0.034736705565694796 -0.35445206419369091 -4.2091761763773068 0.40639535001933541 -2.0865918817131033 -0.99160991153608047 0.47164774974043755 0.24798350585643986 0.017872587841775409 -0.90578816566243947 -0.64398361910423474 -1.4137956121749873 2.1123800285541479;-0.847048674454421 1.0149662040705008 -0.085262754245145664 -1.8480292175730351 0.6895127407380377 -1.2796479939337511 -1.2116245196213906 0.32948593761691997 -0.59822349807535669 -0.66897041929913204 -0.52297202093985873 0.41527250966621909 -1.2523517247243996 -0.4048000382240638];
  
  % Layer 3
  b3 = -1.6261898767437195;
  LW3_2 = [-0.37303395144443546 0.36567905644222182 -1.4921078665135914 -0.29548977925823355 0.16900157220659071 0.38190875666399632 -0.82181289505590771 0.46242747783287469 0.39845006656849641 0.32587464431841384 -1.8332992541216435 0.67115044369424748 1.0537688939997205 -1.5206883459161835];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 15.3846153846154;
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