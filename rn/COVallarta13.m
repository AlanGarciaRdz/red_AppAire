function [Y,Xf,Af] = COVallarta13(X,~,~)
%COVALLARTA13 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:22.
% 
% [Y] = COVallarta13(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 15xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.412371134020619;5.12820512820513;24.390243902439;0.02710027100271;0.00630517023959647;0.141843971631206;0.201288244766506;0.281968137600451;0.290275761973875;0.304971027752364;0.100381449508131;0.172786177105832;0.171659085057077];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.1853596946956599;-2.0920760441031403;0.24486192569907539;2.2185863844900204;-0.68806102429129323;1.8785831071368804;0.2197959127713987;-0.5676597329967904;0.18070668562523429;-1.0264937322599128;-3.559575630911894;-3.9804643971984435;-3.8980606219626233];
IW1_1 = [0.24806951603267918 -4.0408776604304624 0.10825091477347705 -0.20063723385509111 -1.9623635068402134 -0.11381555860990612 0.066095557708446426 0.12908940599498184 -0.17946129585708626 0.13048974549905812 0.43953186295209518 -0.05026836659584781 0.6467840241913938 -0.02630173022462047 -1.0594166706016561;1.0627435169788804 0.10678999353017837 -0.16096965213227615 -0.24975939305993594 0.46842090879698733 -2.7993780745704528 -0.60513235832981183 0.46013207214680768 0.17685264638706252 -0.53353637760467387 -0.0033117915717435775 0.082715546253698743 -0.15717873535948873 -0.15668714049177593 -0.73113277784907649;-1.3397931498642919 -1.8384540284089603 0.13942736476323184 0.5250361717622366 -4.5197121541201399 3.5141535712230607 0.49006416247140167 -0.17679196339373976 -1.1691756627821663 -0.0128733213292818 -0.91972730701567584 0.78464681735315767 1.9739457546850185 -0.8475728914189018 1.4846217131076338;3.4293895900191171 -0.15181547081675081 1.363680301355265 0.36219883781288637 3.4717532268405105 1.1021830533491228 -1.7240533937703015 -0.30177783902045513 0.011763004291785086 0.70313616736339224 2.3417719938887935 0.11568998080978815 2.4901328919769341 -1.7789881806687613 -1.1645101512096696;-0.34704753436311919 0.073155592896902988 -0.60938351634722177 -0.91437028539583765 1.3823909083374941 -2.0540403239273508 -0.78523943268274699 0.47526855681822228 -0.58430860125192641 0.21869771352826997 -0.42072394845728384 0.43866823873190119 -1.0488149220246958 1.505178143692103 0.02108486280693541;-0.46931812891960495 1.8916309309287942 -0.88723912236803215 -0.43066700707517747 1.3469460103357425 2.9644386623065402 0.48788866373805567 0.36217639622403619 -0.85444574057262423 0.067994407477272589 0.41635424291453593 0.70483464444640354 -0.47348866561529773 -1.1770522834935522 0.049817843792578517;-0.88564276151502164 0.23548846223701753 0.11791931274646519 0.091359277952637791 0.022312435594470575 0.33486453890475432 0.32102186424216445 -1.18634098307114 0.73461762943099607 0.92629344021857063 -0.46875537837954961 -0.18919320579028487 -1.462973764596728 1.114531592714004 0.066415454217164993;0.85408493833646726 -0.20657794635888851 -0.30043622938753201 -0.79868209510963517 -0.35741952124486998 -1.3087981387595864 -0.34732228411471683 0.17353151999297228 -0.30099135066228949 0.29920120101857772 -0.42262809894643 0.39527325458551604 -0.61498474526216484 1.3533970611663464 0.32782233410312789;0.17989050136130819 -1.0794947853620904 -0.15958903911958688 -0.13565382305067764 0.51086198017289164 1.2132960144448175 0.24408570803858207 -0.067184335524962516 -0.16118402794827186 0.12544716068305278 -0.12901862823927596 -0.1442563702092228 -1.0159373591796037 0.50686636140186137 0.23177782177980039;0.8921780261585559 0.3831993401706727 -0.18496545287969018 -0.057763195105432694 0.071079856494055349 -1.5704477298634794 -0.47750547323821274 1.8282094903526567 -0.3786458337785108 -1.1445071536812654 0.59700300809167528 0.31492323862374838 1.3813541511049356 -2.0182271082400653 -0.66511209251381753;-0.65801432898541445 5.3977846631603406 -0.8508163758291073 0.62658729162189775 1.4676915272427871 1.2839084490212589 -0.11125771454722541 -0.061116943268146304 0.37261541463279008 0.27660407325896275 -0.040912225921601 0.19672045516085485 -2.360754986454451 -0.54769916971120636 1.6151611713791807;0.13643398364766518 0.49565330051414058 -0.012901925401037396 0.21886219810730659 -0.72352024234104295 -0.69064827005646301 -0.14063257028308707 -1.7586723006929148 0.2853868045868751 0.26441399892074102 -0.3663857091366774 -0.14102254997853403 -0.51499315477697982 1.4159276813622566 -1.0826229010046287;-4.5905671548098637 0.058617412737369007 0.50485948801289593 0.093514868550371361 -1.900980750017971 0.61035906447872335 -0.11604567756256134 0.74191048539268734 -0.15306915919032724 -0.84636782598227667 0.54988219769773106 0.00038882105158857816 0.90850352638089726 -0.15814088434200368 -0.63717051038426742];

