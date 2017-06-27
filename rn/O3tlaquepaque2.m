function [Y,Xf,Af] = O3tlaquepaque2(X,~,~)
%O3TLAQUEPAQUE2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:51.
% 
% [Y] = O3tlaquepaque2(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.171659085057077;3.03490136570561;14.7058823529412;15.3846153846154;10.752688172043;10.4712041884817;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;14.7058823529412];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-0.86063109983050456;1.3811969550774483;0.3165191588113242;-0.43062381957597062;0.28858974706885798;0.22247726298556156;-1.427313810765438;-1.1585393219638016;-0.82937119299128659;-1.5012150823749739;1.7600352645877619];
  IW1_1 = [0.79416789363790152 0.65773311098512188 0.92915942747259883 -0.45333213466303429 -0.13536585132339285 0.53418149822399164 0.30887088133632995 -0.39171591226182018 -0.3877848376213377 0.11351448382303003 -0.42972831999823807 -0.36627959150088257 1.3444863859522542;-1.9436740720425187 1.0149823056467533 -0.52931095382144588 0.17148643359431046 -0.53434192997294883 0.55514742489006341 -0.40744193657862837 -0.34385051164997876 0.81193359605211091 0.27653135089955316 -0.1398954825070764 -0.062280548497560644 0.037440096900312289;-1.1866542960910766 0.026580977510707812 -0.41609356815569043 -1.5344073031525154 0.030756640394748156 -0.36295412286649981 1.2501683642373922 0.25033705547768675 -0.24335023322121813 0.18448726877966984 0.29530648065619108 0.11197367238698214 0.75230890151203333;2.6480775457703922 -0.039666587590584369 -0.28087865051564398 -0.96740333615308116 -0.17737764813305321 0.22229142797457541 -0.21560912911175981 -0.012449545128569476 0.11642465858412593 1.1422178711391218 -0.22433608519235132 -0.1301969943912677 -0.4855507587180839;2.1833279397445127 0.21315632044616098 -0.40184211801063974 -1.1577990186546281 -0.38552034222997705 0.24973768937434934 -0.10693469058724669 -0.0084829401034731342 -0.49670688413883762 0.24528152727280267 0.074959205076178009 0.033504126940320719 0.45090766975511143;-0.42346685823136343 -2.3556893163337644 1.0135931963151132 -0.41412344222521252 0.44517966705121564 0.1364290546958486 0.025510815132562481 0.025437821161948537 -0.73641305588283901 0.26979127199825592 -0.15050887160443205 -0.079061342488824904 -0.26048349121544678;-0.27663459341327495 0.055057472775283188 -0.16827577024410245 0.15969317830009289 -0.028717604725896764 -0.098084774901148669 0.061338030790985612 -0.047475694565299646 0.080550752252767657 -0.15986470400211678 -0.0055879715873222054 0.029755451742405636 -1.3428133704848015;-0.63491507723622531 -0.43553117744374881 -0.15327497668297926 0.25105853363793118 -0.24875062127507797 0.8494530484108106 0.033600997566847243 -0.053643457343213109 -1.0445537429507865 0.39108035239852146 0.19114381367002187 -0.21596500461031573 1.3495929629995032;-1.6053231958441239 -0.14921098749544665 -0.33745487037514499 -0.8510685976777741 0.11485314884767656 0.08938532419981117 -0.3683431547751797 -0.16671989712892937 0.30777808032006382 -0.29185981579527998 -0.46575885917585186 -0.17802406989412325 -0.25102116955925247;-1.2573289602693465 0.2447862796513913 -0.47524569081764106 -1.122623988449911 0.033407308584738275 0.057306830292564982 0.019019969911239335 -0.013461739741887087 -0.48461644626556755 -0.26244379620593628 0.2776928396217842 0.10524847544077662 0.3333455685415691;0.41845034462566005 -0.70961979630041128 -0.61884817034735584 -0.8221827953547467 -0.20056682935393785 0.029814629465238784 -0.60420027936383947 -0.67262750594202114 -0.57138230011436675 0.14028388301790323 -0.13102426924694219 0.10451315763445528 -0.32342610290293239];
  
  % Layer 2
  b2 = [1.9222471135734169;1.0194792625020321;-1.0734878958964056;-0.39371574934271875;-0.20560860501748141;-0.32841259939815837;0.31203266980961381;-0.84674106645552139;-1.215042967829838;-1.6472414694368003;-1.7606315504478431];
  LW2_1 = [-0.083237707506308406 -1.0601948181361096 0.73090617760485488 1.472385023870594 -0.37444760457158205 -0.34373659668378886 0.89047934515810134 0.70108768254470832 1.1615514693743565 -0.39837674447554444 0.39042146331194877;0.20589210810356895 0.44322159415969886 1.3308539789087463 0.61951499116584785 0.28039618384079468 -0.15399278674513839 -1.5471901030342952 0.50326946263667938 0.48613810610060587 -0.6457858403585105 -0.47432636015982621;0.63499516821084501 -0.064309139860725839 -0.067454152639913487 0.13121424790483857 0.047566579750680286 0.26629559476108383 -1.0142177005972002 -0.52960049006369425 0.31995724683206178 0.73009226779581349 -0.7516152631252766;1.1865767204628079 -0.028830822544826076 -0.86278369892403395 -0.35623153836882643 1.1273206080778024 0.25207858720234882 0.56268174988739816 -0.79413284130701156 -1.0224702652918372 -0.81675986079738572 0.74653469989039212;0.102335727718821 0.86405334105176912 -0.24029723210965462 -1.517915885477686 -0.2695184976381057 -0.3285214154790087 -0.99703115311158097 0.45715065541513694 0.7543779316021183 -0.11266053880588267 -0.4647865592420547;-0.53894218173431929 -0.16125507886531798 0.39247640760169722 0.21307127168477702 -1.0908067473891072 -0.14600023430642645 -0.18269540447967125 -0.24910496568012566 0.83045693411618848 0.8566567034413346 -0.34183535991415775;0.91789631717919584 0.82312389930543806 0.5071662806548437 -0.45866708135891032 -0.98707604262116433 -0.57010976981758654 -0.57884388776725237 -0.0022292298623409028 0.2819978934101986 0.66071533631555479 0.64087053025046625;1.0013055879579287 0.88697020398828874 -0.11097790177727507 -0.12388436206687883 0.48725600774121458 1.5402289987887872 -1.1425970375915571 0.50987470027565229 -1.2054095252186874 0.26724453488095107 -0.98280169511036553;-0.31638071667356854 0.071936189297323719 -0.29887983466768131 -1.2316895765386988 0.39687845322256798 0.035695798860870709 -0.65040086294739785 0.46493588521337109 -0.56319015682928242 -0.36504148135224046 0.36058234110835252;-0.35578134820466112 -0.30792964277429846 -0.9122303856903613 0.43262190136088946 -0.47422036386484673 0.69201716800588198 0.93442933928921001 0.075299879242634898 0.30906301066703656 0.52630936068626066 -0.68371696646784597;-0.40533632204705661 -0.11490230846960775 0.16139752219279685 -0.59452896225644736 1.123308043190804 -0.001178558701696216 -0.30476780419728422 -0.42229862589572636 -0.1765290783329527 -1.1274777182531799 0.78029555226358716];
  
  % Layer 3
  b3 = 0.12391018012276175;
  LW3_2 = [0.90901291917618898 0.23363664592771746 1.5055307202464265 -1.3578727715182077 0.54815624331493984 -2.2044579171995959 -0.34004442267801649 -1.5463242625118645 1.3179237117958751 0.94181355255467669 -0.84451229596874267];
  
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
