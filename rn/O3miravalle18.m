function [Y,Xf,Af] = O3miravalle18(X,~,~)
%O3MIRAVALLE18 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:43.
% 
% [Y] = O3miravalle18(X,~,~) takes these arguments:
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
  b1 = [-2.6239077926793946;1.1338238024710168;-3.6826040343844433;1.6266700187928123;0.92719002773191439;0.99732459346373659;-1.4919744988384098;1.317482535868465;0.18338185414496463;0.7109586118181791;-1.273764751182604;-2.3716527018408011;-1.1195708787981034;1.7762842351987012;1.3212463929333078];
  IW1_1 = [1.3983642682083746 0.18132139305629741 -0.90842548103606158 -0.079344137369887435 -0.35884546150667024 0.42373904952791686 1.6667196464521168;0.26839076423037311 0.091201752067984157 1.0235486114966044 -0.096566713174551053 0.82100442229583426 0.76499648114336427 0.17304296334900576;0.43790949663650475 -3.3538951738165466 0.34579956850204707 1.0824809579701515 -0.47322987663232818 0.21553638379220477 -1.0309343327743223;-3.1536093372634189 -0.81453360809095798 -0.1669426897257075 -0.61017257651423351 -0.6880200183402736 -0.072801798609962609 -0.34681222843162018;-1.6802871943972866 -0.68211609426668995 -0.23045678489948182 0.54723035013681032 -0.69095037821801353 -0.048078381916082838 -0.0063693033335712121;-0.12213115383080492 -0.21456880463537992 -1.1104470270727687 0.39428515542265091 0.54448433943955332 0.13278564473285476 0.73150148655432423;0.65819836650040509 -1.4383674921085172 -0.42818631826661996 0.39053209495327829 -0.66391872779830641 0.40689559253086049 0.64930714741369244;-0.74556166503352927 1.8382316615445509 -0.11308224384752068 0.35705980413299909 -0.11071913484840752 -0.39292893769385973 1.1230492744437492;2.4300925759850664 -0.20432813853703682 0.19377274494396757 -0.69239315593929962 -0.7245751540352342 -0.39373654283295711 -1.7501058980734903;1.2068827424746784 -0.67949443769004048 0.10959856481247966 -0.86794625830547001 0.01784642411042537 -1.1531872591973447 -1.0472739169710965;-0.94413223864650642 0.070448456224048883 -0.72871552338932621 0.9383190033636164 1.8929997461415786 0.5400303235590842 -1.263689204850152;-0.54946729836727959 -1.6932986097147509 0.37757435071560091 1.3538999230406197 -0.25334128808826661 0.13393312524677173 -2.0383410577437187;-0.38550386399784309 0.14870338587906748 1.6842025843773787 0.12685011920569486 -1.6858681071226651 1.6608968806089739 -0.071619420993407304;1.2419331858945064 0.59616185832068014 0.55140302629861104 -1.1346964118335223 -1.0795812250057888 1.1729546867094678 -0.52054964170197926;-0.037499193892805399 -1.409845589341945 1.5514582031739268 -0.59496995685357856 -0.1322648053946418 -0.24561596803193506 0.62831106035158979];
  
  % Layer 2
  b2 = [1.832830566437412;-0.95619860631625064;-0.79647677479585233;-1.0648153450947631;-0.97073216110752369;1.0377062147934082;-0.34833707311620543;-0.046166069497531062;-0.68455341089913224;-0.64862700841125631;-1.1017811256035581;1.0059541865545945;-1.5577350821078655;1.4192328177934637;1.2304508695743399];
  LW2_1 = [0.03143057142879932 0.13745470337019758 0.45842731721893254 -0.98316199581345476 0.79210644194387136 0.98308399597806573 -0.2844649970199335 0.63084623999065104 0.19462562935716915 0.57136665108362017 -0.48328432807895899 0.35655639446380855 0.53031486866686905 -0.70881694951082586 -0.51350368055570117;0.17128084422176465 0.60999607740981965 0.46253098543521742 1.0814037908916487 0.44416055019561157 -1.2162194710723135 -0.81265988241975484 -0.48760982391665986 -0.95309846517094221 0.74422533617317743 -0.57758762570616118 -0.22794283341813207 -0.25542085715217294 1.0538158311911716 -1.0299761529925937;0.70942394115669571 0.54496908097591978 -2.0502378948087157 1.2989189418121236 -0.73244671343719714 -0.47716754243995951 -0.44415700636156946 0.91554375161384394 -1.0895028878203694 0.7428368266540688 -0.091471959889386181 1.0034909962320979 -0.54657748445738208 0.098979401454982671 -0.41818963470750187;0.7230033718116573 0.90658935362053772 0.7786473661125064 -1.1888145818780465 0.20379203666728576 -0.25352354488208456 0.99665412218642668 -0.19526830204232337 0.52979551540821468 -0.0034912502723884152 -0.13905731106254157 0.72266223916163885 -0.39516734685346344 -0.6447554552746676 -0.025118938425200767;-0.12038085858038899 0.27544782076225161 -0.63455374028638256 0.93281427101747472 -0.4776446113119428 0.69622520491794526 0.44230673066236176 -0.52606292551016864 -0.19988165473654493 -1.8253523283778026 0.57938710477383848 0.43498927767497986 0.36650079445629036 0.20591102490155444 0.80591551125019589;-1.3274608716996341 0.74407188047406814 0.0055475594045794052 0.25331929724780988 0.78255827135790323 0.72361456306176331 -0.43911136111362892 0.9879257134288516 -0.36870616776658449 -0.47662745362311992 -0.5591532941321532 1.0347026284716343 0.068096439714178739 -0.072488229381583183 -0.27170548331934918;0.35838358838159118 0.40350924259262394 0.69815439607335106 0.57258336395355114 0.5294567180896107 0.54382736387876285 -0.0098485448841271472 -0.24825245998152262 -0.64338687442682185 -1.0540560867719344 0.032537161992828717 -0.78639172965640236 0.65220006955064025 -0.17129168765385799 0.52203590099760855;0.29265687198907764 0.12274831874136338 0.46445330025786402 1.0675707524303311 -0.71522499362545311 0.60754112869918075 0.77684030530543302 -0.46243354510180029 -0.63954947470153067 -0.93330688058601752 0.61358997645539948 -0.41886391918042026 0.61806273718756144 0.77499002660853633 0.66608294418887382;-0.26852144724239263 -0.84900010200788334 -1.3148868765653841 -0.37967892846593859 -2.5155016441589488 -0.6328828747302353 1.218864764271274 -1.0941112797440515 -0.87345490740461706 0.37535133961950612 0.25706878458972166 1.4184528507592291 -0.61911962724082992 -0.16184366814659981 0.20142525316772392;-0.57388056955505395 -1.767801224162477 1.0061172656517685 -0.44091696609374004 -1.9636598803750454 -0.45622874575429923 0.22433188472334856 2.8748420847970309 -0.42296172451528002 0.28283063411170895 0.85723064055124665 1.4525178122364695 -0.36539406756531412 -1.361205827996957 0.50202081367786644;-0.41632148688475512 -0.25545764078312028 -0.64132844236038578 -1.5982864331353255 1.6313761623797691 -0.62687494563542867 -0.39277478762736745 -0.33165060250246503 -1.0141394862135269 -0.91512193743403036 0.049421659935180683 0.31172358864648719 -0.29048025641504327 -0.39813932804987057 0.26250987009216176;0.81240630905775602 -1.3446549355914332 -0.67546694207415681 0.081004173965304821 -0.0067603194390746385 -0.22799942182412869 -1.086752669747701 0.33641590608274213 1.2988735843752945 -2.3409663570735155 0.12076022114037727 -0.22643312955977568 0.048580075560001733 -0.2408098506063075 -1.1648865475990846;-0.069603433580049903 -0.06560560303061766 -0.099182264567264145 0.11557942829132033 -0.86181843434701966 2.4804983488794492 0.26828488269240014 0.18261481774855032 0.13371395306710759 -0.034466984063403518 0.29985107454058074 -0.057331030977515587 0.91463918056307469 -0.28035978816733992 1.0479388347406049;0.20690377045114511 1.2303271842083487 0.29157236413188448 0.48525131817731765 0.99037902703568248 -0.78816042419253451 0.019851183337865595 -1.0927151682729348 0.11733243686855233 -0.13334717554289841 -0.087947679408786755 -0.54620605796012178 -1.8016732949963932 0.25600170047660592 0.3985696433190698;-0.037094120786461141 0.47830243394515842 -1.7976268158574755 -1.0693546538997261 -0.60008866329992172 -0.48985143300654294 -0.5090986845767842 0.96075488419078459 -0.68346663076428882 -0.72823370455137382 0.03396373445311561 0.72418277091892846 -0.52417605069511053 0.62452363161458169 -0.060685419831784056];
  
  % Layer 3
  b3 = -1.0557941721811039;
  LW3_2 = [0.84475481008669662 -0.50871616380261009 -1.2278771529920087 0.32025464023490463 -0.48634827437667216 -1.9332905220540209 -0.48897458277464773 0.71137527408860957 -2.2649399446459566 1.5414012762414866 1.400071722517938 -0.24099085261275138 -0.59877467626951564 1.8022367807506323 1.5543343821954738];
  
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