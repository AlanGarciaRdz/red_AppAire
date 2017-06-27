function [Y,Xf,Af] = O3centro14(X,~,~)
%O3CENTRO14 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:38.
% 
% [Y] = O3centro14(X,~,~) takes these arguments:
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
  b1 = [-0.76472489500150576;3.6903965888142567;-0.99905627470440705;2.8347475763476999;3.2659822336368474;-0.25875511866225187;-1.2357880251419284;2.1673684492115712;0.26725946443631932;2.0791386104995215;1.1380033936387826;-3.0737609656306391;3.6621534703548515];
  IW1_1 = [0.8085533779816364 2.3291520053928312 -0.24835469303904747 -0.53333170875887548 -1.1424443460019962 -0.0018874036835832449;0.66032667428412717 0.57711787055231889 2.121951002864968 0.62784271217790932 -0.59870426709114299 -0.02002713805732257;-0.08743530634467557 -0.99827095544367517 -0.72784089594010892 -1.3936817914012278 -1.7358913079808334 -0.3501727221222764;-0.36521407146233359 -8.6670207683446137 1.4914823889083964 -2.3254823420571338 -0.739648330609187 0.86418552768017554;-3.6847647743947918 -0.26039749969228054 -0.018441727965073366 0.21874512024297474 0.089423537353039276 -0.10279721022771696;1.5391175749520916 1.952919569025263 0.019846888979381184 1.128722874510008 -0.19585622370218492 -0.25306324583552486;-0.055642083789932933 -2.4657305521969262 -0.13728877570466932 -0.83967947542593513 -0.18501632978507204 0.4392998029275757;4.0788470648381905 0.044609407245093484 -0.10253158213911408 -0.89268557975066731 0.0059851938786258906 -0.17282736596175899;1.0442815120526019 -1.7793830801437949 0.15989711501599696 0.66199352726202909 -0.0016751616594131054 0.31157661782363844;-0.86359072236600232 3.1531033783432201 -0.012330558227720632 0.5306659050516167 -1.1028808761046227 1.5445570540974973;0.63853314076827827 0.27660185327266262 -0.16198185919848168 0.42057431049324145 -1.5072712180614667 -0.23708971482183522;-0.99413925683696125 -0.38180759244541101 1.66351697310327 -0.72226960179308963 0.41436910481347944 0.6701056450200823;3.8936609723809203 0.2387802531273174 0.014460416252625782 0.43971605723627838 -0.30513019219768922 0.33535241038151131];
  
  % Layer 2
  b2 = [2.013627569972726;1.9141770167998602;-0.086674970906752496;1.3293245029173124;1.6767633068608714;2.6983643833117759;1.1821818361048968;-0.77426983160276208;0.69097182911809485;0.89557874114942726;-1.936737866416872;1.0085877667465704;-1.6005566780175398];
  LW2_1 = [-1.9962991514497206 1.7185689558112998 -1.7670855070884472 -0.15000610424311248 1.0139418816873926 1.7457904544778329 -1.6652477778464654 -5.9011660785370781 1.6987310503389699 0.80028152025089372 -0.98360215073309176 -0.73571314685307621 6.1248207538459152;-0.75428170808200479 0.11317088256389382 0.37414973845842486 0.038745736598631307 -2.5802088660325468 0.44729686548283526 1.2365321532913234 -0.58695380465702862 -0.54715370728481871 0.8417698493288206 -0.46987386910082135 -0.89578270432229989 1.2365893841178577;1.6576573588169492 1.2220835539417023 0.17996208461536384 4.6024831909949917 0.30254161897200854 -6.224542057829642 -7.2337613146729263 -1.566145260085346 -1.4751024138762949 1.2592085517097753 0.58057641213232591 -1.4982609193085663 -1.6790002202888974;-2.8431864924909171 0.5222143250878204 -0.68720258178918625 2.5672763967284493 -0.040559944520267587 0.051086437317492468 0.59886719465668803 1.451681925767115 3.2231126840276416 7.3172478322012244 0.63759300042308398 -1.2790570777704042 -1.4355526977577855;-0.14841979822387502 -0.3018967324151402 0.50122750854945586 -0.012908915730825886 -2.6609056189024654 0.77084323730348547 0.50553271634560082 -0.60323020314622289 0.4330544354372321 0.17879892475470555 -0.95904132094075234 -1.9455315398514905 0.547090081417134;-5.2904170861884543 0.93878645480018463 0.51317669001993615 -1.4537139050223957 2.3353188265337304 2.2458271652146995 3.9857227415238645 1.6797687524282601 -0.090433593392515443 -3.4800858956919556 3.1517415304271035 -2.646737868489601 -0.52125947142668438;-0.41717856468387088 0.38954956285674008 0.54710435848597705 -1.0278211164700388 1.2781916768211636 1.8218519248416101 0.95984416739006673 -0.15622343857124588 -1.2890459904876352 -0.021063575850762951 -0.0081681065676213055 -0.1606023048017613 0.71999571988887223;1.5506997849123629 -0.71017429593563719 1.6269742294443943 -0.2337167603997522 1.6577844068659966 -1.4754765626667818 1.7251138395153438 -2.8997786313047023 -1.2723634543727302 0.050656786842511264 -0.76478932871387306 -0.031894186878406547 -0.69661498395483545;-0.66331690551034939 1.0286581244516841 0.92611294349345263 -1.8162530868677416 0.66290767037155596 0.61033866636567546 0.099218963944090674 -0.39621057462422304 1.6518231341978422 1.7202430855021626 0.4348947824009049 -0.35852979943357755 0.28385740686496957;0.42050637339359775 -0.81618463749642889 0.46545150714057837 0.13020312579606724 -0.34701274039232832 0.1241108361929768 0.049501684888371714 -0.81496258125590226 -1.0264796661836373 -1.2719359238598598 -0.81248943885004232 0.70412370466067886 0.61822532842979694;-2.3950662164393099 2.7853822736480272 -0.078274079366500438 0.19257337065943098 0.90137832099642967 0.15186506867682661 1.899302882642586 -0.75642121569958631 -2.5640254436614898 1.1292065308230166 -0.45722483697092176 0.35164044357276913 1.5437493759300625;-0.3347231941111804 0.59506840784655268 -0.87330823769330879 -0.46042933688438631 0.75025962322943685 0.26381480295544835 0.13112248507015176 0.59328731635142196 1.5059199321464651 1.4829319925089819 1.0328186570743469 0.42184721378034729 -0.61423381144656941;-0.0086960492368900397 -2.6159250039236408 -3.5275307800844322 0.74387054389027463 -0.26746982181490625 -0.78770036918701369 2.5753341694568426 -0.93863704053876829 1.3191996270578323 -1.2949057133813333 1.0087267965239113 -0.14498997102447961 0.13539075366013698];
  
  % Layer 3
  b3 = -0.1586171407460259;
  LW3_2 = [0.54398792917266925 1.1622695182263938 -0.30145881653732759 1.3574026052992196 -0.76035352939449652 -0.28046161579122775 -1.2580374182798528 0.33805693899654227 -3.6158705247769873 4.5241361567703455 -0.25193433886623023 5.9812853153843459 -0.92230767115741907];
  
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