% Layer 2
b2 = [2.9946272368708686;-2.1820665782074045;3.4246740592111928;0.49710434507162649;0.35567861199265133;2.107225269250395;-2.6374421090007307;-2.0231597490744702;-0.28984386200427004;1.6758417009136966;2.9944665691221592;-1.693334294556363;3.1017562724373073];
LW2_1 = [-1.362893519756357 1.8200159485307394 1.6183508911372089 -1.2939809777523492 0.44131042424664974 0.45243532922371343 1.1334395755122815 -0.91638766185044285 2.0686934108341002 -0.52294062374119266 -0.51917532311978942 -1.1108090646721369 1.9278025120524434;-0.80024938378012545 1.6443366355252864 0.39150110035400965 1.9765834319354665 0.72637078561815671 0.50489614801892602 0.29445334653695038 -2.1477893714940781 0.55663793840919873 -0.65601755074435919 -0.80257185866992575 -1.036879541022204 -2.7180208254050076;-3.7037484226342787 0.86917683306083005 1.2422165300295549 1.9012243758906586 -1.737282507638606 -0.4020261542490069 -1.6568357376203569 1.9532795799004039 -0.42085889303610785 -1.225129421213317 -2.2440618137349158 0.28074710403399872 0.93129484808191521;-1.1867346455023458 -1.2939364332998839 -0.081955104792220304 -3.3080743471711749 0.27842686285961404 1.2068849844312162 -2.9501815784786105 1.890084897554692 0.5412010036953101 -1.9306249142985232 -0.078732814256169847 0.75745693257838043 2.176855731259447;-1.7949510352636946 0.55378784445037721 -0.42580607668485615 1.2410529277009155 -0.082667181290040442 0.59579081629763031 -0.18887108117913715 0.44826607536383151 -1.130037038027532 -0.39469624589238361 -1.8128670224121499 -0.88017993055361388 -0.61445193180623037;1.6267319780181562 -2.6480234818929755 0.70491223221197874 -0.16884495513903686 1.1407436396520154 -2.0418152090090844 -1.2805799819847241 -0.210259367142829 -1.9967018287314726 -0.62959848815611463 1.3020292251765018 -1.3111607856717002 2.6707587595786064;1.1076215063531389 -1.9482222558610323 -0.68297134522924485 0.63736308668187658 0.38951929801074453 -4.5667506034994183 1.2723941116227113 -1.9545628386722647 -3.782045529609503 3.3180255139238919 0.38987150353056516 -0.093802904883814237 0.46274656532072056;2.4310645931895301 2.1610694973677358 2.0631827668513503 -1.2079072604727308 -0.44258345170179381 0.087177911232670421 1.4766796003074045 0.79963845617495743 0.32067881890056332 0.099442541373293919 1.8094674412215728 -1.7486605419635408 0.86373031936815647;-2.2391825343136236 -0.49979728207240071 0.29236624584466153 1.1871259311888174 0.45960931240057462 -1.1481943563810251 0.096455497998263334 -1.1718393653809762 1.8793567016030686 0.19980346244285871 -3.0035924845415392 -0.83992971450301857 0.2098829377643828;1.3604880924565883 1.2972891675256335 0.50336669846995863 1.3288850780013064 -0.20520263646127929 -1.9495214352890207 1.135072087394404 -0.25406383012644562 0.55659563369845744 0.098908339574598991 0.41203509575814257 -2.2091124608394281 0.28856324568359443;-2.7100116724895971 -0.26290292522054998 -0.14636181717855329 -0.067728995946701689 -0.11155173148474463 -1.2634422190831751 0.53058752854819824 -0.55842764851719806 -1.437861961653438 0.87157249449942786 1.1572176282015452 0.0014024424785190615 -0.86467743077086401;-1.9569940739991445 1.7964931161498376 -1.7675930531549597 -2.290712407644186 -0.59430504923912708 0.59029190684650423 -0.059488155256602775 0.51553651452505889 -1.2306804153342166 -1.1242822931578642 -2.2132272149182626 1.8197142057094822 0.10826294619260914;-0.21016899680018716 -1.8915714856642729 1.4193789634971503 -3.9050986898466888 1.6045786197466458 -1.7762624019549742 -1.9426329917415708 -1.1390756397145023 -1.688311492693797 -1.7833473364188084 -0.2247372001931498 0.6281050550611984 5.6739914961422411];

% Layer 3
b3 = -1.2469544609334193;
LW3_2 = [0.49907117640984422 0.38760771309161374 0.18422781195828344 0.23431872046072849 -0.45168364186927923 0.34479940817817289 -0.09936303977908352 -0.42285832680580032 -0.37990411785602668 0.73803352197132144 0.30062389503166248 0.12079690940873551 -0.30759993125738799];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.448430493273543;
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
