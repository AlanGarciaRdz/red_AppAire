function [Y,Xf,Af] = O3centro16(X,~,~)
%O3CENTRO16 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:38.
% 
% [Y] = O3centro16(X,~,~) takes these arguments:
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
  b1 = [-1.4030932797367062;2.5220371714751164;1.6365545908454189;-1.5662738787860888;-2.1705816450137263;-0.26585826740765051;-0.68737694080873957;-3.5835971218878884;0.54081968291777494;1.2290263947918774;1.8547736868895859;2.0675369822118874;1.1193470756972648;3.6949371307655365];
  IW1_1 = [1.3265063771634105 -1.7773024471092547 0.24280816080771708 -0.059902642389614319 0.78535972644196128 -1.7268220910987557;-0.87547791382785911 0.77066814612133006 -0.52215390711836462 -1.0831379101210801 1.1297312668160782 0.63517076095443281;-1.0912031630394781 1.4133641105905572 0.53626462732282887 0.38723672998364034 0.19276047155485221 1.6957795107742688;0.33778749260218743 -0.5778786710824203 -0.41161003445865291 -1.4329591830269071 -0.71523084014306126 1.7641691374912696;-0.41077954404805522 -1.1691727156569172 -1.0503727421318756 0.28132179071531621 1.6353111996601308 0.035771616454949411;-1.0537610331062222 -1.1562388618136779 -0.60558739229621983 0.62662487666727207 -0.57653759243088265 -1.6310263356838974;0.99492026409684753 2.0832758017934729 -0.87844151325846764 -0.26812506839699324 -1.123979051935839 -0.68631767864776949;-3.968827920093863 -0.77015633206423795 -0.54698593996545553 0.80677789875805583 -0.34421042395379725 0.31997051721023145;-0.1774680469016427 -0.48570479727981974 -0.34787285170654586 0.77537511060748765 -1.0177468179634199 0.92580252372683047;3.756250638594528 2.6710341846049741 -0.35826453270121428 0.87072117454036035 -0.044453168048720862 0.62711973952734268;0.69580127991617424 -1.4549088753640855 0.28106451458134851 1.0744489423759016 -0.4746017259249376 2.2505525701338174;2.376632187663255 -0.96534569169252038 0.2075207221684473 -0.60258604936850524 -0.88883180548713014 0.18103143238004932;0.37103190790043 -1.9269727923034581 0.094062144844061973 -0.44904194255766056 -0.3360704604740048 0.52466837628663909;0.25642293272607564 6.1016834295894364 -0.87808624058446827 -2.3341645702208513 -0.17369583554764101 0.38448238110119931];
  
  % Layer 2
  b2 = [-3.0099545329746031;-1.9925183466112553;-1.9180112415090851;0.15853431580557684;-0.41064327824732855;0.19723098423652399;1.6106150024270911;-1.6419057422427514;-1.6153133947484088;1.3802960842250998;3.0442630739695757;1.8034452776176386;-0.68273501185532215;2.1951212847308246];
  LW2_1 = [0.29587992252518597 -0.16726303780062374 1.8435458641047473 -0.75741477715482586 0.045593221591721106 1.2238035363184645 0.62832039186675914 -0.79496840236808952 0.10996270504948558 0.52021410176871619 0.23806136943299125 0.97013647043464779 0.61827193181235662 0.83213504559310703;0.25025803928964296 -0.66995476576246782 -1.921650671074004 -0.94476842714523235 0.77052863550046535 -2.2517135179869214 0.31060018352818231 0.022303442100883149 1.1388214612811576 2.0452464069426544 0.34192944607802223 -0.70349359155068136 -0.55103021300934885 1.0771282423952626;0.033604682854668208 -1.00872137420679 1.0139699454595668 -1.1669034827230607 0.26336835827969513 -0.068223100686323812 -0.24369748455186235 1.2035632596639734 0.17043622701276234 1.6779125137789777 1.0589257791812985 1.0767136379534252 0.89601653906219891 0.2021948421238691;3.1699268865128607 0.85246250399930312 3.7557418126444557 0.1112578943101632 -0.99108017144515259 2.7415736131294448 1.8915113498042992 -0.15403921963207132 -0.78836285340559675 3.8674305784976286 0.94486515620130462 -0.17899477256821117 5.0482335989957825 0.20608754274939597;-1.2219434482733131 -1.080950856995238 0.35791769332291068 0.27419368179216069 0.47412567345921797 0.085224582405318619 -0.3471451648931928 1.6261282837243907 0.46156222726006035 -2.7191771076082047 -1.0809426138484264 -0.75793811030685609 -0.76229835368773324 0.12711453517164856;-1.8018032357428611 0.33196165245312392 0.14402983727984139 -0.1323189265489258 -1.7498210419950075 1.666303698264036 -2.0150458672741678 -0.44345784993236975 0.25942502412465779 0.96891415032261319 -1.8441919849069646 0.68147624406950791 0.6934769482342058 -0.27472974478770085;1.1624690930698336 1.4153386833472823 1.5996285399448553 0.01224693322364823 -0.096822102082969097 -0.8530522816152678 -1.1512303435334277 0.94819054732270647 2.1702256205116885 0.12449138627361414 -0.48205682876785866 1.3800288362246644 -0.11304207399208227 -0.28414447271600035;-0.35413288818268246 -1.4869929803462065 -0.038560591921839756 -0.9238386115812911 0.94310219893168312 0.08980870974132614 0.00052740436469521715 1.0983771002793217 -0.42490255004286992 0.58596331024404513 0.5397620587257892 1.583185750510586 1.0996777935278252 1.6939047597404482;-0.23040448505562489 0.080982125811442665 0.85584202546962451 -0.55329284609540019 -0.6772881442684815 0.53376505953065734 0.4209605479613675 0.42360033370650957 -1.7647969051579495 0.34584367730086574 0.64562033772713712 1.9623589419820857 -0.75833306914861542 1.0138631656676966;2.3113976177355124 1.0167314279684585 1.8764854099702855 -0.80224980230962839 -0.49503699602586809 -0.12789925912862768 0.3304143431212036 -0.14463543538863319 -0.012154760715915765 2.6543982174404741 0.53008345758121356 0.41838821914624713 1.978688334718127 0.70316397229538896;0.44907089292804531 0.5779020310660119 -0.21550592768003279 1.6505111802926038 0.3785072411608677 0.50815063230415891 0.047084060986622017 -0.99700510662703823 -0.39923094495369876 -1.2195474972811537 -1.0659685277008277 -1.0505678497169146 -0.83309443152776141 -0.3556848039451615;0.84517215676215307 1.9081985115442588 1.3025328913057506 0.096691489861067403 0.42504360955625081 -0.89087179577318598 -1.7124516619133185 0.16377296124461607 2.1333428754487924 -0.053338742056736395 -0.5133161948210232 1.2477375135002031 -0.40117810651158692 -0.73040676196624199;0.74284080160401578 -0.096497431812449935 -0.65908449835627025 -0.36115940210256431 3.405519283884844 -0.75858189494049277 -0.27156254772345573 -2.3335016240401316 5.2368664374062153 -0.078876274586204317 -0.91972000786639341 -1.0134706109038956 0.6318986368584637 -0.21517664624873575;1.8785150543534408 0.52673287948291991 1.2716493552716868 -1.6846119773016057 -0.51621630118325446 -0.57950761341124779 0.3416064533289736 -0.20303569684871989 0.33981536376817628 2.2506704110930027 1.2681497956388617 -0.46825355536102053 1.4767879152556918 0.85093246790112953];
  
  % Layer 3
  b3 = -1.4942757738450696;
  LW3_2 = [0.94788745103920313 1.1731796378637984 1.209991701441226 0.87364958415397642 0.32182579113787985 1.328497492503169 -2.2081901185658452 0.95151906583339718 -1.4080614427031091 -2.295781443671161 1.7465894535968163 2.2080225705632288 -0.4676248074230463 2.5567860229426271];
  
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