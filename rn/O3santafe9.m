function [Y,Xf,Af] = O3santafe9(X,~,~)
%O3SANTAFE9 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:49.
% 
% [Y] = O3santafe9(X,~,~) takes these arguments:
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
  b1 = [-0.21081445625360559;-0.036803034649660171;0.45201118366583815;1.4618317962796059;2.4779674607933337;0.13892607828697606;2.0984845202787321;2.2413999164285059;-0.1215267274161476;4.4937632601853528;-6.5310541691651087;1.8500227359506018;0.69734647206521494;-7.2137632250678951];
  IW1_1 = [1.3577117333268194 -0.047979609855496187 -0.12283189970075301 0.31896853110293305 -1.5027889074571434;2.6726599695818596 -1.6761818347661286 1.4624181381155472 -1.8275918024258557 -0.44339651534196672;-0.83024155106050634 0.55955328068780774 0.38928669820866396 -0.59999584710642762 1.3593440010811522;-2.1138495533573218 1.2903648167310109 1.2548667977697512 -1.9518542660024909 2.8061041262080657;-0.9716376516249644 8.2914641925074601 -0.12349170581599539 -0.9894090709892096 -0.30766027180339656;-1.5211269246278267 -6.9620117498204523 1.9503449415046374 4.7579863419850605 0.04069957772490404;-1.2510301611464614 4.228488333163849 0.26229699866526335 -0.26878684676146997 -0.9983919919572376;-0.67597709665778716 -2.2428158735879622 1.4904287598500141 -2.8722554789333388 3.4443736535481304;-1.0799023927705125 -1.1033519547064141 0.84844768149421679 -0.50663945861732052 -1.00660285788547;2.1917528086620441 2.7993355068529184 2.0647050517339194 0.65074407956336089 -1.0444092808264585;-0.47656944708634441 -1.8979958974182123 0.65420440454432627 -5.9128136492059307 0.68643450986401922;1.526982108186032 0.02959976671819501 -0.19998674663339416 -0.029731389677150385 1.8716066027631928;-1.0716702154572286 -2.1507479304439832 -1.3248140818368184 2.3698039037208374 -1.2596709267256077;-1.0060893720450221 0.87206828973754591 0.74647408253954739 -1.2386703380788922 -6.4462725705380732];
  
  % Layer 2
  b2 = [5.2464513040172847;-1.4957562099758681;0.87365055314219242;-1.6346521727650332;-0.48209375716893066;4.8872022018415127;-1.298276007360804;-2.0786111861490899;-1.6478622555060396;-0.49597353228947205;-0.19346612294778148;-5.1901644367045323;2.9264860336260066;5.1217753697186472];
  LW2_1 = [-2.0718047320802584 0.23357640069526359 9.2469318605405899 4.3195774973658159 -1.6094501861495103 2.6342537855323997 1.8831574461495708 0.5030803598680742 -0.14139567693856281 -0.96738982663769901 -5.7477437661294548 4.9663196027111249 -0.13008319906425059 -11.82474650066365;2.8356094968703971 1.3084067272162492 0.71509463525092198 0.6921999518485713 -0.12357252788850001 -1.1253579196896697 0.87727662979881971 -0.067847540460856198 -0.28470350733052308 0.52917813567189875 1.2214698617170874 -2.7350605135109114 -0.93074592959865288 -1.0916299109498353;1.8939709111894425 0.23383583933397298 0.30585189935701773 -0.060446522432121896 0.76930125687810713 -0.10568809094978705 -0.30604010765529749 0.52894664069085551 -0.9184240399092185 -0.59993663814771869 -0.11171864130408446 -0.77198502103617628 0.29240816254310159 -0.33621725179019646;2.4787670758140252 0.8290615248748987 1.021509373452129 0.91003211306652554 -0.89193975259573366 -1.2596423393997056 1.8404735600432645 0.15154479309591545 -0.68327961083875333 1.1594133298729896 2.3745226751030661 -1.8046733153080692 -0.2883131717634006 -0.80869633304450428;0.84020797981615469 -0.60598104722161694 -0.054931897262234242 -1.8177152827757184 3.4527433190054704 2.7520725516403215 0.099524809598021277 -0.045958052418017474 -1.5955116447591735 -0.34937303794016222 1.3302343418711675 -1.3917863937878576 0.9161977018575409 1.3064323193338152;-0.75590625442486514 -0.071109081679882363 -0.57274392537902208 0.47020280055965508 0.80932584366772986 0.19950146663960783 0.47780788801270202 -0.29588024111932687 0.78860999399920251 1.0529117424099868 0.47365298752546242 0.26701004978031256 -4.9875018728171243 -0.29336098839282887;-2.5910066247791619 -1.1884492137821738 -6.0101749362898982 1.9003693636207952 0.092053893752255728 -0.001985017372506127 0.86219779381495132 0.15557769923159934 0.57997044768159567 -0.31542743230239878 0.51726858887654881 -0.93035895924838174 0.54455656540194375 -0.99296320510685609;2.1916447362593843 0.85948074885338188 0.76413012244746414 1.0400374569216531 -1.2487570268322548 -1.6194223597087407 2.4161119899503642 0.22835817993523969 -0.87040441149754355 1.5975976859454795 2.8718219508465745 -1.9581943973144282 -0.33330474931008475 -0.86272309639798439;0.30031075573531019 -1.9366242753164238 1.2132955965316889 -0.43906762803893634 1.0274006264691635 1.1197221365163987 0.64891435290733046 0.32630179332247261 -0.6143339424519918 -0.71145635890216397 -0.32010050945931501 2.2656883520642004 2.4018407540331488 0.8458095929132986;-1.952408185186103 0.68705942684592125 -0.45420035830962646 -0.069789939023328765 -0.54052977218290266 0.48906013983736946 -0.078311578884202718 -0.50538235929924624 1.3706094138770712 1.0126947622922997 0.50403600575148311 -0.34046010623302519 -0.090773203757852181 0.28542714341483816;-3.0299931622416656 -0.98491697587284843 -4.2664711152254009 0.042193686997210024 3.2743022208543211 2.4687632000578121 -3.9228996680090256 0.67996164499034017 1.2503472474378159 -2.454507073029415 -4.1225088136478298 3.3325881023495874 -1.017708805867279 -0.21154383044864933;1.3689312577179071 -2.5595862521443831 0.22906964566365781 0.093267981811003153 -0.59100732940512268 0.35799085254255314 0.69665964067407748 0.96153893781854483 2.9884484544333016 1.4934427449694707 1.1866489867959544 1.2857076792013995 1.5177730554703945 0.10860626108119442;-0.080025418593118486 3.7859974210400571 1.3250055623096226 1.7970736023518776 -4.8152348075485252 0.008536381776060387 3.1437443947378374 -2.0515050489603843 -4.7070420759123008 -0.61346265881442896 -0.37828532229349604 -0.84739277345823005 0.37530817388017967 -0.3418531362226136;-0.3492229411410851 0.36658723817274996 -0.050975862818917472 0.31993968931605093 1.1562633589369486 0.31543405611244035 0.30876519317294188 -0.34585991443146175 0.95411659800247872 0.76950034508530196 0.31336323667802374 0.12933056564060286 -4.9457434703520375 -0.21018957589608714];
  
  % Layer 3
  b3 = -0.49825628268351024;
  LW3_2 = [0.5188459359344173 -0.86917020479944673 -1.3755732236249023 4.781675432540716 0.32196118435251952 -2.7846925805968041 0.53089946566478052 -3.5981469742634378 -0.56918799219800897 -0.92394579665984056 0.21977204542933645 0.43421372855433332 0.097410322271201305 2.7730474968156615];
  
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
