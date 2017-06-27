function [Y,Xf,Af] = O3laspintas2(X,~,~)
%O3LASPINTAS2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:46.
% 
% [Y] = O3laspintas2(X,~,~) takes these arguments:
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
  b1 = [-3.2640727372457969;-4.2835083572049539;2.837909719641837;-1.2363243883418453;-0.96162941998787688;1.5236834138638957;-0.40309402287661733;1.373753047343939;0.22484512971600154;0.81525661195249832;-0.094170016856654215;-2.0520677156890486;-1.2522950827043489;1.5012641098163835;-2.2706031018340513];
  IW1_1 = [0.96170931678071703 -2.9427537248170372 -1.4567369016426492 0.2315478434735897 1.0592811537314946 -0.20921887022080773 -1.2480895034815407 0.97265878099058045;0.13706998706140902 -0.19007551467642744 1.5989328925920403 -0.73733639144159224 -1.5838248520751108 0.0081888605587101988 -3.1980063286803562 1.5515053905437892;-0.50957127759023069 0.55485802615951874 -0.33126353612356718 -0.24131485777148196 0.70303410630253482 -0.4694857870192527 0.75419878117518691 1.8391718732694409;-1.1966599108976814 1.1432565475717842 1.2304506615970516 0.4254003107298544 -1.0751937968296186 -0.041137185012031396 -0.42410130325807571 -0.093092228475614922;0.30692420750439403 -1.3861925775237185 0.12887297381731538 -1.9704495727041733 -0.68260264513158253 0.59083947633768907 0.14629917713026985 -0.36281553104897124;-2.2778742199932474 -0.081393626492586149 0.85301548920432413 0.35742329563023234 -1.0590192590447918 0.69155423904100632 -0.075124397225832154 1.655622102658912;4.2245950136668764 0.62753627254081812 -1.3060857978982272 0.52769404611889681 2.5174374519006602 0.74039651844441323 0.05191378287028435 0.72866125409916527;-1.580724409734297 0.11710810732004533 0.037857056963758511 0.78746310778239914 -0.47751796257528711 0.34953373855476155 0.38789484094173549 2.0359804522362093;0.55301242391680716 -0.4880652030709462 -0.69636147741776389 1.6318484589543216 0.12950511312329074 0.54044799832257429 -0.11531703211136583 1.3785862386901298;0.34117413158778265 0.15133340481464302 1.0316352325868117 0.24623754235080822 -0.0041002903731811591 0.04069423205626585 -0.058613408792975677 -0.3575549435930474;-0.79747731796761234 -0.12365835814119125 -0.083669778401167141 0.88621236927729918 0.22630263743963733 0.4730706770569989 0.72064341067451243 -0.79008016253049307;-1.4480917805889881 0.20341417520221475 -0.12869219744752181 -0.49261629811500141 0.22374132351011983 -0.4198438799031699 -0.3410159651991041 -1.4404168966540933;-1.5719951196264657 0.13100878485944667 -1.4131666654073785 -0.91921514806532412 1.378243363173679 -0.85750538879541993 -0.75973070065733006 0.79990029150288511;2.4070927670175899 1.1701643816432838 0.30280822638252564 -0.80738479331441015 -0.10918771148016759 -0.70397666044097096 1.71711012769446 -1.9190980790229357;-0.91087245122138283 -0.072074878195876185 -0.10535414618081269 0.80727753825999737 1.2094039505735235 0.025693766078185954 -0.25430211871458808 0.20918127093439001];
  
  % Layer 2
  b2 = [-1.3921565020793385;-1.4966754876670838;1.5229618631594182;-0.41235451063209982;0.9607354641151058;-0.63700442587009187;0.49504744248143334;0.045486953815552615;0.10159567650311473;-0.021508392569762891;0.69652547214787064;1.5740881014788142;1.1581745104541128;-2.0085553096804145;1.9874846079398931];
  LW2_1 = [-0.15267412538877329 0.68313427725869413 -1.4900096295287153 -0.47844368876225368 -0.4836913026201286 -1.4107724548467142 -0.20423985820207621 1.4763072078202575 -0.28314822601829526 1.3109138675131033 -0.57497819708664466 0.3847902063311216 1.3779545998535225 -0.017448909694225696 -0.4117681578279711;-0.51665868099253909 -0.49199376857197008 0.058193476539271316 1.2142324121110981 1.2005343599726139 -2.6335966225640033 -0.95343282824608944 0.71547114309651549 0.20282873106951149 -0.11298358815337908 1.0531778819735944 1.1802183972071116 0.041326610463096936 0.73708288508383002 0.32627664062040801;0.22440271840821238 0.45701495964943878 -0.25744048515041457 -0.037952108977179475 0.18666126489435808 -2.3456430253977785 -0.71497518003095728 0.94005860447411449 -0.59469497902134427 0.81597143373058001 0.4043640542150706 0.67440323129479485 0.69173785209817562 0.50478384715409141 -1.0053455757413652;1.5809459096387681 1.5755156080307207 0.32283225545939853 0.26531737952468848 0.42946986238426782 0.94493279785072337 -1.9410281516374774 2.3535589907858765 -0.60386052289449954 0.34289316713818013 0.18616903481180005 2.9969851702644497 -0.57081321323622058 0.097901853588174007 -0.69931234070045656;-0.20400257609213465 0.022294873459903504 0.15721517867670545 0.87030622791940904 0.34365221930697454 -0.15842286075832002 0.21565948537630567 0.84932657663705424 -0.78733311278731899 -0.48365203756449904 0.42198008824994016 0.51489205938639182 0.077133062778895256 -0.21264446000250076 -0.47899893419329459;-0.28586683867293883 0.38247728445268497 -0.3156274496416458 -0.14335290330013278 -0.34674266160358036 1.0416840689155644 -0.24418481674644191 -0.42205702794569416 -0.78565394033762626 0.15163676680489996 0.43108602498776072 0.27812440597609167 0.017556967439657171 0.25474757099861883 -0.31104616988215639;-0.77109759897033281 2.0947661183587352 0.54184112193884371 1.4325879462812825 1.3907507073249636 0.75969400450438651 -1.0859265487855463 0.50896177251883334 -1.2570418756326942 0.29855796735438295 1.0969305144024557 -1.4298816259219918 1.0911298999667736 0.26446992621930232 -0.3349122286572504;-1.1688910405651292 1.8674731361564727 1.6305482526333959 -0.31564000681794163 -0.48581601988872947 -1.6825029020272839 0.034469511850287182 0.94551220216525766 0.71395392449251316 0.30663191103497428 0.0079921252649896267 -0.21669508173958715 0.81080924557409917 0.00058851747645452535 0.23245629844362928;0.53886740561519819 -0.92408891680779048 0.15746938439402017 0.25627645225692602 0.38798599973417108 -0.82163132814950335 0.0071149050734174348 0.43398809960335166 0.82491857536461566 0.020291016324484948 -0.24676251833258794 -0.11410143272871097 -0.014837506583465809 -0.0040422608800563479 0.31193167418679774;0.046548199274178255 -0.73127117436042699 0.33202925407903594 0.88419732312864208 0.48729451414812386 -1.0708893392998688 -0.15485886749444999 0.80279285289289093 -0.71682012871999379 -0.31825096079829085 0.90262134448856335 0.1087066475250523 1.053764708974998 -0.11333422820005554 -0.77589610674268406;-0.024003953461238077 2.3357296166094916 0.20815372016358363 -1.6733055269610126 -0.62241294862091801 -0.73966077718993928 -0.404044189958921 -0.65589398448059411 1.8159171323218062 0.7732096008059256 -1.2841703016280379 -0.33907165950458429 -0.055743091008856632 -0.88046226643145464 -0.56001447850743524;0.26122929217931568 -0.52758149714084535 0.22966061717767691 0.61523805029811574 0.43835817263986399 -0.77765642248661204 0.048295722057607127 -0.4063547484058283 -0.21518704508436881 0.13882953041349874 1.0269621718327202 -0.17825583772674386 -0.56487374776938926 0.48702393754979312 -1.1914316693980773;0.67556218876294538 -0.94587585913817462 -0.66134001312490376 -0.75070306895374894 -0.08750842910936435 0.98523675870282434 0.34104054177302462 -0.51331680006546121 -1.3055663146874357 0.26929676349225667 0.35385078274042903 1.0051604345097616 -0.42187675030828325 -0.33557477551263248 0.31773585853837127;-0.9085648461328758 0.4193024891568517 0.4689216507133111 -0.10729181149741807 -0.06126488538005484 -0.17999238615930724 -0.20640008576962471 0.040100699210287978 1.0085469362065298 -1.3999667180128579 0.28357405285571874 -1.4097788553536224 0.227997950795053 -0.52461363959969098 -0.43506906195729894;0.93604041433836438 -0.70673991189597962 0.47477871708649055 1.0543916287060511 0.68800764683429882 -0.41076610189899398 0.24279863537701155 0.81903793125901891 0.091822190011257895 -0.31877929242434749 0.37397227720034948 1.3497078580158395 -0.37738271897854758 0.034085824867218451 -0.48593248421926083];
  
  % Layer 3
  b3 = -1.7334369312382671;
  LW3_2 = [-0.89403860537022017 -0.25766650616811038 2.2514773709811329 -0.42287698586032124 2.4098747703195689 2.8774020737347619 0.38363223152329978 0.43405236899022664 3.6306851015779511 -0.47866045375827676 1.1709566042218171 -1.4505096297307813 2.402329242236291 1.8974733655616181 -1.3720924634448592];
  
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