function [Y,Xf,Af] = O3tlaquepaque9(X,~,~)
%O3TLAQUEPAQUE9 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 18-May-2016 13:05:52.
% 
% [Y] = O3tlaquepaque9(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timsteps
%   Each X{1,ts} = 13xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

  % ===== NEURAL NETWORK CONSTANTS =====
  
  % Input 1
  x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0;0];
  x1_step1_gain = [0.0869565217391304;0.0384615384615385;0.171659085057077;3.03490136570561;14.7058823529412;15.3846153846154;10.752688172043;10.4712041884817;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;14.7058823529412];
  x1_step1_ymin = -1;
  
  % Layer 1
  b1 = [-3.9071623613329294;2.8632482301322466;-0.95610878492546036;-1.5588499088630468;-1.2590151030275865;-1.4418114816440604;-0.94327845136983179;-0.10651193022079504;-0.26583718742515883;2.9538802543927525;-0.055491470511067807;-3.1740741580824321;-1.7063894928143719;-1.2434762970305675;-3.0684055621464248];
  IW1_1 = [1.4433344497258644 0.55311051857857807 0.29908099304981045 -1.4435363288935246 -0.39132672567138727 0.47162896600202625 -0.40278322079703793 0.20680766078403542 0.57754816399280118 -1.3086581188462973 0.43737992816343579 0.16345294697867382 -0.25364784254089962;1.3291967224344656 0.25738708281986122 0.36839861899674109 0.63799758727071076 -0.19728182049943913 0.25861829388332547 -0.056335776532561332 0.38564244070298404 -0.22219817728267396 0.54686767812479831 1.4603345730024591 0.12498843038317139 0.25223304140816361;-0.089362755972202251 -4.0019403353092349 -0.71215928414719942 0.53852514546983821 0.43835857472836887 0.18970880153172187 -0.18347793420773992 -0.073459138197405793 0.48529571260932935 -0.19006971971642947 0.34956724646503523 0.025500072342351861 -0.26812444225113391;2.058453007943768 -0.01648208075613455 -0.39259398874180057 -1.2343452585927723 0.11752156537124894 0.064657901270405521 -0.21657122997113853 0.049485160676920922 0.011823420885090251 -0.49930114815501453 0.056780640289572526 0.044434978332515869 0.015337760643692144;-2.3995426552794767 0.28657881900877674 0.87353098925806527 -2.0463207187464909 -0.66392040930892804 0.0074244957645466028 0.070952202755783067 0.07008371254134399 0.33701244518417001 1.4071645702705873 0.066118006736660906 -0.082356487368293915 0.10885884472736043;-0.93097903023116579 0.116262717943886 1.1852347643831473 -2.8153522767391306 -0.94061678907192148 0.4688017880846943 -0.3023124137028787 -0.12551422878315008 -0.08231598687057462 -1.6385982899548475 0.8273260020735651 0.011660855439243837 1.7706218722930969;-0.86799600373121888 0.51029520735871048 0.30130943880610617 -0.094959785100602906 -0.82285884990908842 0.32969837122121187 -0.16654526054224722 -0.26443142554940413 0.45226772687280326 -2.5834836352090402 0.78628393325556778 0.1298192057672119 1.1518074161087732;-0.85771482315778036 -1.2100401719286606 -1.9952477368546864 0.33385149030094169 0.29940732538848847 0.12972250154590834 -1.2937408396309666 0.019099771412484097 1.9035875414702115 3.6632862858884616 0.15087900575604438 0.16045550361148661 0.76081405780880118;-1.8006010180003045 0.31566074631782892 -2.0501512291185366 -0.59356406086444891 3.7584165074092115 -1.5769281758983986 1.422248051513529 -0.96655711389919008 -3.3093783648141142 -1.3982053505545322 -3.9157147784131761 0.17277723833750747 -0.9684379167275734;1.1080372068282385 -1.9025585657513147 -1.0224369120871666 1.7045025528953095 -0.464749381137818 -0.70122592118452276 0.72326386540666976 -0.54443482185318948 -0.10796119483547624 1.2733670496615197 1.2091555807666345 0.075034957507049374 -0.56609085914908408;-1.0397604653793577 -1.1382674636509829 0.37285346743772679 0.56427224186789782 -0.45423083458472829 0.18815719946547113 -0.062885728099627683 0.19915956452576875 -0.8014424763163932 -0.50511508693230955 0.6691673781156684 0.093444994459259398 0.6654625242145713;0.10423344905484197 0.65712883639624731 0.56622800826295738 -1.5119948375599863 -0.54380522850659274 0.41076334593461367 -0.36069883407970477 0.10388476904728475 0.76240061281524674 -2.3600072975328787 0.68958394744877305 0.15753712386394234 0.60339961504767781;0.14886602400380261 -0.32783425370078756 0.54845787997831408 -0.55505516974529701 -0.18781466819839998 0.27186780773166569 -0.18270022773813135 0.68587787657438593 -0.36924742499120139 0.012993281951484401 0.022463131194393346 0.16500110341805335 -0.23015413495332732;-2.0318584994150091 -0.1497066931399938 -0.50710319710408958 -0.11718173143192377 0.36079932975602341 -0.11353854191966176 0.00056422138015030376 -0.25748356499718295 -0.16549052315743568 0.37359303346142003 -0.41529538808311517 -0.066630289287049241 -0.23809974209063639;0.74658890451253546 1.2862642332950194 -1.9959671559126742 -0.12794303027062692 -0.78042764070127457 0.96792107862693832 0.72421074816481834 3.5478976514984226 3.7147612431017789 0.98411194867746121 -0.30118144294246579 0.18147674627272636 -2.5210041142895263];
  
  % Layer 2
  b2 = [-2.8106711908791775;3.052458893339991;0.72550871114178928;-0.99834671290256183;2.637770593875612;-0.38489161681110257;1.4839890400598237;-1.1163582387648732;-0.32805333624207667;0.16435535508279756;1.5278191333017319;2.4971302196577017;-1.4764568908166325;0.2060933027642454;-0.15489510359798911];
  LW2_1 = [-0.6064400792217608 -0.28530048383617546 -0.24103171969711845 -0.66003913767541111 1.171389019901085 0.5818769617623879 1.0740973290589679 -0.71415525256717538 0.156039220370984 0.87679960969937387 -0.031459696402010004 1.1314844746819113 1.4885286270367668 -1.764110518444356 -0.023723130297617849;1.4908197609446383 0.52621167960004545 -1.3853516176535352 1.7588525158246198 2.463741612816281 -1.1941497059308765 1.3737604727519799 0.34064703782013284 -0.10824262609127221 0.1642253667574983 1.6494817684671039 -1.2100227512161539 -1.1378419911671458 0.65171594180711001 -0.63735367067202398;-1.3313365108279085 -0.46332375211951415 0.18167054797667886 -0.40008285205338012 0.64375433629885359 -0.24895608793318971 -1.7366530689866497 -1.3800643059881821 0.11335607241517531 0.68230357934153396 -0.27072825840852438 1.8904193883589224 -0.70332814502380325 -0.49101094704113202 -0.47472047790692323;-0.71950815775946897 -0.0905911188808948 0.58485008846421005 -0.31845475526657901 0.73404252765548939 0.071363103557627122 -0.26394494703649723 -0.59675289563020062 0.093293858799298787 0.54374328122644411 -0.54934312568969634 0.65082229147280668 0.95316777590015322 0.19529846281966978 0.259526033740544;1.5344932307663133 -3.4773886693311193 0.25882698268917348 -0.1394650900030992 -2.3575647946979537 -0.65104356787543771 0.74284034351753059 0.58901629074556383 1.132647979466411 -1.4975731861129065 1.9316404149367006 -0.57693901583483409 -1.9022020825200241 -2.2996460040625966 -0.7849165712204621;1.6905524298360612 -1.2744590981020956 0.84499208690898286 -2.044134633584068 -1.0307782279167494 1.4973227793592623 -1.2954573787269621 0.00049741415110850576 0.19872389246232722 -0.18954867611695025 0.86056741336476505 0.28154764516158226 -0.72061518465821095 -1.8577580118772576 0.66221836496345721;-1.5048511642415099 2.8896163074282812 2.5949864997857151 2.7972708954951586 -1.0785310794242271 -0.29494560525186686 3.078824435181895 0.57835068575240256 -0.13059218204620887 -0.22856640681173074 -1.4573427459118058 -0.19606218009149046 -1.1570784924467257 3.1240381680706033 0.89611984852355497;0.64662965442983111 0.43177379102814867 -0.32991387990984022 -0.28343377178746249 -0.038724646250665913 0.49069182661675609 0.49654944099890197 0.88178987987236479 0.1146869108726072 -0.35421313416144196 -0.041724781632164865 -0.69679526080898013 -0.46415788787696693 0.37731086879060421 -0.11603891927028673;0.084651778166912842 -0.9075694344210995 -0.47813943239128215 0.22530404641890467 0.60875280917174091 -0.52384095387417995 -0.25702357858208968 0.055448431190640059 -0.75597173239878379 -0.1687627930613399 0.79606221833311863 0.39794017989492547 -0.83683768569344386 1.1305640389106157 -0.020654850788729896;0.26692100114133094 1.9863605378642775 2.6754704282555877 -1.3546682789996427 0.34442714164881966 1.3197481465209071 -0.8976159189632652 -0.57212954112210845 0.0073675410231022025 0.50212151730221255 -0.75532457151557963 -0.38726800163494024 0.42311855379960572 0.12318561129233196 -0.26514224652884422;0.55882419150011975 0.42348578646029494 -0.057246994244053488 0.92068932164623984 -0.43333238805339591 -0.23405599628297039 0.48594590966107776 -0.0031426209203381439 0.089138197586648565 0.077158971328715978 0.068086017237309115 0.027594370612672673 0.20328540312244101 -0.0074310869353157666 -0.037729933125683922;0.046196303456693122 0.14398187577321164 -0.23927383950674266 1.2022089990412999 -0.14722869657962986 -1.3030665052789616 0.75395801512245808 0.15599570785438557 -0.23617576334179327 -0.77121158758425912 0.13052218400223065 -0.89165298506595669 0.50689089791493669 0.71208489710703982 -0.095426402311705405;-0.29076232020601162 -0.71904853600985941 -0.0033049424359914148 1.2276889337155175 3.6836222017295448 0.28916531845987947 -0.69464388144447808 -1.6686002653391772 -0.049342572513859345 0.22678190529360659 0.47910116643130918 1.1158828758509998 0.8163765521013393 -2.6932953642743547 -0.48508178136185653;-0.24080926641581463 -0.67687566034329205 -1.1324315727555212 -1.8793898740919845 -0.067471949155848601 1.1847495821528939 -1.3498518837915008 0.52784161947171637 0.31824502177204606 1.2842576328701025 1.3536710876247966 0.34739096848266965 -0.37867782881828682 -0.46807174718174899 0.70735011897282285;0.26032252281041368 -1.5691386396826625 -1.8083809201278402 -0.34902605455956992 -0.2990328250023585 -0.71810971187332351 -0.65750461056796083 1.5436820978540973 -0.13638523705528549 0.28981767285720333 0.90050618732721177 0.1258379811207449 -0.52847633620614387 -2.3285222418190665 0.058528132208553699];
  
  % Layer 3
  b3 = -1.6435992544612368;
  LW3_2 = [-1.5147867681165337 -1.0862329875309715 -1.3258593852031997 -3.4029738621397616 -0.39384924494018031 -0.8591621473827461 1.1562790620978873 -2.267297493275922 -1.3082521366265956 -0.32058311759196917 -3.3349478653571665 -2.4262988149355165 0.56870703807830436 0.54453522935035192 -0.38360659222198068];
  
  % Output 1
  y1_step1_ymin = -1;
  y1_step1_gain = 14.7058823529412;
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
