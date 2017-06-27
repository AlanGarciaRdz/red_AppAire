function [Y,Xf,Af] = O3atemajac22(X,~,~)
%O3ATEMAJAC22 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:37.
% 
% [Y] = O3atemajac22(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
%   Each X{1,ts} = 8xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

  % ===== NEURAL NETWORK CONSTANTS =====
  
  % Input 1
  x1_step1_xoffset = [1;1;0;0;0;0;0;0];
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.201288244766506;4.04040404040404;166.666666666667;0.0561797752808989;0.00614628149969269;9.52380952380952];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-2.8918201509559105;3.7930527524298672;3.320355265458224;1.3928031958779314;-0.13089167220628817;-0.077206426590738036;-2.0100341041952769;-1.2662032085478889;-0.19209857452106688;1.2516072596006862;-0.75186187121552517;-1.5461645928834491;1.6978706456840011;1.1794666707889265];
  IW1_1 = [2.6411109190065285 -0.25116839970110622 -0.62107606602327314 0.080369642863341612 0.24839349167209596 0.25781694749569822 -0.05834367570076663 -0.93162504202518348;-1.9074295094597036 0.21411628100807442 1.6332731056404077 -0.016728283079505617 -0.54742291694132683 -1.5245982499206145 0.068833730650857933 1.2686978568345562;-0.65270234398774507 0.35440544752148639 1.7291953608982571 1.8222736901555907 1.3969187493817885 0.97142683620782666 0.042885887597290867 -3.2934825797455249;-0.35033245554615111 0.55189961953024147 1.1939723397384048 -0.59206979021568495 -0.37207149307207588 0.28215378520900419 0.27575887451031234 0.31538308215017191;0.33606699380926547 1.2719973915567182 0.36694223263594455 0.1377436067893687 0.19449871980703501 0.36540780693801755 0.0050286048342573237 -0.48054746013554245;-0.014599334640802309 -0.39813798500630643 -0.77035153918272126 0.072810706491768892 0.94888010631316178 -1.3808638823348771 -0.53256870811484058 0.6670583897233674;1.0902925249103841 2.2616245598911835 -2.6987878807492938 -0.14247292939535772 -0.0027851578162741211 0.65316605774678083 0.1070467258463432 -1.6047791661612847;1.5859797150752075 -1.0529905691024073 -0.6307870858288771 1.0535289730400188 0.090268931090465271 1.3370593059570886 -0.13135870629935503 0.71147521172148487;3.2212897761087542 -0.63832993684818529 -0.34479009326211107 0.81545189638666182 0.15287968983380831 0.085909661620744315 -0.039053496111281498 0.76395455475483165;-0.39364874444707659 1.5838579561956498 1.6996978503299385 -0.45149417965776723 -0.2920444400111179 -0.57303575794672623 -0.13277909903704438 1.5380608204144748;-1.2019781295779626 -1.6365634921391581 0.34655557510092816 0.80563144089742122 -0.32316045383142916 1.2909661724757528 -0.4409286176580412 2.8268729191951838;-2.5928898321357488 1.0115354984431149 -0.69544491714386425 -0.17667976143638314 0.44354718594545317 -2.0135995347451408 1.0212679913732063 1.1491288590186497;2.8973140986692454 -0.87047210074734171 0.19848711529042523 -0.51066672280300107 0.40935736568614145 0.26947607519024402 0.032615537197106928 0.89651376922384429;0.25888170651469639 0.67129898559319456 0.47616773011552882 0.071742007168523469 -0.2423004451512292 0.16328170275187087 0.0093807646522471467 0.84964914566837679];
  
  % Layer 2
  b2 = [1.5094304106333307;0.25525851566692598;0.95812190865412905;-2.2549830973283393;-0.87923908702357267;-1.7567428171524884;0.35513851617019654;0.3910733618275678;1.5090262161098043;1.2236548751001324;2.4205008818685614;-2.5394829501386922;1.9304036633017629;0.88375018918774995];
  LW2_1 = [-0.71520677934046906 0.10019764675212847 2.1640914721859379 -0.56983392677334488 0.80395437876015952 0.20618916400267767 -0.55023102816772129 -0.56711600427844833 1.631213957160613 0.24461623764826254 0.34735373228179095 0.13651899298169906 1.0333549018809143 -0.22793701572811051;-0.88749983958684175 -1.3940839768294808 0.38164174040857335 0.46774529142385857 -0.05798783778907754 0.30615260648441778 -0.40202680515266337 -0.86344776627883735 -0.42065974272904361 -0.10996605318946426 -0.37843094356033957 -0.06945969831665337 0.0057533883101086591 0.2859917908892578;0.049839734439259369 -0.65960414325010364 0.10389515971893334 0.15282156881123077 -0.32539229822152282 -0.36511830889850988 0.58993659250068142 -0.20238798574337319 0.49792774986145316 -0.66273781986674918 0.43610448375731425 -0.89569584088222365 -0.26582177373487098 -0.067421582618862941;-0.49697772168099563 1.3792701512535439 0.013855222952479568 -0.56915255773452988 0.95427056243917674 0.039848069717060286 0.8612394576989838 0.72800578288915474 -0.64652220999286547 -0.44443726619394486 0.089282715202818205 0.032121273736200578 1.2767936310449981 0.022826501887150415;0.51047001984207296 -0.63641551757433501 -1.8935613859187561 -0.041953107317064017 -1.3270150004049415 -0.25600504509008964 1.1281011618062728 -0.30439146988596877 -1.854211736605121 -0.061017933417652825 0.97859547578916684 0.056887472352683668 -0.82191782079492604 0.025001608186114188;0.1176079128639767 1.1088416383624127 0.97719971507609849 -0.24841284940824171 -3.1130882164468394 -1.1020145644268862 -2.2855027537012216 1.4868873046294269 0.29099397356556389 -1.5121580155266074 1.7413201090825052 -0.11860134958077651 1.0520847638124846 -0.1877826015910864;1.3737043347629248 0.14948684014091412 0.87420270036029457 1.3494740237242389 -1.9237872105517588 0.6160753990528679 0.10060870130904451 1.6537205053419308 0.74311646306675727 0.060232600774480019 -0.1766530026637963 -0.10390244057660922 -1.2394545034909767 1.0149100999722156;-0.42129372917078212 -0.97323845934611564 -1.1405739116177664 0.72675464825673786 -0.3009735185174951 -0.12954280115381389 0.04491899320925876 0.0084392921179883007 -0.36339103420175145 0.63228393928971716 0.49149324007003864 -0.037683344169674615 -1.1521569827091542 0.34916227318429205;2.0194913182924195 1.3567216777833417 -0.20491825123781041 1.5576980505634579 1.6068465829881153 0.63364869642908184 0.24158449392484255 1.5063617071623783 -1.0430721243050471 -0.7346158118591829 -0.3732325679064688 -0.43469624209638297 -0.31094447135176745 -1.5199781354145143;1.6986855745144467 0.85803481761695766 0.35868519988329867 0.16684106803908608 -0.33535024517135809 0.063386178473064381 -0.029312552356456252 0.73421605929663136 -0.40696354439691401 -0.11831980069767668 -0.086436828829657725 0.029082518048013244 -0.12577720520464128 0.18381176659182802;0.82351318203349555 -1.4959219322485495 1.6479379411864592 1.2016001692817799 0.77309560124387589 0.38371826588727187 0.86310858574488669 -1.5846611849677887 0.36725725298567624 -1.6573048715451182 1.1280743390287329 -0.62891579369515815 -0.57276944054642587 -0.19531607126812101;-2.0230754324666282 -0.98114858330781718 0.63848743790799745 -1.3702257382360996 -1.3964400042751606 -0.44671471296987897 -0.28622820972480395 -1.2567378703740402 0.25784188135169583 0.25393384108367922 0.73702609569946564 0.35339476842660739 -0.039802199398125668 1.8363847633093984;0.34231040503167209 0.017164507839571769 2.3598625967711677 0.97738369845786721 0.28529091778832483 0.2215769532596204 0.692478144924769 -0.60270399597620206 0.62525575485457208 -0.96646476629069278 1.7429725334457418 -0.26525057798812579 -0.41954402344381597 0.21561709162571602;-0.44535823871293218 -1.2585218147056227 0.18068748804850665 0.13915376398049353 0.024233032371546018 0.047983575439307792 -0.43854758887386447 -0.88185873629182676 -0.22632944471013933 0.0036344100662896468 0.24145003053935976 -0.25309990983165681 -0.4329688394717483 0.19811047174057894];
  
  % Layer 3
  b3 = 0.15935181696460277;
  LW3_2 = [-1.6521894706107738 2.0896820813259218 0.11389882434463414 -0.62422944292290639 -1.2668131572519383 -0.13539858031966481 0.19895999817739862 -0.36174255774876141 1.2365404482857876 -1.7851769591546325 -1.7746782495970932 1.5725475464281713 1.9771984551227226 -2.4730531959747251];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 9.52380952380952;
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