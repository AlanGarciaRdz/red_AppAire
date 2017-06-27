function [Y,Xf,Af] = O3aguilas8(X,~,~)
%O3AGUILAS8 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:33.
% 
% [Y] = O3aguilas8(X,~,~) takes these arguments:
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
  b1 = [0.85731471615715826;-1.767036035665809;1.9526128940596756;-1.4674210542435495;-0.13977132750469684;0.31802149751276743;-0.0088295713640667885;0.62561345920542322;-0.12993282636935402;-0.86554737419528671;0.13691114409546967;-0.8187171870978569;-1.40611295571287;0.83237882214668735;0.56899400387545729];
  IW1_1 = [-2.2064415800851083 0.43481582992034418 0.37155925942512696 0.5824556056977771 0.34853777190468715 0.89429091465327992 -0.067967261871661827;0.39352503136256994 -0.76822731871447225 -0.52751901281760138 -0.29221224498704301 -0.69210871567947951 0.2462470627230228 -0.12675662981538408;-0.19695605387672299 0.89062254759910875 -1.6594816434887023 -0.43282544489816144 1.9815128540722327 -1.153034685421187 -0.48202158967320835;1.9732951799338003 -0.59960506277998837 1.2350768806927952 0.15390127505999676 0.065501833597009104 -0.2456275707781336 -2.7045852333326277;3.495896231719188 4.3981853696214728 0.34766603499002724 -0.54358537491604297 -1.3706179233573201 0.73220003221732921 -0.40778231310625085;-2.1706641430976967 -0.893153955398305 0.15360120136126013 -0.090688413169359453 0.4497130601558158 -0.17053492364677386 -0.56425079952753077;-2.5945241486602391 1.1235696949301117 0.86646329767707198 0.85561060610742035 -0.24117935469450499 -0.038625970835188442 -0.58887147881739443;-0.70620118816037547 -1.3061724448102443 0.66116394259125999 -0.32059841983930226 -0.50325227475283818 -0.1932396359116543 0.5707762083839627;1.9330161913982862 -3.2177715263286797 0.59222211313958018 0.73855263776086821 0.1723222109345787 0.16932336028419911 0.62471238857568756;-0.13221205746759346 -0.21403206516949361 1.5960969743416589 -1.1856684463563156 -0.3811762328684335 -0.25004341154554144 1.3612570253455003;0.017946058858897079 -0.19868195569376895 0.55405781643118568 1.5700892639161943 -0.55229591889642005 -0.13052590676140691 0.074609054313595491;-2.6217571091223268 -0.57371631229346498 0.0039411277437615706 0.24451423088110238 -0.19598346706607572 -0.36133260024180591 -0.0098232627050384817;2.6537164586384119 1.8036352759345342 -3.3750881008122722 -0.18681506630065825 -0.24563262516142126 -0.90639961422054061 -0.8008588414059572;0.38293481289492809 -1.6920330934025214 -0.79388233927321128 -1.1054911049279261 -0.61326384342348783 -1.261526417432224 0.73385686926250193;0.13945672334760589 0.936998730925656 -0.71205486857315625 0.062896285666675808 -2.426333494508726 0.92068465465396587 0.97484486839840301];
  
  % Layer 2
  b2 = [-1.1421560119226275;-2.32172201083142;-2.2092166560737145;-1.8837306479871472;1.1970054232238343;0.85980398169221894;-0.87364086918014527;-1.373115576010226;0.56135943484304951;0.49281105223001626;0.59355399273518528;-1.9011936922546946;2.1689983297262967;-1.3912188582743945;-1.4638198240101452];
  LW2_1 = [1.1738756523361427 -0.58659660012556059 0.39739153387289766 0.64839431513840162 -2.8159911749439894 -1.05580936695245 -0.76761173330481203 1.6758335453485664 0.48258134560137722 -0.32683352842577729 -1.3534986529919129 -3.6879202351584448 0.77326142903362294 -0.75425516073888443 0.02152633568799836;0.87522502785366552 -0.060416423869210534 -1.7336271721077603 -1.2900991230686714 -0.39347317457562314 0.050191295350944923 0.38972895040200828 -1.165516683613762 0.042748929339016077 -0.89071862743235064 -0.46636714892846631 0.26612820719687447 0.10424359742833506 -0.10742095519541749 -0.5419953595149517;-0.077223492487598702 0.87672633076373219 -0.99528799642741395 -1.3217227523219612 -1.1595772308908328 -1.4669919081417118 0.44597424627189447 0.95777626181974296 -2.5499850605322689 1.7250202161921788 0.15999378551555443 -0.21724161517366197 -0.73720840674751198 0.76068469082729506 -0.5535591412207429;0.62563065514134186 0.18410631289670254 0.66588433415128301 0.24705084031391999 -1.7173750951363651 -1.9181278590581805 -1.2980993166860266 0.18600411150344379 0.36681801671025777 -1.0819048807507989 0.62918937562616528 -0.20199733513214332 -0.90011958582563856 1.5979309649893838 -0.32859176851376781;-0.5635668138009241 -0.32115044637466034 0.12792096625148089 -0.42239800314770964 0.27418030296127893 -0.88656783597536193 0.6430007373902008 -0.092192912418701284 0.37317862948602815 -0.069525445857720969 -0.66528556985630405 -0.82024813108652539 -0.029649978648018979 -0.074188833804597051 0.074645119025678983;-0.99678193803793858 1.6220748005439014 -1.3575087666335559 -0.93511988449082051 -0.48604656771698157 -0.25355458444026369 0.83179893170874608 -1.3407940662327038 -0.08550686045022815 -0.78326461538882131 -0.65264899520395159 1.4577017260313334 -0.18372735684827571 -0.17007582457962483 0.21600611346198645;-0.61048804276188762 -0.31644133415465225 -0.32623616100941061 -1.0310583150873367 -0.23878183301737316 0.68230443930207063 1.1821770176862689 1.694016122439582 -0.89926100474074755 0.52373025364337189 1.0690176502480304 -0.067665187280479155 0.49551344274440845 -0.72387424695426994 0.037532009843216377;0.011162303820814852 0.18531385916202395 -1.4093919258754339 -0.19118395992034382 -0.30245014879228688 -0.36209187521529707 0.043322443731089857 0.003312436478574347 -0.12651857670317607 0.027420316738639067 0.56472219879146068 -1.069495406082086 0.06547532577468286 1.6946920591436174 -0.24424246541615302;-1.3407749338722672 3.053038530539768 0.064588073565677667 -1.112548531272485 0.19380591340100609 -0.18747079914071957 0.66036412734642402 -1.1645714943671275 -0.46882580665207996 -0.78315468173010816 -0.19359163492899273 0.63100731865082627 -0.74382667568187799 0.15528650487505785 -0.24350186211666985;-0.58728018597239906 -1.0261006778155655 0.10429451058341914 -0.54147874689506359 2.367538217052827 1.8361177736051915 1.0194091523776412 -0.48346809964431364 0.7798542277759708 -0.21610402171421614 -0.95314554989420175 -1.3530558469210201 0.056787820946241761 0.51565192227999679 0.25366341610712756;0.33286043954242461 -0.88938172578095565 0.3237329343824738 0.23194271317123355 1.0785268518033038 0.74474961816117036 0.50823543712243568 0.5353915024728767 -0.21526562301807015 -0.61397389626058352 -0.71093016086115046 1.2097919044051784 -0.037733302770570819 -1.3159383531341649 0.24302883232547021;0.30802146345801223 -0.87478632105354226 -2.2723020886745386 -0.28759775683319594 0.16675098716377232 2.1278273229247682 0.89337339828087392 0.045471676008742946 -3.3691470604004135 1.5309126364313321 1.8342412020122143 -1.1926432210355851 -0.25625496125440128 1.4276887800510576 0.58467875747973586;0.14130673566019694 -0.13689527277975297 0.024103765502658192 -0.39583559488332115 1.5779750873235745 -0.0041055481323556998 -0.20794559984165922 0.43738220273441253 -3.4081778627236359 0.61638004965836024 -0.47423485451385239 -3.1646217907474026 0.08778546163335843 0.25072933820942434 -0.41039261884996575;0.11425395342990687 1.9977396942490149 -0.33946120535208801 0.7594814907973878 0.19250246932427639 -1.2934299470722745 -2.2474308440461956 0.029587140375930236 -0.75731456409352971 -0.16003999352553597 0.37377282156013492 2.4457241022874521 -0.029639891548340947 1.2797057329572457 -0.58548265816817158;-0.49039775747279973 0.42588391731550923 -0.1576474330081972 0.17407207149947565 -2.1441865827271549 -0.69230934300041547 0.51628642290380133 -0.5248230490662662 3.6822404080833429 -0.75894044780071557 0.66973640573403148 3.2103796699689813 -0.45801199862338887 -0.57691856198778779 0.29232973347025115];
  
  % Layer 3
  b3 = -0.33554150054642218;
  LW3_2 = [0.37366882822892816 0.62935798845355917 -0.83875926300335857 0.83420469044869239 2.1578490549489779 -0.64442233991685538 0.83171831240140093 1.3003377448348921 0.41505950142263148 -1.4733743104357901 1.1159554129826728 0.51788157696576076 -1.6841597974928741 -0.39340145885605021 -1.5440032016199634];
  
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