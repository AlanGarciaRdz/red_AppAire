function [Y,Xf,Af] = O3santafe4(X,~,~)
%O3SANTAFE4 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:49.
% 
% [Y] = O3santafe4(X,~,~) takes these arguments:
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
  b1 = [1.4073218489888757;1.6706155987462468;-1.4596335874496278;3.2121875533053768;0.375731536695667;0.14930413678367938;-0.28467263604181248;-2.1185799383816062;0.058157245080662917;-1.0873254366502771;0.66043405398107757;-5.6275615704449056;-1.2106273591397247;3.2158672080997528;2.7716578667238214];
  IW1_1 = [-3.2257713885273005 -0.12734134200532551 1.0243224551001091 0.21474732784536615 1.0055884030067104;-0.19394190020640611 -2.0027913274240658 0.56746800188648594 -0.31697801647842827 0.6405912752432108;0.51461002041793535 -1.0087191145029097 -0.53517374852508892 -0.15771763433372848 -1.2832987541832568;-1.5090780041132097 -0.24678770139459796 -0.37079619701032546 -0.41601169614293221 3.6946130453735093;2.7452432293931706 0.41800789829323265 0.91748990154511822 0.55496047389464853 0.034408435575471859;0.47867701713990263 2.6097679195191774 1.9946102376577903 -1.4788059969758489 -0.62000756520847;-0.46194539024005898 1.4379096322131697 1.5354954938008225 1.1035572656674855 -0.11965400491233097;1.8654367236092741 -3.4981946794104477 -0.05988538894986789 -0.68707470012931282 0.27003695954218326;1.7481937527121196 -0.39780563010242226 0.3634109319759608 -0.87846396818082828 0.3090817568123691;-0.25856577357123772 -2.3109113394208451 -0.7064409172244781 0.58342908659664827 2.6077707931267877;0.19175283635661933 -1.6203249699416764 0.86591710389234244 0.37362529628838304 -1.2028630541667817;-0.43284187754455294 -1.1441666897546781 -2.435660180263103 -3.5172354957520429 2.4950985180461038;-0.96484537109814583 -1.1296932369639516 0.42435436035339302 1.7515813552362254 -1.0575512446025221;4.1011035665368114 0.087594151365497877 -0.026145361952993128 -0.037879387466603305 2.0814220274179664;1.1024141954899147 0.71768247980278921 -0.34707956841281473 1.7863554990642974 1.4395338181614348];
  
  % Layer 2
  b2 = [-2.083524029917478;-0.18782784420030954;-1.211292362224742;-0.025634535073954294;0.41328756236102188;-0.25436930144988551;-0.21315841136968347;-0.52117066637023779;0.22751561986179294;-0.33233416373907049;-0.99339863868909517;1.1543260053217865;1.3148939913565296;1.6283672342350082;1.7220032723994894];
  LW2_1 = [-0.29127824149140913 0.098085946715593925 -0.014474684504108267 -0.28587139806354434 -1.6373219678631534 0.88508318965670352 -0.23395117175016253 0.38538879646840152 -0.18243088264479124 1.4123386532528948 -1.030190675007536 0.64871181683794676 0.12506469669184886 -0.40161668849093018 0.32451640980288521;-0.85056394029125404 0.89789591062327423 0.33878079448782644 0.74458714011546701 0.93504972414998477 -0.24610101695794226 0.16079087748123372 -1.0760978362197386 -1.1488697541237913 -0.12894520691351286 -0.85962849392530161 0.66453105283014569 -0.460057811154646 0.20812588736821158 0.2540222364690779;-0.37870304632104484 -0.30878394111909946 -0.1017865011849208 -1.877268382420487 -0.73874005037418344 0.49855564509055217 -0.43347485802883617 0.37772071899664172 -1.128567522217987 -0.17940668451198161 0.91285955399178842 -0.19073396153111327 -0.5303921089814746 -0.14815285628470778 -0.55694635044432406;0.48806594618169175 -0.97766422521340224 -0.78117630429867313 -0.14311573757901708 -0.7334068923691266 0.0024780741518806992 -0.44309671605118545 2.551111507348288 -1.1794627740885317 -0.085757375861475457 1.1224602184518713 -0.32546327437997913 0.5906717302644634 -0.27023287051872019 -0.29052597781835776;-1.1916624838765746 -0.32232298167355916 -0.49985203591646576 -1.2110707267016481 0.52648006964734106 -0.12436038369889016 -0.55992403300004012 0.44142654623928818 0.63020840044687676 0.27446619450243709 0.22267023772598343 -1.0587854089660578 -0.24986477650472039 -0.56535200022643539 0.083424249018806407;1.1223853585651271 -0.68727597052957479 -0.38919198805076805 0.098014291082846816 -0.64588324999758195 0.30278900506660411 -0.56618046526780985 3.3468473988696843 -1.7214142214362547 1.1357394968750594 1.0253116242054108 -1.1345021780344233 0.13499706588157717 -0.25151776059934705 0.24655517075143019;0.65532084306594129 0.7702351315724838 -0.89787110310534346 -0.84276796086748673 -1.1647548347901249 -1.1140637541426812 0.32676617284302439 0.28607203492483613 1.7848246018680252 1.498612204354935 -0.001990112586697651 -1.750383806441169 0.92628591376844627 0.86363630324446727 -0.86544264170157581;1.714727133071142 1.1046584806883395 0.23695251428413411 -0.40949050972348239 -1.0194511935871871 -0.36587254909646527 0.3941314767635769 -0.59240317779060325 -0.35613911247772562 0.63069384794434524 -1.3055412998959979 -0.054226483628556636 -0.42859808947707156 0.40668426354101822 -0.053240264928147402;0.84085641827147928 0.68069505479833814 1.1507291092982674 1.3068155709546743 0.50419815760355557 0.30011641110588527 0.36074875417605529 -1.6342437201505946 -0.52346095673749404 0.1789788818580641 0.18835472970050959 0.075963260588167575 -0.47128024191085827 1.3188331367488357 0.62724029087789623;-0.19005296844294003 -0.47024406162028165 -0.36263861202994979 0.24384084582882926 0.23285254246981929 -0.61262838433874245 -0.10472298302122837 -0.30887532866340689 0.4323144684878078 0.48257989202838703 0.2168826701017203 0.023478933717861014 0.33218935265643706 -0.34326205877710342 -0.28027563915369247;-0.13235919250961448 0.21664993217679931 -0.43318216965359091 -0.52249793561544833 -0.72315437067896426 0.5186649213075083 0.59742587721339679 0.8982056095975135 0.97657982585767966 1.0948772801041644 -0.27082962832282653 -1.3115301469710317 -0.17949510744485075 0.083811127181179668 0.81145639684298065;-0.40563741100959294 0.58122453828141807 0.50583711665761255 -0.51841375916054844 -0.17827059972550865 0.9309017722359012 -0.2877777344828662 -0.682976014553769 0.38633617195119235 0.44743630646192095 0.22908149731940566 -0.88766897949881041 -0.62088651980615783 0.28709850495997508 0.97247898243758824;1.1552405097514569 0.088318978493469119 -0.14106642328054142 1.6503062908213471 0.40576126153037256 -0.47787331142563955 0.10989981683401137 -0.24715912227608122 1.5926436115606772 0.3685005597689317 -0.63321322166307414 0.25908563502992243 0.27532673626562409 0.48953965783784537 0.51694987872652154;1.5869106126846027 1.6651117697048869 0.15718314328606214 0.19490213100808199 -0.91978531993060675 -0.25414265957053173 0.1153262929693285 -1.5775642500377485 -0.088058211221977795 -0.3799633809731503 -1.2749309246700078 -0.66063449078938008 -0.56877333540981501 0.090859813202611509 0.42077275857068891;-0.29614734861504877 0.5835712805376092 0.3148466393539211 -0.50662063060832396 -0.73995078846796647 0.13596912609311956 0.37166863262611866 -0.41584529630200495 1.2758344579172081 0.81520960461339653 -0.67375111579186686 -0.96972280329613825 0.11212186220650594 0.015725113172181858 0.67781212466500196];
  
  % Layer 3
  b3 = 0.21929975131183849;
  LW3_2 = [1.7092209590430809 1.1309633866069322 1.6212417587647125 1.7090681699113774 -1.0627041397294306 -1.0453190743651009 0.4015970523463428 -0.82600138642755738 0.96453683886328301 -1.1910884795634065 0.61514656590509531 -1.1813366641599377 1.7226492096123522 -0.92270718866749735 1.1310148762698669];
  
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