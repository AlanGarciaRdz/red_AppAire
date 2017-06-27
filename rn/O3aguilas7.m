function [Y,Xf,Af] = O3aguilas7(X,~,~)
%O3AGUILAS7 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:33.
% 
% [Y] = O3aguilas7(X,~,~) takes these arguments:
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;5.42005420054201;35.0877192982456;0.0561797752808989;0.00588581518540318;11.7647058823529];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [3.0225617140222707;1.3738685389213903;2.2910602867690613;3.7762805435718567;1.901579707680461;1.228456090771179;-0.5143822846291044;0.90648062545151109;-0.12823823538554557;-0.3161328062656083;-3.3709018845552352;-1.4693451182470612];
  IW1_1 = [-2.0027444323796644 2.6134855525592244 0.73816528787822644 -0.2401976499515055 1.0801287872759393 0.34525330468679599 -0.010279162505292407;-0.83300218952216309 -1.004252250875707 -1.4463265367560121 1.0793835101717661 0.53293156179361834 -0.81209076714565465 -0.11143410963278444;-2.1500786323715939 0.15532684719190168 -0.085304280155782369 -0.82109120826961712 -0.38816469325564568 0.39644847255896548 3.4471102783266767;-1.2912986069990808 0.23705014266329333 4.0079415778307936 -2.4912225874941734 0.22515715249927273 0.67095603025652106 2.597295765105311;0.47227980505961736 1.299342725186944 0.78807154004969504 0.17791236845084166 0.0093162428202014889 0.18076532483827001 1.2594792067420848;-1.8207190080613658 -0.17353322897765303 3.7171722444174531 -0.98142821408987679 0.11893947741734204 0.19680017819909049 -0.52965616361173529;-0.26822531691285489 -1.6369103564197918 -0.99780640399074227 0.1091345678668799 0.21828702202930275 0.032338351191807904 -0.47817730690893862;-2.0102673499222017 1.2556080650258337 -2.0823445355488888 -0.57075153456729921 -0.40371103031370287 -1.5659226083184368 -0.19103822399163878;-1.9303614441723032 -0.04296396719539905 0.14814105309634237 -0.059435123283920852 -0.061514088616162227 -0.096067986997717472 -0.36082080414780304;-0.47518268312767187 -4.4580366688853132 1.665413089935706 0.16822307449428459 0.53039867193157042 0.37525091182105874 0.046303539950722068;-3.5424218570454862 -0.1833612041733815 0.035152552075643537 -0.098081178181446502 0.22298002435550979 0.26188951343402761 -0.5654239351999526;-0.51259455965504852 0.67853346428009353 0.0015867997656315511 0.52594019503268763 -0.92756941236225887 1.3769057229462032 -1.123982219702276];
  
  % Layer 2
  b2 = [2.4506816448414468;-3.1524410342653195;-2.0037004540628542;-0.9887849633681236;0.68632700568448002;0.61990010772237847;-1.8153315920714732;0.54240319102861101;-0.44056077767621965;-0.69218472934731234;1.676578794152364;2.0711919134881853];
  LW2_1 = [-0.1538334114441236 0.90524243186871256 -0.62022340216481764 0.53801237958472636 -1.5227410638492866 0.049901147631062931 -1.2191133129653628 -0.851082728684734 -0.43239062540296874 -1.1320601927235079 0.67040817163984179 -0.1187869600454986;0.23435578698734721 -1.9977207644905848 1.2728260525598658 -0.44102200043183581 -1.1792840456631164 -0.75150575963627075 -0.2656329287903576 0.03164120691635236 0.91980901896777745 1.379573283842628 -1.4451887301864845 0.65601270481389096;-0.30085122933095243 -0.55425723775478941 0.87322717236357195 -0.55032999821285999 0.78796323459005846 1.0547451452277192 0.4234617894370612 0.35338062857711261 -0.84376129257437027 -1.8053590364942207 -0.26646773846301453 0.1360498798859994;1.6747353760237353 0.094285761693603004 -0.3809244437874611 0.19264974839229598 -0.015537184513043933 -0.91230020384042809 -0.54340205695452115 -0.36301893431262588 2.2463313728577887 0.59699515126939218 1.2446929317512141 -0.21505614262035597;-0.74897562216153057 0.61693045598189189 -0.38565929439114666 0.25264725936188753 -1.0697718658713555 0.30740297003072753 -0.65532781965324238 -0.48706466019221251 -1.8647427299419845 -0.61106739996668069 -0.63054340018092414 0.43760163423399595;0.097465998929232495 0.937435587707382 1.7059337728547859 -1.8353318117024469 2.3456096841266088 -0.45090149125699497 -1.5493291508044289 0.94816399027287335 1.0811806678500804 0.10345660028936582 1.1259470897355766 0.16943227302657704;-0.39451234489285447 -0.25215687978160678 0.19779967943583501 0.062927756949664793 0.35513282583594064 -1.7032550086634746 -0.24053228446095998 0.87909933684653829 -0.27150558631289479 1.1981380631471896 1.1459726181272492 0.93769611811411546;0.32652290836385783 0.97755432674504228 1.685669311968045 -1.7224437286095773 1.8719799451013008 -0.48225222132070672 -1.7148106874966627 0.82712280261524906 0.7249845126194352 0.0017124750806305281 1.3297195500955226 0.15761229268506677;0.30866664879996014 -0.026755405633474103 -0.022284652092315817 0.031959877186524266 0.69425993973824673 -0.22579553948726103 -0.49859504180826369 -0.57901238157620294 3.447704340778166 0.10030266039379943 1.3202201131102826 0.26665451357787684;0.7430730518054337 0.24127673792166768 0.34431903340392378 -0.29875263743028974 -0.178008431670029 0.35763356079811637 0.65007168467219612 0.6749409752270541 -3.7933944610068999 0.24847664130704947 -1.5206307458926218 -0.29426281754808215;-0.13156282120508667 -0.30900275146440098 -0.055802033605532875 -0.25959621780600095 -1.2140542383495454 -0.15467268766297901 -0.47649175081039341 -0.44980589577862057 1.6783189265498746 -0.46499167927633667 -1.1229444938200872 -0.0054694894742088399;-0.61204033139785852 -0.54644056014567222 0.70943515365885357 0.12437779157838143 -0.51693238017225529 0.0044276637984154432 0.42229908495595386 0.59364902570272038 -0.8748615074183882 -0.15728919422243801 0.4675228090228859 -0.1719670793375257];
  
  % Layer 3
  b3 = 0.094342869010515612;
  LW3_2 = [0.89921489419659251 0.69527675087493424 -0.10773258591414837 -0.65852431036320469 -0.7567011597765495 1.0576177711727592 0.56198533230695502 -1.1214711042981547 1.5913369284563816 1.5716294936926585 -0.38844768224977527 -0.42497855941743057];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 11.7647058823529;
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
