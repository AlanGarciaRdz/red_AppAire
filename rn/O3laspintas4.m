function [Y,Xf,Af] = O3laspintas4(X,~,~)
%O3LASPINTAS4 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:47.
% 
% [Y] = O3laspintas4(X,~,~) takes these arguments:
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
  b1 = [-2.6560256130275324;-2.974240180074772;0.23239763168411756;0.78089787027246038;0.92389183446114809;0.25088289806843894;-1.4021622602321566;0.49075751615812491;-1.0389275359557792;0.76253243764638112;0.33554795205414911;-0.62433779939156442;4.1500352668249176;2.0181161629298385];
  IW1_1 = [1.6539123135490181 2.2333628707540201 0.57332971966729085 -1.3402970000348948 1.2371751570578633 -0.75411126321373889 -0.52925561603400073 0.42413296350327256;0.08132840168258007 -2.7032038064802992 -0.40627290545914457 0.55405755034620452 0.51954271347754277 -0.58537760005061601 -0.13644887335330086 -0.42329902898564209;0.21532433266854609 0.18077419258745975 -0.16130855866262961 -0.43795408354976662 0.29811817708480898 0.092800766931829912 0.17203532971645749 1.2960823810589659;0.28063101633684706 0.1440044865842052 -0.53858043756732488 0.84372815979633464 -0.40492408912916855 -1.0396154055269582 0.32722253648831834 -0.48755721144933739;-2.3496215876204061 -0.038466801681011208 -0.22238313546781149 0.047093703358225512 0.034536324954766627 -0.22810731594343023 0.10598219556558737 0.82936728545827654;-5.0818228004912278 0.2721106158734769 -0.15598146321485706 -0.59448309185745118 0.41327418727694082 0.40925876317481974 -1.0631499295071203 -0.30138545711118886;-0.87150316331819366 -0.01334211030857318 -0.08709066747446105 -0.19356225565537208 0.35325422498224202 0.1113227819508566 0.51272406797590708 -1.6151004345372775;0.0059932716123686086 3.3005106513023668 0.32533536058920404 -0.86012292578023308 0.00083569546389838933 0.11829809883421855 0.36353660888727668 -1.8959909653550304;0.36929595579990221 -1.6112722047967323 0.82972644889502023 0.68588986003733432 -0.84710567313714868 -2.5391455861337136 -0.1132816370450449 -2.576806334059035;3.0403360087923357 0.58129726899293976 -0.27847850545927555 0.9591471890680765 0.15879820612327206 -0.80026919131053886 0.45365199240399345 -1.4234816344885197;1.1186358629877338 2.134277513071134 -2.1863898733934959 3.4650747148389245 1.2299139153256058 0.29152140084220407 -1.3835921288723698 -0.97548914241467699;1.5407467982416834 -2.7854108156908426 -0.59231770728829181 -1.2217173173047453 1.2513227182550373 0.76773272992536112 -0.097751837480410664 -0.27911423858485485;0.05773631713259178 -1.02488624511669 1.8159813571701893 -1.2748364901828309 1.9327498456275054 -0.24376674048382282 1.0456625988948076 1.6049867670663989;0.42671564408215185 -0.41460267767056252 -0.79573219248747007 -0.87642265085393578 2.0804387983144492 0.51417565552152578 1.7606053580228525 -1.2729816266655218];
  
  % Layer 2
  b2 = [-1.4786675908398428;-0.38126835285414362;1.1436642455655137;0.81069170281691993;-2.499142853343149;-1.803012945116516;0.87713404105158077;-0.28955286801796853;-0.95647996902131116;-0.76500767241857814;-1.7528920203470177;1.5011100603495184;-2.6424978412618607;-2.2844552943924872];
  LW2_1 = [1.2438928188847906 -0.14844890923800078 -0.021948704809360179 -0.7730125085882037 1.0256623133924123 1.418377075149813 -0.22530309908585569 -0.86867291848085615 -0.6816255245563223 1.4054076410644418 -0.72772657335273438 -0.17795601980398776 -0.91753097574793496 0.97457891468025315;0.96248689335853965 -0.35894707754754401 1.1110566467412701 1.2496662609918054 -0.73509195578058362 -1.1208686758289057 -0.74246894284908405 -0.16997114670853572 -0.26016031522863525 1.5881451247466065 -1.2618331672974556 0.73229921785224594 -1.917616040376231 1.3369781210639546;0.1837254010778186 2.1421994762597207 -0.78085793284004856 -0.34226850860912028 0.58655985649734554 -0.77450239997669923 2.6015341318524494 0.14365186650056366 0.006972570581230339 -1.2166360269678904 0.11120240032449707 -1.2167931611644169 0.029439368249370539 -0.69861137145107743;-0.84659903669311298 2.0404856405735101 1.7155407668681739 0.15759393411488157 1.3128241508112664 1.2102553834866636 1.8967088032942563 -0.13504987074963767 -0.46142130649853058 0.0093673490140511323 -0.084847180309798861 -0.51720415381804186 0.23166255213491388 -1.1034189052994545;1.1266098857802644 -0.99903230828661738 -0.94171285366233071 -1.2647092216440559 1.2959693222387012 0.32738589115648054 -2.5391329656834474 -0.28652662401271611 -1.8271132181056533 -1.0841766450612187 -0.30261179108793307 0.90362534091979696 -0.11156435424920116 1.0035248790432896;2.2359380671047231 -1.5296745187322887 -0.12611385010848913 -0.69999067725344677 1.7787390150270173 0.8657022026954132 0.62907348356622306 0.23342260551631705 1.131529058639767 0.88370876019623046 -0.19751566459246681 0.87391903964383066 0.44398919634153122 -0.76081326265169613;-0.35124191849263781 -0.63491820979859059 -0.086885451469715103 -0.236562307290477 -0.28335395993738122 0.57172307922991683 0.23671444855145521 -1.0580767588297257 0.77309237622526306 -1.1009397705680788 0.65212780020791172 1.2873258904013034 0.11349696972287983 0.1821666945013177;-0.93012622223074659 1.7841811831182968 1.211120142258362 0.96336729397813581 0.3215817229345026 1.1585109770023099 1.0770926896496216 0.072677010364252864 -0.17125730292786531 -0.51612585218708307 0.11164555278802767 -0.68260766072208445 0.13504555662459533 -0.37850386888180165;-0.0094959549205717482 0.28668147058525584 -2.3509578816327332 -0.65260279143496569 -0.80099557903567442 1.3127553804293297 -0.89117424470351903 0.27389074078744102 -1.0048954944899871 -1.0082508118587743 0.58884646159708509 0.35889440190876581 -0.22733931062337209 0.43180453674852065;0.58438195861884124 -0.44239291860170143 0.41491753139213944 -0.68407983160827734 -1.3051260425491047 1.0246060493401163 -0.29541487819308837 0.078968436148034865 0.31921908856967574 1.2278429717961459 -0.5065497062602603 -1.0637777939638784 0.14075875006840516 -0.086158356644223541;1.2522368020917756 -0.47503807163833478 2.8745542791251677 -0.39505784446027475 -0.37456723073440579 0.73406292176319077 -0.33333310657905296 -0.47215796158369455 -0.14867290204517786 -1.7750937478661961 -1.0143248745984641 1.0373087355266826 -0.51350186639527595 0.81981586798028949;1.2759769597670014 -0.2666615248247583 -0.091650905206345612 0.26016325675377461 -1.8124885967471791 0.45076283263597955 0.74552927126296431 -0.73380519201348471 0.072475205059523276 0.73530274925187278 -0.59406530482019693 -0.30985394785801768 -0.41150243482675047 -0.0024255876542204;0.32474015017937519 -0.12341596931485543 0.30427747518060322 -2.0584759105699022 0.48822399492266072 -2.3452150130821132 0.13008678957086162 -2.3159400077054646 1.0878016499390855 -0.99225991927182788 0.28399740890962327 -0.077004694381901925 0.10856660547581973 -0.37021417375998927;0.0039461291132385484 0.26147202635107281 1.0779767912241218 -0.66054320941599576 -0.43287931440363719 0.9388679038300588 -0.48277606208882029 -0.35392029940368669 0.57426861449023392 1.2335375794673942 0.31053772920588968 -0.087947554067575928 1.0476358575397111 -0.31706535945473402];
  
  % Layer 3
  b3 = -1.0788687067412461;
  LW3_2 = [0.71647417116907475 -0.55695781939657385 0.15465281129384528 0.59643379751360026 -0.61607240761301862 -0.47220931651393439 0.32416447929894948 -1.5173400410897844 -0.32022733380725582 0.39499018568480798 0.59208768897359709 -0.60748166226853895 -1.1526319161761276 0.75155889193532321];
  
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