function [Y,Xf,Af] = O3laspintas23(X,~,~)
%O3LASPINTAS23 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:48.
% 
% [Y] = O3laspintas23(X,~,~) takes these arguments:
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
  b1 = [2.2377637152186769;2.4902418119642866;-0.14166015985520997;0.34176763384010239;0.32857694503541057;-0.84529587585783195;0.85184860991342004;-0.33648953008001864;0.48973955869658253;2.2024818464014961;1.5391436877963094;-0.97309101662417929;2.8996419777800395;3.9699102311812724;-2.8714214578481689];
  IW1_1 = [-2.4995103808952126 -0.15124211231587703 0.2562627977957132 1.4473326703566858 0.3841132940782358 0.27971946586896673 -0.24136988929190711 -0.42439863770428249;-1.0689912692254471 -1.0114297126084182 1.8959222246627547 -0.10691845551824244 -0.47237912084647043 -0.51840595150297397 -0.62921978503464737 0.8398605999601112;0.73980201988720062 0.59249883038026396 0.46719680378736655 -0.33684745154608575 0.17362618696163515 0.48858571736771872 1.8072214909330984 0.39760379066282459;2.5071991242239866 0.20781225340994788 2.1967149993930022 -0.49753900744503282 -0.15042828153815668 0.62894515743106094 1.7273196273441216 -0.070232256388707726;2.7955639542049546 1.5260531474199379 -0.51864518463446818 -0.072258310832657269 -0.45049791003749784 0.36450157339333367 -0.14979260318961227 0.62134342895367733;-0.35918185304999534 -1.1369391938656057 0.3444343790109814 -0.034597228415644256 -0.23418309821195626 -0.3762651608133023 0.0038878771730800205 -0.60796079983844542;-1.1083210884313164 -0.356027232928255 -0.37347055199661611 -0.51993176040640832 0.18947961327601415 0.37822838753024873 0.67855041029257401 0.77458160396600206;-1.9344607076669345 1.2074749826662579 0.58586825535836218 0.12445255574269115 0.17267541575718509 -0.13324130100065623 -0.53926123742549459 -0.39129077745890212;0.50002236053394034 1.1142158389525068 -0.59435579184474108 0.67736166256054287 0.91249121367134267 -0.056266196903153376 0.92529274173159426 1.3942079443920663;-0.8427327459006605 2.0377009165656284 1.2654652685954701 1.1731830077765277 -0.82465609478096658 -1.4258216567872504 0.71898111126155229 -0.91649442190168406;0.79530716598577611 -1.6622814943662934 0.26032845765106161 1.0498271117481277 1.7730770323881151 -0.15353946729028906 0.32086030426958173 -0.56818875718917983;0.58156206368121555 2.8192551949919955 0.78472248442483705 -1.2660243847704442 -1.0215333004777125 0.011193806956128809 -0.84890544416865377 -0.483145823484468;0.83972129967038966 0.2777153974470028 1.9892476901228258 -0.023991869155631604 -1.424342782640234 2.9191881700848255 -0.50410452034888609 -2.8777178799802607;-0.10224607397943719 -1.5511932678030569 0.070397951762428301 0.4974256632174659 2.4501125025193993 -0.22926914043220817 -0.76541524663034999 2.4893282453176289;-2.3659587134483395 0.41321335302408146 -0.58231268490230581 -0.57606908543736324 -0.10600771734015751 0.35265118894491954 -0.34406597229890645 -0.27030352128354579];
  
  % Layer 2
  b2 = [-0.79438475988043267;-2.1550218054824133;-0.12369548889126354;-1.2260837684446853;0.18207075335059264;-0.10987482635229807;-0.41180184584071766;-1.5755845725738129;-0.19322724933552765;-1.4972579848859502;1.7297738983593496;1.354825309394754;2.1626897735407988;-0.62284702082849652;1.2737428314512032];
  LW2_1 = [-0.8442189966068151 -0.18376179627083319 -0.61662934212680709 0.8926679648336352 0.32179210259547913 1.8882261125551985 2.4251087797782533 0.30478364929960516 0.38612172113070009 -1.7852375589857339 -0.56860029943043111 -0.10072626592593285 0.69449186308578126 -1.013693098274955 -0.44531758160980817;-0.36591865656871647 -0.97640777441596693 -0.18481182275500291 0.4507624147199058 0.86463356319447238 0.50871396119149448 -0.95726995944601811 -0.27225692652533778 -0.76612157258256963 0.16677424831424972 0.467522134542871 0.18286427382103548 -0.20846908253202989 0.28873129342551601 0.66613213085369105;-0.1089091684437207 1.2031679960432309 -0.15823085902587897 -0.59218687774083067 -1.1189398808244924 -1.7028301758793776 1.4874884456096429 0.89962477236401173 -0.20601421491832067 1.0822422563855709 0.64473934125822208 -0.88473866450188876 0.31222657911884621 -0.91602663670186391 -0.79688762288805415;0.71154859077641597 1.3100150370390429 0.36051755339936409 -0.14916161754823279 1.793917831815651 0.21329748678624805 -2.001867692318188 -1.1971759178566113 2.0096251050662355 -1.205054580573288 0.5069298803640544 0.35858068683481042 -0.20406292374573115 -0.71531630523906753 -0.32581032770459889;0.31839387539645492 1.3341496946831093 -0.51984677036047566 -2.2642871007271892 0.21244917080491768 2.662298001360166 1.1364014347087632 2.6411881641253996 0.57843470891528603 1.0331803556064565 0.78940682131474849 1.7014835491780658 -0.79592599412568976 -2.6403276148145145 -0.85085521368700956;1.6451274626743149 -1.6839690616106804 0.4319756872878342 -0.070036200142852625 -0.20372768408919384 0.98775761858714639 0.57789538010130936 0.8785804766964822 0.82844776612127202 0.5374061033373484 0.015105109787504449 -0.14563769449901168 -0.69992981558206091 1.356977621744097 -0.95237850924909406;0.35693976774357239 -1.0603736037459426 0.57821331358576955 0.089838238873314949 0.39581680803426739 -0.79642739630136816 -1.1910179677581927 -0.55137452703630285 -1.1760250935575487 0.26789252278988224 -0.30757970241793464 -0.56497526622871708 -0.8038588247965559 0.6498236275180963 0.55132838758058589;-1.4439599333383883 -0.31127762373132867 -0.73437115542259024 0.43283981499756746 -0.91877378362390594 -0.16921348053342439 0.38309448448640088 0.97873685364307095 -0.53097581265058813 -0.54586416862604881 -0.95669330167174738 -0.027321430277356954 -0.029538921183807174 0.26604626455570418 -0.70020379276802336;-0.28073763800459833 -0.32437774986255236 -0.27706942374979499 -0.53458727483040447 0.45005379604873308 0.71837814187658289 0.62407045499631297 -0.79722418574882781 1.191959288714175 2.5882915843128189 2.2873070840763328 -0.58541483541537476 -0.49455092545042362 -0.068839244232732535 0.42672166135904299;-0.091207342247885612 -0.57646530282143249 0.20463908197170647 0.15891746529228748 0.61747709007293361 -0.44551087464365452 -1.2525273984765686 0.048854845395964949 -0.99294801719782189 0.40416873425003241 0.35449560471625513 -0.4293865132004544 -0.99217719752200484 0.099158248535596488 -0.060760445821023537;0.63868653690625377 0.96735728200006654 -0.37511805334001658 -0.24931282701776897 -0.05600506161174755 -1.6035216440117215 2.0706607580207459 -0.55777240296403219 0.65481890638183404 0.63887811392531346 1.6152724888121746 -2.1312828598251778 0.37101016245893365 -0.57674505330750203 -1.1764716436797522;0.45291177125374621 -0.27099421678643448 -0.34250056752909758 0.36256030867525901 -0.40692900060600118 -0.28070534826370552 -0.37831594451421485 0.0023400481106167978 -0.49890835861754151 -2.0373145731555806 -1.272362296863224 0.81778525029772775 -0.31150518611798172 -0.063325271830327462 0.39680946470715889;1.0545765977368904 0.36412280690773302 -0.12974177142596291 -0.25954976333289853 0.98851437017277866 -0.27303604852068669 1.0592014516997263 -0.35779543833257199 0.28416130364585701 0.68480976785316028 1.7831960602547072 -1.3388499288168341 0.021802524616357816 -0.49219956570000889 -0.017131155346509781;-0.49526905817278571 -0.3277027018607388 0.5101431213423907 0.601719525660245 0.35823698259272918 1.6679556904364303 1.9363039926388832 0.31730196371406971 -0.91725619930598645 -1.7703879199747341 -0.29740812388847732 -0.28407541830585192 0.34433554448570342 -1.0057295359142953 -0.2424954033980278;0.96225282274022239 -0.071559121691602529 -0.38933703509417922 -0.20672467199856548 0.86615559023854605 -0.14006468344299933 -0.34642847316933956 0.1896694029902978 0.014900953797531823 0.60375791543635493 -0.50697455077937337 0.27668642049937964 -0.86854778283336609 0.46042410015144491 -0.54760100116007526];
  
  % Layer 3
  b3 = -0.88744029094023646;
  LW3_2 = [-1.0278224381355692 1.8619963562375985 1.0572774300895598 0.61329205239649176 -0.14551691679062534 -0.18650089916106147 1.3551343737375383 1.1689326775080351 -0.33481322537401947 -2.8918836639209329 -1.2361380123481172 -0.60649798943031552 1.4286629773035886 1.2495979096606973 1.0891893802906081];
  
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