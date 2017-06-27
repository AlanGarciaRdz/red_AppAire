function [Y,Xf,Af] = O3centro8(X,~,~)
%O3CENTRO8 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:38.
% 
% [Y] = O3centro8(X,~,~) takes these arguments:
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.281968137600451;3.74531835205992;45.4545454545455;15.748031496063];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [3.6898597299017166;-1.8113214516454561;1.6460602097357748;-0.35417187561068497;-0.40083465214553593;1.8301714804944418;1.3861220021924423;3.6823269706297088;1.255506979036269;1.5956932421099141;-1.6655115687497664;5.0909632875701245;-2.5306038034316609;-3.6560323158820451];
  IW1_1 = [-1.4931030037826871 2.1635431817055673 1.1528568068770075 -0.64173392314682298 0.62467106835151542 0.99231721813099427;0.83302694627752072 1.1666056414970023 0.19793698202123733 0.24152085506202325 1.0603251586725295 0.091461587504181846;-0.17809151343472926 -0.44606414169169883 0.0017490738511350204 0.20070606585535716 0.24612967545828512 0.98197189970248389;3.4757096281474245 0.34501186560300978 -0.20674089235580706 -0.3705545930341354 -0.52381763980894869 -0.44552342093974334;-3.9089572193041415 0.37569462625254968 -0.92524587313438256 0.38806474378448491 1.3485300928890291 -0.0010793382014118169;3.2433608243647196 0.26973825367366649 -0.30071710555258879 0.49044810522580734 -0.23957570004307388 0.52338955239702112;1.7249989919172042 -0.38623961191624584 0.19592790189735279 -0.60299716924606617 1.3573403142524172 0.27012119969762155;0.55012325678287788 5.409829140060749 1.129396688652172 0.35756936366130498 0.62623038859544966 0.12185314053556406;-0.2745152342720702 -0.45092857951500731 0.38824402995900881 -0.099234392418182285 1.0079949247277935 0.54608857345120099;-0.50397462064638276 0.88395828538637944 -0.25663764102111836 -0.71876947783190026 0.18107038632882294 2.0853284712067208;0.13875161636378386 -1.2241530208459095 -0.34207804593020247 0.79029376821030728 0.32651774717578375 0.31255119848003476;1.6826154717901194 3.3442894178456957 2.6512241101009706 -0.60080398681247116 -0.21271769767571225 -0.1205220844278953;0.0050198877862032264 3.7100210303648127 -0.52117276231471221 0.35394890467470319 0.33399652199793239 0.16657263965732361;-0.10723148028880769 4.5500560075854475 -0.8901886930084385 0.77053921399956826 0.037324161957500691 0.42032328881262926];
  
  % Layer 2
  b2 = [-0.89447713550242569;0.83550507685970399;1.7309504004191949;-1.9570389810799076;-0.073460500142596058;0.80639691407782532;0.802364363953049;0.11794255139727103;-1.0570585468032261;1.2988682544103389;1.8677591278006029;2.5729409555849423;2.0391177591343048;1.5455107876620331];
  LW2_1 = [0.32588145842876698 0.30100355084733665 0.85668059668929419 -1.0828400109754757 -0.33464919823442635 0.43536976120144932 -0.15137339781125331 0.34942175050820728 -0.3067489075076052 0.19870763899514665 0.067955323762619674 0.97767871310756604 0.68389323034294291 0.056576353848337341;0.73332097491443693 -0.087421271142247681 1.1215111879834394 1.470166852976311 0.22941902118872165 0.41965962830133929 1.8432972365615721 -0.33687925198344149 -1.97001058376183 0.26066473824497216 1.6600780843696497 0.65735764369559269 -0.77207767930360161 -0.16395276780471857;0.46939889263822981 -0.54077393900270143 -0.67588367273491079 0.020957750827700895 0.24886222469720629 -0.4179792432116301 1.3376677771999641 -0.81016545979483279 1.2452975460033879 -1.2626015758029208 -0.62500807941655201 -0.18414766350469236 0.47487892958533728 0.35401562826211252;0.79686868222548335 0.89738689188672727 0.37601429754223198 -0.77848403140015843 -0.31495426625865125 1.7767246942011141 -2.009814030674431 -0.54488811262664227 0.013869705248671198 0.65583081529167697 0.76906889513699506 -0.090790836767709437 1.6618354526186925 -2.7981909762773403;-0.054236023900129923 1.2620492454632393 0.92697209596059771 2.6737172720980555 1.1141060099231694 -2.5377084019710501 0.012233942637745285 0.39956762926047557 -0.40774572421606936 0.34916707629339172 -0.5008550829858891 0.71064470385248546 1.443303082527841 -0.58595858760227115;0.64311761077152241 -0.66060599071054926 -0.1422648804852148 1.152461090448851 0.83581365631420557 0.7668226335537357 -0.44652376500030566 -0.12046964954023465 0.51399195686143873 -0.11436744485087469 0.24070515466736389 0.72431833972856696 -0.37048536076406779 0.55260941730535651;-2.4320319535755357 -1.4513593132237494 0.61819587148551258 -0.11955148666568741 -1.3129287566885379 -0.2786924238226649 -0.47023220587229037 -0.4840211864628392 -0.045163299487233716 0.74057846370479163 -1.1709811445643761 -0.99692616726766381 0.15955073364858463 -0.20157272843940677;-2.0442964314509111 -0.13979536445126975 -0.50450718937350147 0.8087816040215835 0.27589581078092279 -1.0004020003863128 0.99768233252394678 0.040785547485990968 0.77428409590849268 0.55240550371333308 0.090980654017741427 1.5247548740321277 -1.5175660782502316 1.010609607556854;1.7839450687332501 -0.72445117125822123 0.37293947206136252 0.31062476318625964 -0.27982938008706593 -0.48722708749808175 -0.019984260541531386 -0.049899277840713005 0.14108286979701301 -0.66462722138927621 0.4995272167974768 0.05778531508009016 1.3424161136684465 -0.29225430191615875;-1.9844531408917054 0.041784051714227104 0.90234204869184942 -1.4780933523350137 -1.0360698366983394 0.94776507592855519 -1.2346695325798989 0.03475038527453661 -0.97414796119489055 0.56450119895816453 -1.2405604913410757 -0.4857074666419875 -0.038384752736860511 -0.024387502339517961;-1.3527920378798231 -1.2207711349170396 -0.94313203057407768 0.16266605006460022 0.09654484506486774 -1.5019568177941176 1.6111066808280696 0.60300035089473214 0.053567586713011546 -0.17238592816151638 -0.63572240621117815 0.49664066649877964 0.22331618088732338 0.2614142386680256;-0.10329181872896731 0.80718610094000631 -1.1354764926346486 -0.40174136590958487 1.4812438384357454 1.1011077834015681 -1.7473825159240894 0.52161314883837973 0.84783445099159194 0.64655146332964297 0.68738299344551401 1.7077042798207196 1.0888794581733798 -0.82764173117163575;-1.5652349577616826 -0.33539263472615272 -1.1232137235231527 1.1121877586138142 -0.62684641464178992 -2.900581121385343 0.76077972389292825 -0.21234385031754061 -0.72568138762941703 0.51148356259374983 -0.30761059907819294 0.88200311497719663 1.2948075300163784 -1.2225579910411983;1.8147164305016723 -0.59399300439221925 0.20771155929279322 -0.69914445445049844 -0.91864180306485121 -1.4337683681465567 1.7505615334955242 -2.1491498539414757 0.084112537785666908 -0.56714960733000896 0.11116044919333261 1.5381269889509404 -1.7240060374647559 2.5828754798725253];
  
  % Layer 3
  b3 = -1.0553951842234535;
  LW3_2 = [2.4938069916219501 -0.6755602742376311 0.7205328063989439 -2.4624430806193915 -1.0917598064484462 3.5338768985212328 1.0997895752413835 -1.6610109289062636 -2.1088311264323361 -1.7977019706322546 -3.4017006395871499 -0.78489342935207573 0.59275462458530492 -2.1162102147110859];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 15.748031496063;
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
