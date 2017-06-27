function [Y,Xf,Af] = O3aguilas17(X,~,~)
%O3AGUILAS17 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:34.
% 
% [Y] = O3aguilas17(X,~,~) takes these arguments:
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
  b1 = [-2.171925508701241;-2.1880889103286916;2.1214803783652147;6.6077209109322963;1.3215071439526429;-4.1170827162179586;-1.2296651595950445;1.874179340106098;0.061621857910325484;1.2337697671626202;-1.3485169981686993;1.8850392000364937;-2.911715134984143;-2.0770010064024182];
  IW1_1 = [1.4531542857789477 -0.54936486859665912 0.52093927412564434 -1.1823357727274519 0.068643279134352919 -0.18617156215095673 1.1335819235450177;0.52371866065669292 1.4582403409794245 0.85395255630195388 -0.27516757405423409 -1.5700691206231039 0.232538094208181 -1.0221480808913745;0.05437538395520039 5.8000937153790932 1.0404825955853374 -0.42682462537591503 -1.2179279209305174 0.25502825791313788 1.9141065161876614;-0.15312264326671116 -0.44986578035610958 6.3775762853909876 0.95880377435832798 0.46168212242853607 -0.32873080761734447 -0.63899042014748531;-1.6656587494089441 -1.6033689563986879 -0.51329018239421642 0.1085413847543589 -0.32386409004611005 -0.098656185113601705 -0.33484270581095904;-3.8284829196844852 0.20973030208295385 -0.70678105639373356 0.60347896303691706 1.4688302164033813 0.10392365893184399 -0.91040453877509664;2.19889349831936 0.28646596895455595 0.16659036293049614 -0.0032460152898478147 0.21758715103661633 -0.011226588053586672 0.025322543871351629;-0.31326569535216742 0.56027852161255998 -0.2087507992727268 0.012104492789417286 -0.15416691897325172 2.6599195469836969 -0.83239609531264314;-0.25217582911363678 -1.1345521777553138 -1.6340305885447304 0.79345026464263468 2.2629001638368518 -0.34103228393842039 -0.17148469950778975;0.95455564884516442 0.41560984173310411 -0.14235414631537641 0.39552087425400284 0.49676387346710754 -0.23043605695879341 -0.20939451765781497;-0.068931184158623815 -1.9188438633736191 -0.23798987326371479 0.37057107228870145 0.3228684094082101 -0.22249533789552681 -0.65711315027996031;2.8370604045414844 0.68092596497507984 -0.71570451334328156 0.8531694901441399 -0.38300522383093272 0.28862588466261818 -1.1025476227471911;0.13501695565987187 1.8638943847129519 -1.4958511411895148 -0.89880198967470459 -1.5471022402683836 -2.5944714808502924 1.237251178780107;-0.17180425157972293 4.2109305036886768 -0.21583731526567054 -0.41160180853562678 0.45431217619335457 -0.082221648415249468 -1.6189933109416415];
  
  % Layer 2
  b2 = [1.2301018031309832;-0.073588976627237512;1.1799438850807187;-1.7497331584878535;-3.2178898163014846;1.0692633271148804;1.4679307659905734;-0.25032614218756966;-0.94599600216534852;-0.5463083766840916;2.6256967696010656;-2.3989883484718191;-0.56435495544258707;1.4127738600380193];
  LW2_1 = [-0.43521274876554816 -1.6448306382665108 -0.28344332269118583 0.41233572892408243 0.65761067624902103 -0.53403577662706525 0.58730527603567106 -0.91197543605189157 -0.95287897805208932 -1.4506159431160432 0.35226525715827101 -0.27486798334150242 -0.091223393589977081 0.79426854534946667;0.045846743615823665 0.70030208916336789 -0.31007322684074839 -0.066692576877327991 1.2956366454257164 -0.11081595510796625 -0.68720089081186353 -1.2580933683300448 0.28509749487542496 -0.94900025377791297 0.20044247587972003 0.056520462486208456 -0.043912932679154165 0.51189469754447015;-0.5234290736704067 -0.015823529291065855 -0.77491868996717639 0.2483885982064139 -1.4800149028989225 -0.3796051582738616 -1.6818599722857792 -0.29331619238934536 -0.86432595385536104 0.92788231476989169 0.22594474496767755 -0.55021748345099575 -0.40855428573581126 0.64434027569602337;-0.15975275842018394 -0.42080751114973552 -0.79620580733937296 -0.12538380775369445 0.14644809042812076 -0.12833981242901468 0.728988898513102 -0.36429777479091757 0.12088817704942065 -0.73985505280500385 -1.0647755080776946 -0.21491460168465024 -0.17852631209613207 1.1225153836215429;-0.12137959511913733 1.2076590769578426 0.11674355259953773 -0.28748804998943495 0.76249329169215574 0.88259014811226233 0.32300716809086949 0.62894350372166796 1.7281168922922479 -0.4313388110108165 0.0043483019622985054 0.94552907928481134 -0.50379891150330924 -0.4874050663833841;-1.3361695230443738 -0.60468514841492782 -3.5773166809417027 -0.01206798602901385 -1.5126035557653092 0.3086604515339455 -1.4645875451901025 -1.6121009265853186 -0.40231911700377954 1.2410683222763534 -5.0733576841125805 0.36170231562446453 -0.15055404289050825 -1.798729217525487;0.15837907359840514 0.47398837305613961 -1.6470575179974891 -0.000721467886970922 0.28532561479494167 0.23765698240049904 1.5667953807128592 1.0540185122371111 -0.017148565708955746 0.79256656066280506 1.8115882974745896 -0.42618455248432113 -0.094225846621314391 1.6521587086770015;0.4223442596592365 0.072026165918028864 0.62118634020322505 0.29005059944650052 -0.22962454530779847 -0.00072988913506304848 -0.70333773140795475 0.21509528123318575 -0.097357992429273427 0.59358202013428063 -0.37395334915922451 0.052172196095240084 0.0033721344941610235 -0.71968453409888367;-0.55759150108131605 -0.36724666531653566 0.76938520358986784 0.060176516733310134 -1.4189488530717842 -0.68388200399867827 0.64074458938844026 1.8206744334937062 0.090679446699235222 1.2276779606215551 -0.057496158179923179 -0.70447108713497297 0.0088025846443969252 -1.1655086239871104;0.38432364249549716 1.6274554908820826 0.34149459467480275 -0.13795044899635261 0.31237015067604762 0.82015781111116837 0.14648290900623245 0.32623041171113382 1.0115729395005657 0.021082438894162711 -0.29441214295119533 0.75475066539535551 0.079808560146751417 -0.9258285460299468;-0.67506997563159798 -1.6470395664824538 1.4599770465141759 0.77721126341596658 0.58509913615994247 1.152189728513257 -1.3568014662757846 -0.49882624582520441 -0.40157099252933803 0.99562249660430413 -0.46584272042879027 -1.7554408074704142 0.15020637708092857 1.6748089211856747;-1.5532575229122769 0.70513118421401122 -2.8657962144385225 -0.79054045886618241 1.6373579861897445 0.085384735761490166 1.2316104886794219 0.14332730347675865 -0.45238748402874501 -0.92298663454492735 0.96342139361554813 0.1281316302435524 0.31087629693281887 2.3979393209661208;0.40729190829245465 0.24237059629487859 1.057814796226034 0.21066850160100792 -0.77292170042829522 -0.68636072129431835 -1.5191757699231103 -0.087656039748160358 0.22709656696408301 0.26753278726626328 -0.22951454234974711 -0.075363340032369414 -0.048969858418684238 -1.1402309993190596;-0.3126793975090949 0.96959558536295098 -0.036084229249690875 -0.50299797004096958 0.9621014913372119 0.22246740539028551 0.68293379669526544 1.7258551597835263 -0.87652609529042091 0.5054107859603818 -0.36671384314678768 0.073644701870535068 1.1671823966226242 1.8487330161304154];
  
  % Layer 3
  b3 = 0.14912215145107915;
  LW3_2 = [-0.67798995967471221 1.9911264612609905 -0.96296639280956531 2.6040451111980101 2.4307935145762065 3.6908785169244527 -0.38209244548686683 3.0756206938989399 1.1699001489526213 -2.567003926739964 -0.21845734370560813 0.95515626004202248 -1.6719062433016008 -0.47213736710948812];
  
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