function [Y,Xf,Af] = O3santafe6(X,~,~)
%O3SANTAFE6 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:49.
% 
% [Y] = O3santafe6(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
%   Each X{1,ts} = 5xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

  % ===== NEURAL NETWORK CONSTANTS =====
  
  % Input 1
  x1_step1_xoffset = [1;1;0;0;0];
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.172786177105832;4.16666666666667;10.752688172043];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [11.932998136241334;7.1137574081939352;3.2558303516385316;-0.94868017801475091;-3.4888604005019954;-0.95350704996726332;0.20720192448770353;0.53949488123032174;0.42892536813463755;-1.2276613632732474;-0.85623129813916943;-1.5839704332586435;8.2659327283681421;-6.2113046173300033;-11.76883767390124];
  IW1_1 = [0.36261072935614252 0.61686446276494744 0.44487158350103806 11.653864098118476 -1.4441440590932366;0.41898094485406445 0.0070433075902420084 0.53650864005711774 7.3949590641669145 -2.1072400999830925;-1.2624091473569783 5.7701324867683779 -0.88968104395638392 0.19084645112186235 -0.21508139328868753;0.99140696638859471 1.9312446094100986 0.11495075214654563 -0.59143759097187987 0.24571763815427211;-3.2204215431443819 0.20610508880947165 -0.7768791448062734 1.0086393726587624 -2.1082951010324793;1.7247817186604311 -0.57548063959098461 0.22840125657871077 0.15304926535956609 0.44607932778407644;-1.102777922806857 -0.97898407292741374 0.061067896106918818 0.14446285202016632 -0.21895248557399952;-3.3998318127352145 -0.26517650187266073 -1.1618104003319414 1.5592792320551112 1.5681637662713661;-1.3440453103353907 1.9332413644888076 -0.35450634636698353 -0.13287908685957808 -0.27122685755736364;4.8454256931704114 -0.77394815232603231 -0.13125004392492415 -0.040265242686142684 -1.493355044979003;4.7597343235991296 -1.6959708143563665 0.24840218576082734 -0.7865059719375026 -0.92590839293314831;-0.34090204402381452 -2.5220232134207818 0.17529761470194016 1.4487549799353654 1.1786375831245242;0.45570314985959426 3.155657633392678 3.3262242218571734 0.1278086461819854 1.2527977064194773;-0.47994037199409562 0.16882326137666559 -0.028847597510874581 0.006419548325230744 -5.4511579774212873;-0.20833572062436456 -15.126068005404903 2.8427025315010113 0.92142216895984164 -1.2911910662215418];
  
  % Layer 2
  b2 = [-0.6690762926349153;1.0455176315049834;-1.5994533352518587;-3.0219601604658237;-2.9642812813546087;-0.21025925794675296;4.3546638570649412;-1.2001513919672022;1.7168776888443145;1.5521549418353326;-0.047482577905332946;1.0745412852539746;1.5139377014558559;-0.57888498581705372;-1.5429114751763642];
  LW2_1 = [1.4302952956687978 -0.54607736824529118 -0.26649802237141823 0.10042411113727732 -0.63307319482233737 0.70889995882735224 0.0090619881074427682 -0.064560794023121204 -0.26084832468580021 -0.043905662291124754 -0.37159294435961332 0.34367134639608493 0.84733903073770966 1.6302964027597464 -0.43371268292335785;-0.82603408188281469 0.13008573830672898 0.17527260545610085 0.73952146634949711 0.30383053111787423 -0.21708206458201418 1.0481881616438831 0.06245931548866758 0.23019715681451339 -0.37629449063126552 0.69568888826001118 -0.32493709275528365 -0.85067057657575729 -1.096623238855327 0.34066117197401413;5.0188616591130364 -2.9239682414074473 -0.63275035292900628 2.5228558487269246 -1.065186531743731 5.6151408312856761 3.4330785426470793 0.98462529362820317 1.7833106681780748 0.58679935809682049 -0.018985195700312141 0.68076180193806379 1.3626375715738215 -4.3252595919696537 -1.3294845291516189;-0.51420979710936032 0.17483428080844196 1.366360204582445 2.3087859966632052 1.4487916881277461 0.38829587205500438 3.5092079676818586 -2.7523656472353784 -0.6314129303038496 -1.0566034195392822 0.86925698058980894 -1.8345078460277393 -1.7057252220393024 -0.89304709526417037 -1.0223695995362623;-3.1805343597623481 1.3665549811973083 6.7869480843189329 5.7597433190763638 0.88225741769872557 -3.2392851748321534 7.4566012825418335 -3.3299840169899122 -7.2929505517671149 -0.94092686524167635 -0.60623293530763189 0.95860669962778278 -3.871460593115283 2.1055699350759935 -2.3061468189853946;-0.11432409277358122 0.27308953283095588 -0.02014338874530747 1.449044542242143 0.070208339479730028 0.93109832752662636 2.7154106448274806 0.18473870307460971 -0.13453505427989398 -1.1969855528293456 0.84311393104082377 -0.31712557905696076 0.81790336277761422 -0.92401245051154324 0.057366410942927271;0.2765309691277798 0.78194812102539435 -0.26315133780686772 1.7831620675452451 0.4248714875999508 -0.16639640245256962 0.56399751978420798 -1.5261578306220471 -0.45926715497519016 -0.35167402665852637 -2.6521448477228944 1.7607423302620826 5.2102304216024313 -2.3527515253736548 6.5072170866218482;1.1479677748125767 -0.21586150315580582 2.420404894056341 -0.60819074978672139 0.1364961287117395 -0.10754684367824763 -1.4536292398792512 -0.85262897784191738 -2.834016010965803 1.1275732835077403 -2.3592191910557978 -0.398070676914977 -0.92220118337741697 -2.2809729064912259 -0.32843993509321334;-4.9042687442131792 2.7319430746002094 0.49941014586251831 -2.6974786154668529 1.0329793298216186 -5.6694891398420273 -3.7152548765736233 -1.0422487811807484 -1.609624212980636 -0.7758072111253822 0.13848825801285283 -0.61671880113721378 -1.2851699031891903 4.3935417937623322 1.3361443089296146;-0.46974053912795505 -0.58133361302581177 0.064124449165525621 1.2607462698047252 1.565168451545317 0.47477947604747245 -0.98482693049029379 -0.33289061134932002 0.064883468436394143 -0.45353820212556017 0.28172279037168646 -0.69658477092603421 -0.87723506193755485 -2.0845555538855218 0.16119373152406083;1.2156089557830656 -0.82386716343377298 0.78924643587074728 -1.2486517682350424 -0.19860578882624896 -1.2155041097660737 -4.2502667761519888 0.69793292195228418 -1.0251564306809016 0.56877672957410397 -0.10633346564565219 0.29384907654404813 1.4537095228674257 1.4031032448892995 0.0350271929139052;1.0665762275523549 -0.80166698934464342 1.5256935482749134 -0.60289160324730129 -1.071233125272768 -1.2999654791904607 -2.4050938717242332 0.29856089197572444 -2.3723120072154029 -0.44707391930403273 -0.31142406506314241 -0.039607383856639977 -0.34074710561112448 1.5082766253010431 0.13280119131401671;-1.0285209104889901 -0.81016903644381244 -2.0700697858726418 -1.1966598378173898 0.13637260206598251 -1.9541814863359517 -1.1786169704507199 -0.77874168941539201 1.844858325860832 -1.7633708876165242 1.1087129784852323 0.029933724475740123 0.98808864905649929 3.6079671333719845 0.78013899576145351;-0.29347847999181259 -0.28528639344351997 1.2300317785299955 1.7267926280159676 1.2560739289362528 -0.068369364913847708 2.366798930893415 -2.2508952685382546 -0.073515112222315923 -0.58747775257809565 0.85331774435981234 0.20322632005313812 -1.1450916349620412 -0.82210771959821471 -0.34876198116880253;-0.68798055807066594 -0.90406380146631071 0.79256093374254966 -0.62618865511322641 -0.5536344134744613 -1.9983212914004214 -0.32940973702851578 -0.032153334082768034 -0.81812866643384285 -0.71335871741534751 2.5266595759768848 2.2539754125219522 -1.5548748291544563 3.3791665649310723 -3.6869578398296996];
  
  % Layer 3
  b3 = 1.7233687711514443;
  LW3_2 = [-1.8433671834075707 -2.9296836017122017 3.5821375664771682 -2.0260496533137986 3.6763623903931886 1.5604221682555353 -2.1003217089776451 -0.74900794494157552 3.7597876613160808 0.32723019749909815 -0.69356738373434701 0.728099765925181 -0.73738680099897602 1.8845335810667094 -2.035342380211504];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 10.752688172043;
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
