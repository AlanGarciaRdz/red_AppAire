function [Y,Xf,Af] = O3santafe21(X,~,~)
%O3SANTAFE21 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:50.
% 
% [Y] = O3santafe21(X,~,~) takes these arguments:
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
  b1 = [4.3795977276136613;4.5680104789375431;2.0381057751778293;-1.5632268748028957;-0.096290630613584782;0.0024969442092311698;-1.8267462013293958;0.44107616899204105;-0.87579185017767369;0.67391445801536354;-1.6904274955425227;0.2669770307035027;-1.8535930951916821;2.1589548658185476;-2.7204389674347276];
  IW1_1 = [0.3354385995523409 -0.46465501289206029 0.22877021121886604 -0.6820371060224425 4.3375763487542081;-1.0224536591314515 -1.8029979453691221 0.17716194754726836 2.3503096079487551 1.4207433886108891;-1.8983863674843893 0.70247825937403252 -0.098832421061054013 -0.37870637760286707 1.0761743935173611;0.81144379463673333 1.5664170381737774 -0.2406747271087834 -2.4893266259131304 1.1825116217502774;-0.56972449854302221 0.73607502593933682 -0.774942237699906 -1.1905754336851446 -3.5354650072362697;0.30296084162879378 3.5568348053339225 -0.64262057530360439 -0.16205228341743697 -1.3792051828730367;1.5942205828385385 1.638892147151825 -0.4388043822917978 0.36321204006482305 -1.9098555038656604;2.2486020018364998 -0.56718228300828588 -0.03730979852088169 0.34074057142511527 1.8503453117795818;-0.037738383287264823 -2.2064519673696674 0.95761731097533631 -0.60558978261143293 -0.6611805890128386;0.21533028344103 -2.0118788299716268 -1.2794815239047199 0.39637796982737367 -1.5406280733369018;-2.8949172781178971 1.6640777279685377 -1.3753717442259275 -0.080328398456267242 0.12657844261685092;0.79890923225456023 -1.7049883130628103 1.1335787160146011 0.19414722873107532 -0.42040108536109516;-0.82296316596741337 1.6736538706601383 -0.66641284366272013 -1.0693898373758419 -1.2205415315697159;1.041008484529842 0.35499085147823328 -1.256377271430432 -0.69190404726014454 -1.5861204059868748;-0.67450400578864989 0.98127711490482661 -0.019000055184490279 0.82452809048886933 1.277401618569912];
  
  % Layer 2
  b2 = [-1.4783087739996488;1.5064758166445233;-1.0999774420196233;-1.4269795237315195;0.44114369603404691;-0.66034998876300177;0.60006382564086147;0.11053876698284465;0.62649408519413152;0.65118557061810722;0.57565168380830001;-1.1404198796824048;-1.7025091345201482;1.0712216296502919;-2.6429407037388066];
  LW2_1 = [-0.48198140788033861 -0.049102748110127013 -0.95065686053224552 0.89629031048753205 1.5804360509968987 -0.32637667043722224 -0.42390913205296976 -0.10901014564953235 -0.23145271097418396 -0.90240310326527418 -0.70201787927075199 0.43294220384390097 1.0168901981114562 0.64544034952287876 -0.75151322251959118;-1.5127534845332182 -0.81091517309303851 -0.35264599702179444 -0.28615419147045085 1.7909738615621846 -0.79559586380195579 0.9103663525964022 0.31748565469888329 -0.38684394113723664 0.52054736019643488 0.015716960014226556 1.7239417995924919 -1.1130857288768234 0.51661657260285831 0.025540589276522356;-0.028910708616673737 0.91946011013824958 -0.21812184221781636 0.41060232303044986 0.15787545369645678 -0.97025130653408498 -0.59157987325118155 -0.379583615597053 1.0879618870210639 -0.96286922960128496 -0.16548907191101864 -1.3772316963862341 0.96304754477257726 0.62479847562732249 0.045831017898307548;-0.8308849930274097 -0.28406212727312724 -1.0097304392932867 0.27790476232007633 0.060594956549629708 1.6644267840153211 -0.59549242691776549 0.62770994960072601 -1.8994631240357731 -0.40976751414717399 -0.091758878090092255 1.591261641547534 1.8879599133962441 -0.58552528957516892 1.0989107574606642;-0.02787839081010627 0.92227284546512944 0.65313867096425282 0.84307725644218412 -0.34831083590040235 0.61493585545571716 1.518306677059986 -1.2654441763237121 0.35507078684020793 0.52277336061308799 0.18272347257416902 1.7975635491914226 -0.70910084098321791 0.43744715854803118 0.85630530096387136;-0.03136834103813603 0.73405108327373392 -1.3174674610438071 0.45853369646411063 1.9079354527508554 -1.3073953112808341 -1.0037437099710527 -0.087560349647333335 0.25763198799854359 -0.91079120397933755 -0.016714729503232079 -0.22283599461111292 1.4913680700534913 0.036908838077612555 0.28104323075211041;-0.61891845507721377 -0.12148879609236812 -0.68404295779016777 0.77120531307276297 1.0954446494723307 -0.50595535150994475 -0.36161526661302956 0.26316223004325151 -0.1936783433510138 -0.76544893784506551 -0.69403951594420543 0.52872421578066975 1.1230667544116786 0.36150875738003418 0.35566275535473141;-0.56438471042718275 -0.33002383120925965 -1.8334801137086132 -0.21390126272153376 0.97245639486386859 -1.4508766091811682 -1.8316303494447956 0.45239978837162842 -1.3738875531483021 -0.36251693366699739 -0.89947485784468528 0.45100529319837646 1.5278964402180824 -0.19170642427799278 0.011851464681474029;0.93112706690715941 -1.0837236052125141 1.3067507182557139 -2.6120070737209131 -0.34885773275281151 0.60779567304256976 0.15205969858447893 -1.0565817625839085 -2.9938624524251094 0.087470281737124289 0.56818664704291888 1.3906272029799864 -1.3269847440345273 0.76620823890543865 -0.25756411354965258;-0.38688671208851555 -0.17464650062431136 -0.3809001540435149 -1.8312024971440461 -0.19580645758831774 -1.5385803107786373 0.48307319433216528 -0.34132737986574407 -4.8203381843265101 0.74354923789887317 -0.90201504820224832 0.76004179713933673 1.4447164946433098 -0.30666421763237928 -0.56778610070835078;0.61155143137796597 0.34458803320957526 0.82460285388064858 -2.4304609892248483 -0.37216363930503038 1.4797638420845638 -0.71753264799663685 -0.55494605390003593 -2.7017620074864701 0.77593401771767012 0.22075647448979241 1.0168062644365183 0.25338330146235377 -0.17342061661147082 -0.43639763533110681;-0.097031528821256124 -0.99857701892469497 -1.3654247483086404 1.1298661010685025 0.019893266446175079 -0.34384399552085571 -1.8738786683023647 -0.95443175461838581 3.0333042699299466 -0.48797714331052389 -0.92982479106424398 -2.4786424243078367 -0.13717389095897289 -0.52579013403052866 0.38345143393057024;-1.3936297587744715 -0.51689822642668193 -4.154411587359653 -0.18401066964613461 -0.19387943866369181 -0.0017983265248975415 0.39281217535955926 -3.868450790632862 -1.1321236590196837 0.82000747649642525 0.031159040310815483 2.5589042776435003 2.7297419099440159 -1.0368307368039142 0.77829888661910251;0.12494437802978112 -0.30354801544545146 0.16282674810287495 0.45730064988792479 0.40348204442968066 0.43102486287143849 1.254518846892104 -0.85866442699799683 0.21224329866399907 0.17101138761146972 0.12417645023135644 1.0867213262343991 -0.41766347144298638 -0.57878571433777393 -0.31737740440922901;0.14275215415227932 -0.58752521893468634 -0.77608288007798021 -1.0521793548717977 -0.64552647144952013 0.19755109636782758 0.20959603667742613 1.7774953778977112 -2.8044873166983404 -0.19125159797805394 0.12698703824998736 -1.8507271637926592 1.4491641286747223 -1.2784009089591257 0.10893251444279327];
  
  % Layer 3
  b3 = 0.14385783242457165;
  LW3_2 = [-2.1983961994950216 -0.24920564600946563 -1.605520043992019 1.4868953853453022 1.4263546639772193 1.8425775220857836 2.3378940252336826 -1.5192552117019809 -2.2966985840060712 0.49173090885199944 1.955584964093193 2.5233603275904137 -2.9465087596554289 -1.6553724694574357 0.93860954938580987];
  
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