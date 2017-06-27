function [Y,Xf,Af] = O3vallarta3(X,~,~)
%O3VALLARTA3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:53.
% 
% [Y] = O3vallarta3(X,~,~) takes these arguments:
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
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;5.12820512820513;24.390243902439;0.02710027100271;0.141843971631206;10.4712041884817];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [5.8637423260935773;1.6477805996650627;-1.7132357543683732;-0.55714376945023869;0.82855650784764512;-5.4892255814810635;-0.28334481937215017;4.8717051476726017;-0.58173102689820422;-2.3098752964196958;0.51249281254928514;-2.0112793418809685;2.0617702539031013];
  IW1_1 = [0.1716196378546401 -0.070981943023149432 -1.128210913279319 -0.37904144099493503 -0.14379686653148199 -0.11172244488823767 6.5119740154522336;0.59160544639300028 1.7409726425400378 0.22762216552897466 -0.157370582138949 0.18605152070129244 0.14316235539111336 1.429563638827329;-0.10112698091171224 -0.075535643591839327 -1.0351459568092061 -0.93238333186095912 0.085462257745744383 0.14983961136651808 -1.1497323927975038;0.54131312957565481 -0.73312675115692438 0.078036389162506312 0.82385099649889293 -0.01090046827545329 0.019459976497433855 -0.18729403988609933;-0.5375678656745293 -1.193050338725584 1.1886290065898741 1.2356102974076106 -0.35981051426345956 -0.098143424666304699 -1.062278457068053;-0.96142715554914626 0.80207630869366942 -3.3802578560786718 -1.1607595026421478 -3.2327600321683949 -1.74757390850104 0.058561725065123423;3.0645667143686048 0.15322952652459726 -0.057197524172967841 0.25224596005221167 -0.20760604787969228 -0.040309026742269119 -0.85617585244102246;-2.8526326502007389 0.32248259744353147 1.7342150050502827 1.1787160059466568 0.47597746875464875 0.50448564369561499 -0.58232925424220461;-0.092967069406253128 1.4698125617489621 -0.47954848460036326 -1.3581613142554043 0.03808025083009145 -0.13059931948156223 -0.94529954063349664;0.75281615639381516 -3.2704911041959992 -1.1107257764070722 -4.1149119170335533 -0.51190927769578931 -0.17955411602802107 -0.46155983116295191;0.076930256731540983 -1.1183829923343875 0.15503254816709197 0.68364543771658048 -0.31440603186528104 0.049400978252199211 1.8264310810747473;-1.5729883532236684 0.32438795183544916 -0.82253837157138721 -1.4130428984117112 -0.40664618362590899 -0.050592148957471904 -0.16069952550316222;3.1153732315827587 -0.90037793553277323 -0.11766979882932771 1.1401285677957773 0.034102327865070246 0.0082992439824900767 -0.4748622055103362];
  
  % Layer 2
  b2 = [-2.5535183553546648;0.89170762150544591;2.1531218314283369;-2.4322487882549022;3.2022990272171503;0.35671811200300707;0.15210471479576132;-6.1116378158818074;1.8325376048839255;7.01282378387278;-1.8710889638322092;3.9150368987839324;-0.26803878121243702];
  LW2_1 = [2.7123288107652348 0.61349096030409112 -1.749460264486508 -2.297785813134285 1.0875205695066925 -0.23876189816324528 -1.7303307189569161 -0.42904983508599104 0.44841110953017127 -0.067048352973030911 0.20453589698313174 -0.38199858906647016 1.1981513661022414;2.3766550529718131 -0.52457278582115896 -2.6851664825819679 0.67779802378397491 -0.38784018372384904 -0.41845309290314853 0.51767101039609065 -1.0163167792392347 -1.0547696384393184 -0.14638712623090835 -2.1489393977131659 1.1324821727278611 -0.062412407213662008;0.034461725315669836 0.46122406718401793 -0.85879141793780744 -1.1893837725417975 0.063272192972028282 0.023518648371076409 -0.67252774025480067 0.22958525782737207 -2.0081294362135336 0.10903390821770301 -0.73177259768791048 1.1711705837825157 -1.391782326168143;1.364149054508472 -0.39981690735669728 0.72475057093029849 4.2696389009580802 0.19620423062907602 -1.5286634446307277 -4.4445540576529243 -1.5055783330308261 -1.0714383150003364 0.10930408636697635 -1.0558192589773825 2.5788584496100957 -1.494545465110555;-0.25081614550043591 0.048539502755299758 -0.062493527913331771 5.759681192043141 -0.48902211379713439 -0.16132416725463047 -4.987913660735372 -0.034153010226292524 3.2443215068297637 -0.12626352733717588 -0.0036788027154924241 0.58221110382840013 4.1230898015518402;0.044456785504455504 0.57272357031139909 -0.69907037181209741 -1.9621449369768531 0.20770585920431342 0.031077702719638188 -0.56776522845814725 0.018962566910076153 -2.4883811883792042 -0.10936255406276543 -0.95538199497145926 1.1745138462918154 0.28986189025849218;-0.013304628531500938 -1.5426772744060779 0.53048544682998255 -1.643028236659229 -0.38668817241486164 0.026170091007647205 -1.3925275622601685 0.24849062861627086 -1.2720769484759105 0.8534608648433758 0.58132058650177776 -2.1222433779982883 0.92752941727551375;0.71389513655156667 0.45017116367303311 -2.3877260286113766 -2.4488467073695466 1.6916424895711053 -0.23656543173578196 -3.7861386140898494 -2.0315785306623031 1.352385421808028 2.99856066634747 0.48080991292518122 -0.82308537416697225 2.6442574123377032;1.7313018497339883 4.7882706809346143 2.8234955027868049 1.2008660416018917 3.4878571750816501 0.38176368063065341 -2.5721059985111543 -0.079963858648286729 -0.49626699375728278 1.3309642912680761 -2.0157078143510394 0.43083035181246687 0.27605711061943206;0.52384507773618771 -0.09856121467464915 0.32342828637966625 1.2929679244784338 -0.99914968697393802 4.7751867942096542 -1.370266840498678 0.15452847913203455 -1.7468466884524698 -1.3990977146043515 -2.5511428627783532 0.682455665549214 1.8472697229253092;0.067919528575268298 1.6593026633145296 -0.86112274156593327 -1.6411348978684379 0.58733198306251821 0.018945905383671094 0.83630670329166601 0.40282472877360637 -1.7254383006579561 0.017632251441617057 -0.67092346627379418 1.8105672783396396 -0.63258103617406147;2.7337782470680354 -0.60849684150332783 -3.0489320973294687 -1.2018097595508022 -0.6583332561945775 -0.38989717532303236 0.42881694690577055 -0.87422405211548893 -1.9495052944771796 0.080791524589959834 -0.19002726275343071 1.0107348084442176 -0.99620581751554382;0.5886129042148055 -0.93215084995962705 -0.031417414420868865 0.84511973065060597 -0.63392514999903726 -0.12347879077459983 1.143855966256571 0.43787096143297571 2.3029880832130556 -0.097516236999867084 0.3000831159054077 -1.0355293784110433 -0.40315792416148599];
  
  % Layer 3
  b3 = -1.3374619995246084;
  LW3_2 = [0.40072520408903478 -0.87386562493869757 -6.0947932102604847 0.22471401157315313 1.4893218269776773 6.5974180303908083 1.5395675161543143 0.24619002191270353 -1.5486393412225152 -1.6238360293117586 1.8115023316582812 2.9987443106664617 1.5647499088325054];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 10.4712041884817;
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
