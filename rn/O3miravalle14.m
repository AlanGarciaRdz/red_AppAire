function [Y,Xf,Af] = O3miravalle14(X,~,~)
%O3MIRAVALLE14 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:43.
% 
% [Y] = O3miravalle14(X,~,~) takes these arguments:
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
  b1 = [-1.7024317764174646;3.0417431265435435;-2.7993119708286773;0.1181071174820727;0.25601838055325554;0.56660232580949343;0.24015311227509389;-1.5259193702104903;-2.8966700300218036;-0.030181042513740722;-0.99087630973323015;-1.153588999219372;-2.193849418846995;3.160527100193081;3.6859948944714565];
  IW1_1 = [-0.055810943078549557 -0.50964432209554011 0.3887314443053011 -0.56989419391145146 -0.77562344331319544 -0.12561598460518769 -1.1005258220245149;-3.2782931371819686 0.20302929970758471 0.18378583635047196 -0.24120301787956511 -0.10777688135121968 -0.20653961789135361 -0.3424587438667907;-1.0601183932223026 -3.1250813562921698 0.95294542058176168 -2.4364344940191285 -0.093740423622877544 0.26160947072560409 -0.039819234850705224;-0.14644082417593138 -0.37385688223224911 0.38883972347558282 1.8448930478727483 -1.4568174403298704 -0.2575687888818749 -1.875712322527944;-1.2548137482104853 -0.20393329030252591 0.038310327015113978 -0.96629561261272923 -0.59824082218081376 -0.41026778781984191 0.44672512002502668;0.51609233858157066 0.72738049289000806 -0.6087455934746191 0.91952092728702317 0.17553213966875608 -0.32975451642163095 -0.123113760337544;-2.2755626478899096 0.32479420112108853 0.18759639247617488 -1.3829276900133112 0.14735512547702043 0.50991471268611499 -0.9995177495373585;-0.20446035241795202 0.56266443199039617 0.28090537772232832 0.51003914602057643 -0.21199124615045334 0.40720088251216485 -1.6245877977543575;0.34813350018384021 -1.6564607482482172 -2.4162583305653866 -1.0738685183728061 -0.76573134776358776 0.59071614532108219 -0.89594130637807579;0.90897608448438272 -1.933882291771005 -0.68017781850025205 0.56067528789308019 -0.37951848943105737 -0.20414851023614561 0.46074033568692335;-0.35397607388436347 0.099559224090671389 -0.29004036173678654 -0.35689232796440395 -0.47701813525280334 -0.65614557361114723 0.76540965321686238;-2.4567570133177776 0.20306790253357238 -0.53712349323655517 0.097778146446015138 0.026903180597836588 0.058727556211468371 0.25623825848915566;-1.3227571219527816 -0.043331920500966167 -0.20647656906820383 -0.83329639602186723 0.98644717830668904 -0.48283453317063468 -0.5901500395476893;1.444563044916259 -0.19281583328317542 0.55060576065948841 1.4111917166705203 0.88274189468635389 0.84106742526705003 0.69395577677720222;2.3705654236058908 -1.9306312667983636 -0.54518259302808036 -0.83637433827139684 2.436858816343074 0.29612109515565793 0.052795758201316767];
  
  % Layer 2
  b2 = [-1.8560355376452322;-0.31892449305189896;-0.88730939770480677;-1.0176140976705355;-0.19104371919867083;1.7450575293489403;-0.15235562032598013;-0.28016471043936175;-0.24123616523801417;1.1276474625906128;-1.511888521745268;-1.1641327482650117;-2.378143051058013;-2.105084915339003;-3.0632687347685481];
  LW2_1 = [1.7785972134282757 0.46997809370729138 1.014915016424133 -0.90235911707941918 0.83307417752224555 1.3721415192804987 0.20374266109600211 -0.33473580745023573 -0.54257228687040204 -0.17197905647187656 -1.4125039835746609 1.1252894985565891 -0.064351838112571544 -0.12322975985675695 -1.2594717152461281;1.0030208983697781 -0.94007752301613834 0.99156366832526166 1.4685923051106731 -0.23281525088238794 0.9406179389439171 -0.62739967223354998 -0.96603822355360891 -0.30775328422204218 -0.080196739002327946 0.14711930703287784 1.0103892380276498 -0.29361835865594876 0.11320968116280399 -0.77149219264272495;-0.17262759648933235 0.23437870942418193 0.43169931653357163 0.016473738868958993 0.011819436801745544 1.1115825316320944 -0.73423276958455874 2.1934392463030647 1.0968204373830674 0.015521027304599311 2.2034911725916957 0.44265247709046562 0.76233920302734393 -1.2969174227470412 0.98442423793952405;0.41710551083308256 -1.0348786675633646 1.4889827624959091 0.43947406580912396 -0.88151780989148154 2.3022370359401059 0.83083067406109845 0.17002637179621635 0.086761120426004382 1.0385563779077647 1.1270690220042139 0.41462282141582918 0.11216505435871199 0.91971235525475648 0.84756976194038436;3.0061455743132437 -1.2086539811100969 -0.63841923342313278 -1.8452274374953819 0.43370248095680541 0.15175358573616421 0.13934518372212623 -1.6183196995001541 -0.11467309466126395 0.8182598602858836 -0.74872344288293236 1.6793446639738798 0.21629698047096843 0.059602607122679285 -1.0294229234806318;-1.1874395141783145 1.4136485120670523 0.12088358882782138 0.081409412548499385 -0.73318331421078808 -0.2269812170857203 -0.1180857261404369 2.1896349485795619 0.6046033221636552 -0.41309457242097603 0.89248352233393802 -0.16525873572617233 -1.0620442185176171 -0.016915482068609759 0.69693262547108847;-1.3520814347275589 0.30500206579734646 -0.040350214677623127 -0.10415185216921446 0.71772018007240346 -0.76740407522718379 -0.038057740005268639 -0.09883775093528091 -0.16164628859272839 -0.082729406389234525 -0.83281846339856147 -0.38910408022477327 -0.25644859640959222 0.1031341957567985 -0.71648698905246011;0.53109857007487937 -0.80668012995415561 1.7549868697333513 0.34861952103841243 -1.2395740971347284 1.7734397620263742 -0.54349071453999731 -0.28372322381431975 0.1699973233040164 0.098266102624347595 -2.0208743718415834 1.3266679790685396 0.48612399247219329 0.22993958460272154 0.29782018996422943;-1.4082880023156097 0.12402773046773297 0.26583863414477416 -0.21947572944828608 1.567416268367952 -0.79838644596656805 1.1173503654767658 0.20611216814754527 -0.14240347136762538 0.19199167991296268 0.59245002731327157 0.040780052823028282 -0.066425599782476405 1.547195247846092 -0.72419165564583621;-0.35987293748168964 0.93266677648339569 -0.63270590456907916 -0.70908992986748853 -0.12650379999248473 -0.97496384423247784 -0.050444438061010954 0.42536627986251579 -0.2530498068259191 -0.41281237040607194 -1.011421100961591 -0.27255551695867053 0.15006230550367614 -0.42972469612472103 -1.2653282899267673;-0.61493965206742085 -0.43829951005172868 -0.23932423110417012 0.23523868559791902 -0.027927078135366382 -0.6563075609223471 1.1653517609913209 -0.52597981873632238 -0.23784086277186867 0.55156140277176935 -0.26038974785354019 1.301080147482343 0.20500639704515627 -0.094284073920290881 -0.62851005171253849;0.42426604433377707 -0.83668282953575313 1.4352761427431373 0.5882934675479381 -0.80660251569833197 1.9576512367334804 0.46805920960455238 -0.4197264579588027 0.092993905816754693 0.5547949597527454 0.92386458903821911 0.87300727240612153 0.0164081696559987 0.93917893591446833 1.3391943565959108;-2.1016822592397557 1.8064406725621145 0.19279044377996346 0.20763764696176129 -1.5400933061357553 -0.65081295596135114 -1.0796947740897316 0.023472832669612555 0.15738962964329287 -0.22531318782600335 0.29146469323519203 1.851324294329427 -0.88222411285043956 0.61438302979188575 -0.44227003512727664;-1.4603479863782511 -1.1703331303646174 -0.73772746070790329 1.1393715087253968 1.3449578357893186 -1.3912129268403481 -0.47152786994307888 0.29590637903156219 0.24591239578513116 -0.043748391208302817 0.8571879923556176 1.1215550639221981 0.58487843744189194 0.011808324313011993 0.61487330385467875;0.27610701000998283 -0.47069690388672114 1.0757046655481635 0.99932952547422349 -0.11460368486898645 0.61266846239447581 -0.6385098814101634 -0.44386410210838412 -0.091782446928361655 2.4612294412235123 0.016834220559071703 0.97445424366707767 0.88384734747015725 1.19832780227541 -0.1845386667264976];
  
  % Layer 3
  b3 = -2.6039122424703889;
  LW3_2 = [-2.7158703065039789 1.925871593220732 1.1521686166686695 1.988976762535916 -1.1602985491889226 -2.1225079573530636 2.3858922081745439 0.64771377859897838 -0.58557163817384705 -1.5658637760589147 3.1565866718811946 -3.1501634162426781 -0.53829395765935795 -2.5034649987658124 -2.514631172230898];
  
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
