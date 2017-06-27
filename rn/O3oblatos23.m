function [Y,Xf,Af] = O3oblatos23(X,~,~)
%O3OBLATOS23 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:46.
% 
% [Y] = O3oblatos23(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
%   Each X{1,ts} = 6xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

  % ===== NEURAL NETWORK CONSTANTS =====
  
  % Input 1
  x1_step1_xoffset = [1;1;0;0;0;0];
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.100381449508131;117.647058823529;0.0560224089635854;13.1578947368421];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-1.9774600039664041;-1.6835954516165874;-1.8323933627578515;1.0335845561526147;-1.054562846483563;-0.34603455497596247;0.30813472597191294;-0.46297496428488771;0.0039738683276958342;0.57480963485646763;-1.836286040351421;0.77868758052674958;2.0826839068094274;-2.2149527054010689];
  IW1_1 = [1.076157417233979 0.76549441565365806 1.2121932959107862 0.95129224337107576 -0.67035915146706448 -0.17764495699698341;2.2458287329914164 -0.37737167573969488 0.82379286371360516 0.35148192751339213 0.39673894227379375 -1.0242160623745642;2.2049706584698976 0.25217515924857059 -0.75003340434354004 -0.0073224456642263973 -1.3254146177801926 -0.50736430122132459;0.36845910754785333 -1.5635911692468683 1.757548054980586 1.0936335042991447 0.86574712081970973 1.1032488067507671;1.7869479817840412 0.10546416174241691 -0.29719256284246121 -0.1166867371584755 0.53969685250470278 -0.64384718840609634;0.40455165183426733 1.1696655166431909 1.2006352800111335 0.47161980763183053 -1.7691663712048971 -0.16459932437939914;-1.9166637445329844 -1.0477821464899164 -0.68408936233898565 -0.49412453910641746 -0.011102092653835223 -1.2043515314867643;-0.99428184964785704 0.68688209085443974 -0.10186267286364989 0.58088950431385256 1.8104176280288631 1.068089835050761;0.055964484060849959 -1.9744364957941754 0.010473405471240196 0.7834095357805192 -0.92664730893669067 -0.18395083582227756;1.2169479615027634 -1.2475376338456048 0.85496416307434875 0.26480325784737985 -0.30200096145047922 0.46313055239173184;-0.19475031904676859 0.92804514407556571 1.5589587354032231 -0.30734488357187462 0.73458615533643246 0.66510765255192583;0.69441574157397934 1.5974620787948433 -0.40070232181182014 0.27705028285483135 1.4570623919839618 0.15905107830007834;0.77427808865105441 -0.89556524415318872 1.5385168608961413 -0.55883942461821567 -0.37018705695594234 0.52728648541758349;-1.4671171369250711 -0.77773413870498986 1.2439092455883218 -0.74017582469346277 0.23978193185659707 0.66265964886759832];
  
  % Layer 2
  b2 = [2.0710694264551774;-1.3817261606665481;1.0395287441923704;0.92663379872585128;-0.42410335561143475;0.42416936934660271;-0.096638649170402519;0.076698987574616739;0.37186590104495204;-0.62305562284786853;-0.91271742380864196;1.204575452839429;-1.463157569952809;1.5182519043959177];
  LW2_1 = [-0.092016879018280567 0.66926146720751578 -0.45534619389282854 0.276990624699262 -0.27587218287937953 -0.02654230630167544 0.11337044683337721 0.36093734520089571 0.88305685419017421 -0.5036097447594492 -0.47925529803981559 -0.76705314725387674 -0.59400843134585835 -0.79685309527846804;0.74685095907452137 0.37428397232648969 -0.72655433015875781 0.61461659606522168 -0.39262559947025694 -0.37643645940962184 0.063919661206854092 0.062275616502106695 0.49846472222500271 -0.15810317237343247 -0.57330835710744743 -1.1017851310196929 -0.2126065629902705 -0.19233637772527482;-0.55084630416769387 0.56699871233643517 0.80317350838843637 -0.070754878694107085 0.39989178054264896 -0.64841568919107873 0.94874383491510628 0.61777923049245353 0.035996069979012647 0.42188285769058864 0.19978906091594484 0.46586421128788874 -0.25890489242795817 0.16354308526580155;-0.40862936866297456 -0.76783869982153086 0.81290425319010606 -0.23821251812778219 0.54049422135087666 0.22499203618047267 0.074667702202957806 0.80698589991871239 -0.59980922910293133 -1.6919988544245668 -0.59554969260257085 -0.44079695162880961 0.4200179762336243 0.042239519294574236;-0.20251539472787403 0.78547929900570568 -0.46558807524733853 -0.40016817730151816 0.18676317991896885 -1.0948393137000398 0.082090129206979459 0.7089483196048374 -0.31034645486338625 0.070159013040638818 0.12909328003903334 -0.2746317288612114 -0.059498980262710693 -0.28082769003753749;-0.084883967281316405 0.32587454259407639 -0.26238422413800061 1.1226679900019545 -1.1843110340694427 0.22852777353892822 0.14647266679827114 0.052809866516593945 -0.10843899130155925 -1.3408374617423564 -0.21548867243609265 -0.64352019012211759 0.10267574957713251 0.23186111974717236;0.22640773319732588 -0.39818268722872352 0.15402748178371767 -0.4439220376774794 -0.86355506696159279 0.5465616496204847 -0.23651530956727754 -0.092148633659461604 0.026895639285160235 -0.87862715520182488 -0.4184074336330923 -0.33952332313771344 -0.58199739380476556 -0.7167330297930008;0.53334646824289644 0.025686096881679076 -0.50916524234646476 0.21773136421451633 -0.45266724367757605 -0.89701578682112748 -0.043048056234352781 0.030008921628566741 -0.58599322583146185 0.35817579024259671 -0.29163730737388849 0.33126101056438073 1.3527365871292547 -0.37014464835350319;0.64733182700165448 -0.24861013026246565 -0.13601015820239606 -0.004360605163017027 0.27189270992138642 0.47929644503716617 0.22681612834866036 -0.15568478978525199 -0.65708545541639529 1.3841159791148305 -0.53776810602958514 0.51556152833614011 -0.05508113776595279 -0.34240062605120741;-0.3884525597278512 0.16342458106183244 -0.038052802657435152 0.71315999776415284 0.30537459164378966 0.024202880936999214 0.5978162159227971 -0.10478724369869497 0.094455786786146259 0.32036499725768047 -0.46831589614086444 1.0105888275229673 0.9753105835778666 -0.15997617894966962;-0.51255742051271647 -0.35419219578683037 0.29766294161893664 -0.67330354812570015 -0.60974716392569051 -0.55206538207452283 -0.61661474852709375 0.68840372079442469 -0.84315450059788055 0.61650509920799301 0.026476003555865407 -0.0082365455813281467 0.25359052423948281 -0.38599255888014739;0.13183168625517147 0.45856316488568066 0.5343817832209572 -0.43908044861801693 -0.19147849549297438 -0.64389722859380316 0.22934719282088656 0.93976665563085082 -0.67791383796407745 -0.53401304859101462 -0.663749986486456 0.54424164217671434 -0.26732959168570569 -0.50235599000818498;-0.20479681657682974 -0.12531911559293205 -0.030830670834537277 0.24549955212746652 -0.62273853640299404 -0.45684546541983917 0.26618728076311288 0.23170706838756647 0.08231488886981754 -0.84880538967102503 0.72933619684079876 0.56259668646457317 -0.83241574117008521 0.10539923441340682;0.60343691563218649 -0.41607428921029321 -1.1271280510643098 -0.94978279341796745 -0.38749575175186485 0.029099240904988229 0.27370750943813582 -0.63963207025927882 -0.36763180171654897 0.0861775109142148 0.53638092760221245 -0.22983418840401268 0.46347772513486102 0.92021643169952638];
  
  % Layer 3
  b3 = -0.48632673864838089;
  LW3_2 = [1.0733306201400001 0.5323273373429297 -0.71321470066177006 -0.93097394498306196 -0.54205127560827071 -0.73476155962017353 -0.47951023948589938 -0.66208011899816321 -0.96245307620430565 0.80609078855757998 1.0882385341131782 1.2005116629711075 0.64874769334563998 0.54297411188350886];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 13.1578947368421;
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