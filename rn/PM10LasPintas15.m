function [Y,Xf,Af] = PM10LasPintas15(X,~,~)
%PM10LASPINTAS15 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:30.
% 
% [Y] = PM10LasPintas15(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 9xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;5.0251256281407;14.7058823529412;0.0179856115107914;0.00280033604032484;0.0558659217877095;0.00576368876080692;0.00618238021638331];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.0773384686421081;0.018506574618222398;7.6649775455863507;0.18534158941015297;2.0719728969900593;-0.55144793794368441;0.054707356448431887;0.15868304011386322;-8.3736576680170192;-0.042688400922264946;-1.2993032967745042;-5.4345910412087974;0.52931177099691673;0.33453505663059413];
IW1_1 = [0.64310000191344541 3.2321219358890283 3.4043387718245421 -1.0283343027421814 -1.4032098833380715 0.089785100366833903 1.1558763011510176 -0.11207380760674593 0.037647957840130433;0.10934334054989527 1.1269929500862148 0.40445050273383693 0.060002334142462435 1.010555443270351 -0.55615943949029323 1.3079254327691239 0.062236789555793592 0.14609816655826791;0.18955315527108296 -0.109054801384698 -0.85725789099597438 0.45938796222811551 -0.16161286824806201 0.028869680038988033 -0.27119690238224425 -0.079280096121054272 7.9388297169520472;-0.55462296296353664 1.320195808421553 0.37830042623897792 -2.8401937012097123 -1.7249189387291153 -0.7431706355287202 3.2296420347578949 0.54048833186346545 -1.0347764831598738;-1.2305271619843674 0.094961354544985055 2.0983877955383305 -1.5812360893578206 -0.10065366703590703 1.3813693178545898 1.7769885050417278 -0.014746939289394906 -0.28251177065320504;-1.5596612941413348 2.5751413605608175 -0.56167481320419443 0.26737576571575172 0.80933818892340637 -1.0768238005672439 -0.9509952286746346 0.17851627271710915 -0.41739701298546295;0.070342470304318477 -1.5496757206740637 0.59185575410505364 -0.031947809232945018 -0.32278246037483299 0.59000217190508741 0.43922246978157298 -0.029638435282038605 0.015287611362822941;-0.8376401256681667 0.029846893600554335 0.81136949667248126 0.26804117393958715 -0.042364531639735227 0.53461886598492037 -0.21778678007484262 0.027218599176128285 -0.38817824458482592;-0.54448357994832552 -0.16132434689815622 2.0019405903272998 -9.0907058853574867 -0.36682680387514927 0.5728895015952481 -0.10521954341942268 0.11819963821901983 -0.47980590879091828;-0.25421727070724004 0.88706136368619037 0.60255366770537344 -0.13887665491096285 1.1650815147870521 0.0034395305431034404 1.3819867925296188 0.012385833244710645 -0.0082046974532879093;-0.50828780452563171 0.15677361005963159 -1.5464732706997213 0.32528921121209042 1.3703885557037927 -0.27209629531644686 0.14637776993719326 0.02288257311998957 -0.053201570653164498;0.17362102723399112 -0.25687646356126387 -4.5768971399949265 0.4913461108259064 -0.9262843964257943 0.6154366207562374 -0.29854850952469475 0.10465286094445458 -0.46041978163783981;0.77515380320278626 -1.2351967828024968 0.77313103809151817 0.087959005166492521 -0.085944022695412042 -0.12604667798707522 0.39042365699955706 -0.028264892166924741 0.28453330575367886;2.8107598552062205 1.0890599607565012 -0.91204245823350039 0.28652484391277122 0.0088687333218452798 0.39866082230913125 0.31232302384892802 -0.044921734854094744 -0.82315942677588305];

