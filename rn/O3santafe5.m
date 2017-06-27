function [Y,Xf,Af] = O3santafe5(X,~,~)
%O3SANTAFE5 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:49.
% 
% [Y] = O3santafe5(X,~,~) takes these arguments:
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
  b1 = [2.8591176515290839;1.9636388722783074;1.7040100849259088;2.3427728050703149;-0.67919431831186405;-0.98451209674998352;0.54169262469723056;0.63084466428158714;-1.6886372407240657;-1.5671549837035574;4.0627773565609342;2.2013199120767037;-2.6580951232878904;-3.4891284411709012];
  IW1_1 = [-0.16535780143927892 -1.1419615452086387 -0.17587479969575684 0.2984038637650796 2.8007195472739661;-0.80472262180430409 -2.2363825813225682 -0.60670221221235787 0.86426538158337751 0.86658116453384659;-4.2316581396524571 0.13677284899790026 0.028565349636790981 -0.10623454550509544 3.4392677314199362;0.073243754128030636 2.0341686326349877 -0.05231022745719692 0.93645856485066015 -1.5145180842695234;2.8792856650661816 0.21583466853861499 -1.4766110832635495 0.14836718465817916 0.81811762823058842;-0.40816467906611936 5.7028092964320978 -2.7859477280603708 -1.9170430234565312 -0.14700299352600177;-2.1916278954672985 -0.19124302366909546 0.2396755834534775 -0.063195692230087822 0.19576627934318996;0.7295239856577912 2.9522672952900213 -1.9005365757028521 1.6832285739051507 -0.53176245539324118;-1.3973896245810458 -4.4183406478305551 1.9727531119615005 -1.0020084077711406 1.8026236280714425;-0.93796123522869868 0.34073077631338622 0.99982707942399518 0.90612895780042257 1.2563767476485976;0.90953354411728093 5.7258002551907268 0.19533752907751134 0.10348102059046584 -0.48492190927354717;0.87902375182627512 -0.44001517019818992 -1.3737043151906281 -0.9346181228104572 -0.97019192937793042;-1.4832217228802396 0.11218248647041738 -0.32353037028460685 -0.090906315410993574 0.10245139919774685;-4.5288781393862232 0.18448759815254318 0.087280685403090086 -0.1603459002637069 -1.687617817999391];
  
  % Layer 2
  b2 = [-0.96758661731123996;1.4256162555594689;0.84700826130041285;-0.81796662121250896;-0.70761037650614567;-0.5807522384744449;-0.55776272009725758;-0.43863975347708295;-0.65182518873793149;-1.1816503381785635;-1.3142846922779989;-0.84189278787776978;-1.3460274604284754;1.6445618711459111];
  LW2_1 = [0.88752403541237024 -0.40757679974535038 0.036320665331757158 0.49429590880594038 -0.35081281941751896 0.67439317549308087 -1.9137493127141265 0.45180577792058746 1.0654846422311339 -0.089249659944788812 0.6868202293846124 0.70433675620488301 -0.45825060365917397 -0.33191230624932383;-1.1681827379892351 0.56423220776950378 0.24775445888553743 -0.051187225915208148 0.85162500095093996 -0.67125829827134187 -0.025542334816801428 -0.23144800826041406 -0.77481214518185237 -0.021936000122482893 -0.73052709991501086 0.13109623143894952 -0.61583784101018069 -0.42966458157278503;-0.58503184810660136 0.66027339407399732 0.79972193057962004 0.39748216883159077 0.59714477320285198 -0.98712717132725092 1.3453187167882632 0.83875888971445323 -0.90023072781135027 0.75089292400085672 -2.0351831745903781 0.24611413485671346 0.11147303473879325 -0.80890797098184164;1.8404475147039963 -1.4405695054757564 2.1546311492297363 0.31042330075829089 2.1436014576565361 0.61118192902131974 3.4932596678218628 -1.0224819402845493 -1.1842545843813408 0.15592060159284749 0.32703314824184559 -0.29474002870905447 -0.36976802151156712 -2.3874427432847551;-1.7963926841292599 0.030096834674524099 -0.71971514160335404 -1.290096429497344 1.6711133909669715 3.2582291438057904 2.1313137337629806 -2.6940323435977236 -1.3480754459013431 1.6338525155894206 -2.1812160339853968 -1.1480501583134479 1.6405762434863962 -3.1381694341507838;1.8873521134297044 -0.91873538519438125 4.1486720539531943 1.4186717497614085 0.99012796329130359 -0.20869171535282385 0.85630767254867712 0.03405507947043495 0.15486674857532187 0.54403553648551739 0.95621283736868834 0.85826330682998819 -0.9114578520767499 -3.5789493077588461;-0.72583478408277136 -0.31189148378369208 -0.072578249682634072 0.62225977670916766 0.062364086161268845 -0.0065393311597991121 1.2385410277551736 -1.2728131796977291 -0.15101994412647446 0.40963351935799852 0.45984381745854125 -0.57573427846563374 -0.57473285466448465 -0.38758543581889288;-0.9272461170623636 0.23454755073782799 -0.2274470420676771 1.286349816674071 0.99340214456192488 -0.33981320358842576 -0.44375234567893446 -0.98081178772295274 0.11873989049496335 -0.12440809664967944 0.88621353580212503 0.07689393124697147 -0.68216591665598769 0.0012581557942704033;-1.6336811771633857 1.4071263574974526 -0.092875334811721555 1.0947659584066225 0.95250573936591121 -0.56993282607655682 0.12541054467249754 1.2841674144732522 0.59013484018500684 -0.57678674944001107 -1.075739570888981 -0.74867840357895987 -0.093853817398509759 0.089884436120410777;-0.55949819223953645 -1.7978807931567977 -0.90127229033425638 -0.48552627640648499 -0.96338517943655988 -0.395147274215014 -0.54182665190441059 0.74556423987437848 0.50320092331325916 -0.11987556211076589 -1.0774954409513611 -0.50074561703928966 0.27471081367376526 0.59752700876605747;-0.40222082125724029 0.31009711054013911 0.44263027040784941 -0.082172829240575118 0.11697862658699636 0.28848454668566026 1.9139981312706351 0.6682537556056245 -0.27442100661932067 0.15299301567819681 -1.3241278658655138 -0.24813731050929494 0.0027039094821819125 -0.86368157486599773;0.553567633901631 -0.40106488279273389 -0.77157181247410922 -0.78736791012680052 -0.4099143497286265 0.79112444627145995 -1.2709542034840722 -0.57128778362850885 0.8194375970483051 -0.83243546884067254 1.9338523433705772 -0.087454222465912765 -0.03841436748641925 1.0829877224208084;1.0169696249575884 -0.99976095819157951 -0.098535005049673816 -1.1179340334822907 -0.1080004704661047 0.29795846769403922 0.89364813937730458 0.38349790412348045 0.17369848196741305 0.48859894634314566 0.60648655605031954 0.43988067249756313 0.14743481815851758 -0.26395213257573674;0.19715950784150008 -0.40035009790079545 0.99958769884071175 1.6817305960106528 -1.1428215077781665 0.10115890537173372 -0.47357403953984023 -0.67992763177485294 -1.4475864074469855 0.80480552481888257 -2.0452653237513401 0.075862207389520986 -0.12695214885616166 -0.4035281570889091];
  
  % Layer 3
  b3 = 0.7983985581146491;
  LW3_2 = [-0.71594100769805902 -1.4667374978090548 -2.0720586772115266 -0.49761121122990759 3.3309847932902925 3.1128528927615124 -1.0107317652630932 1.3467495462194705 -0.84723458644890914 1.0995532230082212 1.1844466302670966 -2.5706632908192666 -1.0877665853247942 -0.67444647695200166];
  
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
