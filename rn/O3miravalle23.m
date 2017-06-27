function [Y,Xf,Af] = O3miravalle23(X,~,~)
%O3MIRAVALLE23 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:44.
% 
% [Y] = O3miravalle23(X,~,~) takes these arguments:
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
  b1 = [3.1471758888572383;-3.4177505812792388;-1.0110032876365669;2.1046251782915926;0.57026651081052604;-0.40097249876444413;-0.83502586909024967;1.0020828249409328;0.05381439675322152;-0.6877207492130486;-1.1761565946719823;-2.004322023546151;-1.6017345490635027;-2.7784638271189941];
  IW1_1 = [-2.8720473522750281 -1.3623933542633473 0.96016149263993755 -0.32666199262685147 -1.5328885729559198 2.5470019729015752 0.39748204447024132;2.4992115477592649 0.16084380429455572 -0.5168018486694026 -1.3576600111704502 -0.19608107034429936 0.028377063129451957 -0.55420371280886038;2.7781441806816543 -0.0837581892161849 -0.49667504024845266 0.55651541709190699 -0.20099149808546315 0.024412196844885367 0.5419049496650995;-0.040335885840658892 0.33496486483061921 0.40278977370743624 2.0511527151819422 0.21490726213418221 0.17166663794129997 -1.0456884216735565;-1.2566731045767103 -0.42362804703353596 -0.10574727776056016 -0.060604664011059232 -0.73518821895759412 0.19232503901178277 0.38839005213088057;-0.84734719533602132 -1.8721267691716204 -0.24999270490241243 0.24033648407651451 -1.4489978048118537 0.13595773990621457 0.019028614462525389;0.54157638199402236 0.77465215789025144 -0.56554042795253046 0.80374789899518839 1.473032721470191 0.70318503493790352 -0.18443402304849804;-0.68790601886278357 0.13321096279987493 -0.19534349992870742 1.4894348280761067 -0.55207786178342633 0.45551641962335498 -0.59383148272246122;0.93939744226206634 -1.7721990024482466 0.35794707494492223 -0.80405031782593461 -0.47317441012712658 -0.55878737792047284 1.2046182151302218;-1.1430785320224581 1.0760885920080852 1.0748257361249334 -1.5164222801051095 -1.3296357078634302 0.22814694853402961 2.2163368286198337;-0.14189617681461122 -1.954612592748886 -0.67375715287082372 0.70280817862936285 -0.42963447122101522 0.23918391020143467 -0.1260280712110918;-0.74699044997044828 1.0239773323392474 0.5196344750756049 -0.70806175496692347 0.22043907862746573 -0.71939049102116637 -1.4138234912420702;0.39426157009126733 -2.293834882494389 0.70655969163826537 -0.78083254550414705 0.055669048288370819 0.1818725184397513 -0.44419646585883493;0.64424779905449403 1.4761497259849785 -0.62842467079216857 0.65002157787834969 0.27425152394750241 -0.83908161838939788 -0.11342562750330175];
  
  % Layer 2
  b2 = [-1.5117261503654886;-0.72770382606049655;1.9795572232038225;1.3361746043898926;0.12367391712871624;-0.40704938428270226;-0.090786928049321092;-0.0069929951961076875;-0.51187461770531473;-0.60913284949441293;-0.19926130393539257;0.75421309724131813;1.7653656643533506;-3.9582484461444549];
  LW2_1 = [-0.088392799102423411 -0.51104215493628502 0.13152404073883633 -0.80100094396770127 -0.71610394071593542 1.1000024579374537 -0.025866610590154979 -0.53446837457370211 -0.17879536668699622 1.6456412997974572 1.6263273240514118 -0.063915751535642135 1.2366415918807689 0.23744030240188324;0.55897798137103827 -0.12474448812800112 -0.52777045855606386 -0.27412261438884411 -0.14556556302512952 0.065376166152927795 1.6831961452303941 0.098540739795911741 -0.94312277059257221 0.61316128641827405 0.77259218607381863 -0.28733636956376685 0.29086606089326644 -0.16636372978290034;0.22942401956401362 -0.050279990764061061 -1.0144586624601433 0.26838288172410052 -0.52566235136954631 0.35760962190006662 0.82606509601060751 0.30648200649945462 1.2091483096325308 0.37932172504752709 0.17562780677853776 0.36268552666888554 -0.69116552732096226 1.1215475870509237;-2.0559074617028705 -0.39246243293474004 -2.333101528314744 0.4333420181646806 0.42179363790349 0.79100530332870922 -0.30868303721556994 0.67172146063996907 0.14608987940083348 1.4786992746492602 -1.2131828667199509 0.64754317998131805 0.7113452243507653 0.52780693641436371;0.19136235079554428 0.10826646230146611 1.6910502381617567 -1.1195626847137981 -0.26893241999107659 1.0010138280676695 -0.29718614760380768 0.76899209274496294 -0.63964183949468456 1.1863694236732127 -0.77532879895371221 0.35245447036418859 -1.5955335124323158 0.037452085705100301;-0.10066458754566759 0.10813758263233772 0.94408868447901606 -1.0719105120105827 -1.8967561139124185 -0.86666448879558844 -1.0573871308596452 0.26968157429774087 -0.42870618750739797 -1.2593006344571354 0.50999121688913807 -0.47959991519738454 1.3315313295241602 -1.0800032258488954;-1.6621471077672887 -1.4439350828971003 -0.97136311164904376 0.62522598329751711 0.013497041511266406 -0.50484609524964463 -0.15870876102425602 -0.38132274843876246 -0.76928115639761985 1.0066590750238562 -0.26602509400207403 0.61458264455963418 1.0385776705486176 0.19939708461142508;-1.4831689410859716 0.31005151597504033 -0.37882074430685564 1.3593977654366785 -0.082027892690179072 1.0403499998134884 1.0357202599138724 0.095966971889805311 -1.3852360382373483 0.50779883354254851 1.2944077296832162 -0.43140713261569408 0.54185142649480977 0.15824617411126063;0.13690961712903918 -0.30401977202532821 -1.2740006064158194 1.1103413153424631 1.5235724544296612 -1.7634104341817294 0.34586238802669245 -0.3837847283223304 1.1780601687832153 -0.70065972420687328 0.62345068718416474 -0.41597775005350052 -0.66619264142148604 0.49790680454725372;0.15434083950491576 0.13074016072363381 -0.54482220831313621 -0.34780091922098122 -0.89993968290612802 0.1017851891585996 -0.51719281901234593 -0.18966681519368386 0.45189429013286619 -0.17210273678682228 0.49117338289509038 -0.021561839861896456 -0.029964502845107863 -0.71491210558033036;-0.27146261577032621 0.1144402589354976 0.49213448827074835 -0.013731759374574224 0.74458927982354628 -0.45767964094596719 0.14523052110510559 0.18456771268304722 -0.96360403858690213 -0.2522087038245584 -0.50353569503389051 -0.13287733760728487 0.55579730458318866 0.013387179700098971;0.17650942544684692 -1.2261558808326183 1.2649511404470286 0.6639324347557396 1.0422867374391758 -0.062077112240614934 -1.3310002924630888 -1.7678038879783642 -1.5352932585199388 0.83553120767598821 -0.072491088228690548 -1.2803845610566098 -0.1595596240575633 -0.76256024589797633;0.83074318540510173 0.057797704665619704 -0.25473412539861684 -0.12755906313985074 -2.4608092683364178 0.10156031951642128 0.33128228977462448 1.0421668288060322 -0.031333047689830529 -0.0080540504686731559 -0.62009050501903928 0.21074547653668604 0.78726715135289116 -0.57298692762372372;-0.79337799237152384 -1.9797772527093824 -0.071597329913118873 -0.74454031846214364 1.6450461789675053 -0.41828526846071162 -0.93359151101723248 -0.20593984041671487 0.68187711358995451 -0.15202400048273162 -0.7050813882291721 0.35159796896150364 0.3022424936465602 0.63452284005748516];
  
  % Layer 3
  b3 = 0.29792499160746627;
  LW3_2 = [-1.0654547874203024 0.13897473848003164 -1.1856024060905566 -0.26532596049611251 -0.31999638620994258 0.45417491741594096 0.32676405440822365 -0.13314164010349314 0.65106537966987743 -2.3318403690520699 -2.3079003917605183 -1.6953990209217662 -2.4260312130339599 -2.0958257949422263];
  
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
