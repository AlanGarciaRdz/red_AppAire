function [Y,Xf,Af] = O3miravalle2(X,~,~)
%O3MIRAVALLE2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:42.
% 
% [Y] = O3miravalle2(X,~,~) takes these arguments:
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
  b1 = [-1.3922003725576637;1.2058067163745025;1.3722213161167658;1.436158838770595;0.90831149262880428;2.4815709840336622;-0.41734585310145067;0.6476725765343665;0.18623988679497505;0.83691071905184722;-0.42701627449662172;-1.8373000589193924;-1.8672713219117729;-1.7927727432878484];
  IW1_1 = [0.56478732338173521 -0.11240099959468196 -0.28288129603287476 1.0145039534025762 1.4498112217744565 0.2584413542588776 0.23244789659988829;-3.8799105894584303 0.010017578992597824 0.56288750801021192 0.70550928368789145 0.012858910561357392 0.048342309018565843 1.5104820133681394;0.041640420588527668 0.034044898270893444 -0.60371085831747462 0.63402236885077401 0.31494608788275436 0.47408903825185716 -2.8826956072512426;-2.1291175809263514 -0.2661439283716604 -1.365170659150901 0.72473158157586981 0.63639108602978578 -0.10109167672639702 0.84076035645342162;-2.5794796494524235 -0.18588378823115345 -0.44068123638220641 -0.18574687287956451 -0.29936196576315593 0.04573793403089535 0.55101444606747796;3.8936873319683398 -0.073105157795715067 -0.75902643720772001 -0.38140574347903666 0.051348873924313941 -0.04005222351924647 1.9593186377872767;0.58834010450988472 1.7677654146139292 -1.8998834989017903 -1.2979678835202426 -2.094628090637026 -0.634934508219129 -0.3183319546427148;0.40429967251807269 -0.9513077396979619 -1.5126481586615743 1.3910992159109099 -0.40629778765616475 -0.036740576462968237 -0.49608346360157024;0.10416604130893421 -0.073114229535392802 0.21277781736758478 -0.071726858829588402 -0.0015263975528499452 0.0051247379620666346 1.3069512863944568;2.9681209015132808 -0.02834495536593561 0.41911492850159193 0.56753590511761476 1.344706596109398 -0.023036283387492605 0.46742865550050727;0.12148943403597579 1.1182211419262407 1.0886792265838057 0.26494295896177045 0.079847142242173957 0.79158206249787033 2.8792890349410634;-1.9864188993283662 0.017008101032656809 -0.78310174592226944 -1.5505622911997159 0.69500954383223956 0.0065521440128760468 0.76426159171170238;-0.70847399179990489 0.66083242470207304 0.81685520040323567 0.83371726421478598 -0.36290217125123808 0.61105268794698608 0.80540051001411828;-0.13947364784040905 1.2825682104926324 -0.83603615854377722 1.3633622607789344 -0.58024960360924027 0.070344143001368376 1.282595080013907];
  
  % Layer 2
  b2 = [1.5397880341830981;-1.1112801160827193;1.2752745914184032;0.58652767303637798;-0.83722811604314651;0.52623423520575907;-0.05073242159109341;0.09764385306520755;0.64741138825876088;-0.89909829151790488;1.3752668052736399;-0.92532956882971296;-1.1495992046906582;1.3810867444764914];
  LW2_1 = [-0.2586824552132384 -0.16026167219114848 0.44239409629169602 -0.078697504362694209 -0.0078771270685540455 0.50265516894186113 -0.65492702911476708 0.95868655221278298 -0.72031531842504537 0.31546058574617092 -0.25818613143668062 -0.38483644960201152 -0.50671532447540091 0.16382831688301658;-1.3082741884250353 0.43639299890240785 -1.7569846395485123 0.99860102806012874 0.13545201500676257 0.82156777420425742 -1.0218964780475921 0.93623286368186065 0.50748149026854472 -0.2998703910269867 -1.0575021035574648 -0.21836335552383337 0.043043251606626316 -0.50974365432568669;-0.11313552187534487 0.22372884551480673 0.12882130881937842 0.084965224200443015 -0.55193146819292649 -0.1287216463386392 -0.52573083924309472 0.82480873222508444 -0.46805821922119006 -0.60091588541550456 -1.0398771438146417 -0.35814844797211137 -0.36337137620051896 -0.45321676894556168;-0.43685824837633608 1.6069105526754011 0.68812329988038556 -0.75203370367736166 0.29589049194497646 1.2239426945733576 -0.11853164704552181 -0.75809157337520461 0.25058755660435195 0.13804172464062231 -1.7481697562099732 1.150143619540545 0.23895799802380854 0.41081364080734756;0.78103156725206402 0.23819353411927932 -0.51948294231953174 -0.57270680535716756 0.56543363589439433 0.18442194601347645 -0.55280740402991901 -0.61475863909582895 0.14533304839649419 0.12224072596104635 -0.11900237361542633 0.48019968170969812 0.91263657595079484 0.029534981208020429;-0.49520794753961145 0.45136313847690918 -0.44483515545939806 -0.7242948489176364 0.52679532463359524 -0.30531595145221035 -1.5361897182658732 -0.070008700302503862 0.26113852822453432 -0.9044838739769302 -0.00047747961040808459 -0.053853976386562433 -0.58882680905936735 -0.14926935615293974;-0.13931966004947299 1.1244164266460293 -1.5169137577824401 1.0238707902997966 -1.0630978613076638 0.79574804925540199 0.2731322211166794 -1.0622652865780746 -0.2518790242451453 -0.76016814069951189 0.11182599443642491 -0.32931638264779345 -0.53133257651857646 -0.33165998394607332;-1.1013955952563073 -0.31111598852208294 -0.71070011735747307 0.88484482697245159 -2.1448988441993486 -1.0651437322340103 0.20163768811963689 -0.75740325921191509 0.65706548807535881 -0.86964020665859099 -1.2519496112501414 0.6128514422253839 -0.20512912982535081 -0.5802952222676987;-0.13197260552829465 -0.17124842134432899 -0.99274681204559356 0.96858281695177029 -0.8898830410306221 -0.29866539971528439 0.059204542314012086 -0.90931476817625767 1.0008026263435961 -0.44377480209701814 -1.3491814622908362 -0.74493399036876784 -0.28884647880944858 0.30511262111558834;0.041626005208859326 -1.0874446802114586 0.42384457170053147 -0.56954239137463025 0.42919392103523768 0.38753939982500102 -0.8969877441917784 0.59826543800696419 0.023811959529775488 0.51033333875018683 -1.2179055409647499 -0.33957901162640536 0.57373048423379291 0.44438173512842599;0.2604703871639531 -0.75090468717013326 0.20854255247890024 0.78231776470206782 -0.68929778506273809 -0.00065413372006378756 0.086233274466867807 0.20990439574052375 0.0025291630366146151 -0.169031126323687 -0.33282124194224905 -1.3852798238959185 -0.2317035551843741 -0.28745379904892887;-0.14435619732254484 -0.40241640859317107 -0.65684106074119175 -0.30804231695348794 0.47454555847436614 -0.36014179973805394 -0.028769238111029275 1.0936550593006231 -0.36943833842020857 0.083574833837864806 -0.77424708723843683 0.82526674579107018 0.62316816543470233 0.073604195128505079;-0.047010307076215674 -1.4800181109998447 -1.3600946915565555 -0.22140799761518151 -0.87464774150377445 0.33712586973273445 0.28686197917283451 1.2191548980262403 -0.19728604855121087 -0.35141541091554568 1.5369976539689809 0.20462584487875984 -0.62620797555418239 0.018698259404840156;0.93378225289561423 0.79681358575116379 1.338062387787645 -0.071538940328929421 -0.94498636784756862 0.63928017867933185 0.75702065531938678 -0.90222914992334546 -0.23568315618914534 0.028712669820402232 0.43460002469157327 0.19887528273056726 0.11635179435963262 0.93318628902105949];
  
  % Layer 3
  b3 = 0.038296636702029624;
  LW3_2 = [0.99118750135538092 0.60042887701292891 -0.35731728093458126 1.0190804799064708 0.85678396094619036 0.128969203769148 -0.66497850694255922 -1.2465326804026982 1.615265944140692 -0.46179967129603139 -0.38955443307205323 1.0588532715480308 0.80273228085909099 1.0784161034417243];
  
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
