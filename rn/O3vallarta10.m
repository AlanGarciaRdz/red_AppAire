function [Y,Xf,Af] = O3vallarta10(X,~,~)
%O3VALLARTA10 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:54.
% 
% [Y] = O3vallarta10(X,~,~) takes these arguments:
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
  b1 = [3.8910859572764305;2.7276780977217192;-0.70766898889034868;1.4505598556941925;0.97760074154237686;2.3397872484094484;2.104687378204924;0.19279535088717059;-1.1851834610050951;-0.88428682205652653;-2.2136419911892373;2.2939767139547902;-2.7143504041716393;-4.2504798248776243];
  IW1_1 = [-1.707023427474426 -1.4117194396339319 0.97878595193603124 1.0892284787435043 1.8007153419313002 0.18022555357332901 1.6978595811612951;-1.9725828780269019 2.3194822302679916 0.5294037144523922 -0.74248668963856401 -1.0128445816050742 0.12689489602455506 3.1424705607084462;0.81454656561142558 0.68634020970713683 0.69080089562916769 1.849494397527256 -0.22740403436795542 -0.26099020654900645 -0.59288158036736305;1.8687501135236615 -1.8861502221951605 -0.68882241631846208 0.86019301711250573 0.7309144424524241 -0.10697215632301027 1.0136582637698868;-2.4940822788007995 -1.1704084502794871 -1.2130339457765842 0.98929913903567668 0.16387957318489876 -0.0030174123338732712 0.26429932936694411;-0.074327621628969276 4.088602212982523 0.14081755513821176 -1.7876452286479088 -0.10771078816931988 -0.098966059031199594 0.68295231145909419;-1.8027484753716265 0.29799212085249271 0.42663498054469084 1.1592116789839413 -2.1221545941655973 -0.5872839686272664 2.7744728290778067;-1.2106259384676175 -1.2046183537236881 -1.1941565410765469 0.093578225266418291 1.1008829089200896 0.25330475144177345 1.3167690297279313;0.87366291661680784 0.73277779671136767 -0.92785399073938557 -0.40662833387784775 -0.69506412785696925 0.17480161773587258 -1.1199674628460481;-0.82013052698070443 -0.89114673233278729 -1.2094155255255024 0.66355640492962054 1.7213246121735803 -0.20642957136228524 0.59148743455763753;-2.8950422408821326 -1.6138179451820771 1.1473926939430175 -3.703232711766161 0.47783911528850942 0.15492836628822423 2.8013945360463195;1.3128840394525312 1.8794150041486199 1.1633830258340938 -0.60318740760667955 -1.2613494966889949 0.10470104287331022 1.0514238321706408;1.2121262356044937 1.3849385522271545 -0.9072919307906554 -0.96081982984357373 -1.0473485236625097 -0.10280643763454113 -0.41205350832233734;-2.3226604568692681 -0.26992620999805822 0.71927658303527697 -0.97967067438026367 -1.2896787975276731 0.22544715291323739 -2.2549335016128591];
  
  % Layer 2
  b2 = [2.8786462951903342;-3.0167655307029566;-0.9223726520947616;2.6580830832866806;-2.3065723675021021;-0.2325000371720633;0.16881348416396066;1.0376463715639654;0.58761444559327569;-1.3972724092421245;0.30478651463217404;-1.3779760448296219;1.4270575923627966;1.8632960356335557];
  LW2_1 = [0.51509937126904137 0.037184088182557862 0.14114121733116719 -0.030594059570670781 0.22782367799382386 -0.72835537691884245 0.85314065860502897 -0.49621567546451895 0.84144323451167646 -0.58861516694861526 0.10449645333053895 -1.7560317432288972 1.1637350777326976 -0.7511061568930042;0.27646919936304587 -1.2318571988445477 1.4900130241053491 0.66639115595691767 1.2027874860435046 1.849429834946271 0.55761491610239278 -0.065651450343630957 -1.8822846651130736 -1.6884075635228093 -0.18567476676163214 -1.2926451082179795 0.97266359193038532 -0.11034399255225925;-0.00044738905032114945 -0.02421488389279771 -0.26718833200264114 -0.25691492693533419 -0.49702343357832274 -0.081869390180508594 0.011647369121177469 -0.2603714799071748 0.54205018766960067 -0.75244983695988832 0.30994436449271634 0.12551386086966834 -1.3840647428386761 -1.4177689648476348;-1.6605193699917644 -1.70919635415319 -0.98686185108917335 0.074063283025005547 -0.82757160739553459 -0.93997227152084573 -0.34184077129495088 0.84096083458758442 0.21797053021469417 -0.73072440886214418 -0.019736367525691551 0.096838641354890106 -2.2054880664267857 -0.98414263375757394;-0.26038413734523058 -6.4497621021607463 0.77792305919152094 -6.4979941112554229 -0.41549585990474797 0.86431017396861987 -1.0042362133217453 -3.9058812246634531 0.88165006242920119 0.11359822706326785 -0.49982778241957182 -4.2929332662509605 -0.71054416967864986 1.7578189210559763;0.57738067598110099 -0.19869727827861511 0.171446940314366 0.31079896391949996 -0.76628783663936029 0.10950029789408369 0.10354713023773594 -1.4192709355365205 0.5606155575023134 -0.68358326848635054 0.64275072426416879 0.20684733389480384 -1.8304985501073652 -1.3876337018082976;0.77940577489270146 -0.84136035920308827 -1.9416883131648945 -0.19043835541666709 0.40472843028727723 -0.55971139383215285 -0.49111468928376156 0.68875342074527057 -1.107514821443603 -0.93427959158267704 0.4684570115951312 -0.44893186852172801 1.9195565784323536 1.1549619499898864;-0.4541110770260392 -0.24992595721966032 -1.7135397962011776 0.86737024854394951 -1.6133532571788853 -0.47353317789258159 -0.15509108595191243 0.77727663968994454 -1.3531455810641422 -0.74670950470741704 -0.90112081153262913 -0.51482381397647947 0.58182505734082313 0.3492296285830459;-1.4303109876977544 1.8599681835012336 -1.2285814828691484 -3.0128799795255721 -1.0350785368069721 1.2919204997176241 0.13508410174548618 -0.32242668706576311 -0.42854987319691412 1.3319978361067428 -2.3332745490586677 0.0055533454726139925 -2.285451622025187 -1.2437424137512691;-0.30096658130854531 0.99466660282665464 2.1829825679106261 -1.9304873706002981 3.5060489362586549 -2.15963516935365 0.54278238295348047 -1.9681718800756569 -1.6701359224380774 0.28968855307492375 0.0078665544862978366 1.6382842924525709 -0.58686202868474135 -1.6618977871117533;-0.27154365997645258 0.64988869748953992 0.72347890745693011 0.56110267317042595 0.89200753073182826 -0.39920013089524009 0.20475901828344356 -0.85547691486775457 -0.49254355665362187 -0.92483328492963235 -0.28935148711332903 -1.5259296526019805 2.2829961566255754 1.5150820874166979;-0.35206708337112935 0.71225898971425705 0.48129618045261507 0.085848875583727474 1.1120100545518621 -0.40135674667999083 0.077694451456136904 0.1146221812818906 -1.1775841478490483 -0.48912104218997904 -0.011733336849154532 1.1470219421770942 2.4654078603991727 1.2964318541383175;1.8444157831958872 -0.63367141169546071 0.43170260667110322 -0.64341112725896765 0.49447156567986633 -0.22163575300338817 0.010791353195880968 -0.52670255959057477 1.1137742407762115 0.93335462110571632 0.92824104982735289 1.2746109061383275 0.093906321719849736 -2.0189099784925717;2.9496058479395475 -0.60599494249880037 0.10030834052323834 -0.36071897182089435 -0.4706910032526237 -0.44340027412232164 0.63005259528609514 -0.66783444594146846 0.88971219074727914 -1.3841908816288293 -0.21612484450460659 -2.0784298179887339 2.1157384682178502 -1.3620399030713282];
  
  % Layer 3
  b3 = -1.3269225735145682;
  LW3_2 = [-1.5693498851108489 2.1522838646204971 -1.4808459217538661 1.2215717293951003 -3.8887171157314251 1.1917498096802168 -0.33068288344232089 -0.5565248818145121 -0.26221104988532207 -0.16264757997858723 -0.77392489405892406 1.2083893220263697 -0.80377655486958011 0.87325197815489775];
  
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