% Layer 2
b2 = [-3.9418976062952478;-6.5535769727771012;-1.5366299723748955;0.36308425847034365;4.7652571626485063;1.5543521829949201;-7.0863480391357818;-4.3418673069432359;0.24304801196941381;2.8192155076039125;-1.359458827728308;5.7967006845228291;-2.7496041881869875;0.41683855772410255];
LW2_1 = [0.63745591025498627 3.4444448443801297 0.77622396823012219 -1.2033003128736257 -0.78942437030407553 -0.95060900455216535 0.028394149567454202 3.6015025395907623 -2.7707007390464042 1.0724892182804018 -2.2248578449296028 -1.0398531889252367 -2.1109137688624937 0.71664494592360717;0.48283685105612084 0.61085357369449678 -0.18227016146714384 6.5668301111452188 -0.53577548870242342 -0.39740792535000619 3.1264408035111728 -4.6120694491711776 1.2122189915115771 0.094170966103311549 -0.37205165738676205 1.5459812046382992 -5.7564625407426675 -1.9373219922660641;1.1309019180028685 0.17513911727355078 -0.46306599601121057 2.2749604404428947 -0.88857980635816913 0.5312667563052762 1.4316804670300443 -0.483727741221887 0.32711923882326388 0.015204647997616588 0.82525067486943404 0.33425132123562229 1.5828178548310861 -0.4311532689844233;-0.83709465142872408 -0.63496072197294651 0.24726343457809336 0.87843298726246544 0.72097162857242902 -0.89769842412915046 -2.1944437587282826 0.7625930148709672 -0.32440317417741305 0.97046147839130448 -0.43655358815388645 1.6981066955762838 -0.64744795890030293 0.37980909992782474;-0.013313121544421826 1.5726384027500804 -0.15371539045976401 1.3623725887626754 0.34553508307174452 -1.1285050854394587 0.98315618358254353 -1.7184053912338486 0.07691277965069114 -0.53905074397106711 0.8136171056625453 5.8241189623719203 0.42836986577045399 -0.91121734917106534;0.43687336862943515 -0.17763808337100209 -0.17800564101890251 1.1445072564058385 0.52427195674808913 0.21321433899059575 -1.3263240256091127 0.36624618094864203 -0.33519849814240582 0.23464569153494999 0.44684367904787387 3.2934470626490655 1.9375419887427374 0.3609070264416458;-0.15800630807261176 -4.3283648059822655 0.01955823111659314 1.225802115334065 -0.58163033939208719 -0.81255273055258093 -1.2680586799363305 -2.3614863976791467 -4.187573730221076 5.6035422802725163 -2.46714709964726 -2.6040535634196527 1.4092536309718493 -0.18529424480584611;0.079276146125471458 -1.8265456542876355 -3.6533416269494254 -0.29890613250748699 0.14496208812510719 -2.4525865549457779 -6.888256193065204 0.74493345134724764 2.4465102536384284 -6.3561014183383282 0.51209365703913035 -2.8451078974807396 -7.6619285610734407 4.4298794210893595;-1.9738508082310935 8.7842164791647281 -0.45895113456005193 -4.5790283471132387 1.9169463426533906 -0.58444628810707611 0.92551693270440694 -1.2533284912593019 7.7866414633331242 -9.0140698056766908 -0.75925960731416309 -9.638970686413618 -1.9580354114781477 -3.6363851860019598;0.91762417908282889 -1.6492049932033883 -0.50381191103858514 -1.6403754960053878 0.71107947235974756 -0.80303331284970847 -1.1195015285844871 -3.3175462057014835 0.15912159516044214 1.3177944657633418 -0.089645222696745921 2.1702394850520976 -0.30069832491488246 -0.045211315861679841;0.46991284750199586 -4.8084974034304437 7.4905755217591938 1.7369978966581938 1.6474307100777692 -1.7582682348822729 -1.673617436733684 -12.810680993155401 7.7319009871804871 4.5246770788187085 2.1240306238316897 4.955567942331637 -1.3553841800496935 0.94264669810378576;1.5202715021982316 -2.1507962995801688 0.055700837139469425 3.2046754338168699 0.95344166850321987 1.2375929035306323 -0.020471319049936453 -2.4089744825372144 1.159667813496057 1.2423951555227268 2.3746472894696176 3.5020521190553344 4.0950035586645646 -0.73395673327364319;-0.64391691989928124 1.4576605651447319 0.29296734889828518 1.7179727418023711 -0.54269412335169376 0.72126755424559297 1.3547032170898887 2.5008608790994824 -0.1641019581925855 -1.3114034505316485 0.039453293356855178 -1.8902777650864406 -0.256788576558097 0.1167492945221712;0.74720888625998283 3.3023853404505892 0.37912993018747537 0.9082135513601044 0.66466308837328214 2.7069702838159895 3.1462146705157328 2.0049727176335788 -0.7786590971171139 -3.5998061910042161 0.48081410633436888 2.1429042665766902 2.2869635743335275 0.53663192955158234];

% Layer 3
b3 = 4.3964280038808576;
LW3_2 = [0.20076694463729791 -0.27334406421824542 0.43245240181957484 0.58855003321382737 0.19543802497605448 -0.67796463606533719 -0.11307160780075977 0.038137939754200614 -0.067819664105026239 -0.79227561722888118 -0.088599007760382265 -5.2568010812910977 -1.3444054675613863 0.19384032431197207];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.00666000666000666;
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
