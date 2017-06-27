function [Y,Xf,Af] = PM10LomaDorada7(X,~,~)
%PM10LOMADORADA7 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:10.
% 
% [Y] = PM10LomaDorada7(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.290275761973875;3.96825396825397;0.00572573718866304;62.5;0.00462534690101758];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.8126933650971386;-1.76705449310814;0.30503337940476966;-2.8788476897665296;-0.2085427485769476;0.93289554322015411;-1.2846078313213383;0.42964229683328375;-1.5605932710794768;-9.7838882662574372e-05;-1.5237521119162145;1.7915907082076625;-3.7180576645034362;-1.7547665896658531;2.6800916731951756];
IW1_1 = [0.08542641672211132 0.74765957722878384 2.0366808889742858 -2.1541222696629725 0.096505459647070413 1.463811478902681 1.0977987345314237;0.007527016047323011 1.3539681105985306 -3.8275827554001394 -0.12419921512372611 1.6064042084637085 0.36410600917905406 0.06375584750379043;0.8149613612444282 0.62010657517921597 -0.15275187809506674 -0.68362404023783141 -0.47455810667686127 0.97809572073409323 1.1194874217119417;1.8934122310329455 -0.69637160169180778 1.3774591661021101 -0.70559665526808368 0.31307237135069071 -0.85368815773175122 -2.5568734239087285;0.44056215877116517 -0.45137784191057756 2.0640538890867401 -1.7630042056913104 1.5849270092444476 -1.4402174419085518 1.1350426341252555;-1.0090271415902192 -1.5754470389099176 -0.29569835240089365 -1.2609962632794465 -0.034916130397529554 -0.60002408645049932 -0.26446611155673216;0.16631806633500559 0.59957885128237853 -0.26775580334000548 -0.21159194190775918 1.1661069053559492 1.4379571485312403 1.3376702180145481;-1.0207407785181277 -0.73982194244857136 1.2159177706774753 -0.0062670513386800103 1.4737489031272715 1.034974486701346 -0.13923453613873787;4.5663172781515895 0.39763823421945638 -2.0139830839679069 2.4073217166215795 -0.97765600593535951 -4.2001867811561286 -0.037017397756890162;-0.35095301150790664 0.19498807369820523 -0.25558499370011628 1.4129574858764002 1.9567961677803041 -0.97272172866530182 -2.1564149314816095;-1.3882735593653879 1.6331643640221962 1.0171937918766714 -1.0760847674832303 -0.34121377495836214 -1.4883893649732773 -0.94171803001965493;-0.11998809334709877 -1.5311183228933414 -1.9765483451884536 0.98719715816656439 1.3907825539458343 0.13967009807640599 2.2727328156773359;-0.21402490771647339 -3.3896937298747263 -1.3822668786828523 1.5247041709298319 -0.37378731997286857 -0.28753588486042891 -0.57998136726833971;-0.56656402497067693 1.0425987947856372 -2.1439838594170602 2.3559848244038175 -1.0726003905055186 -2.6891674989462575 1.5179646807147567;1.4530994235056625 -0.6107320135564025 0.74984155675833486 0.87688625101352546 -1.1067987161295396 -0.10236465411907841 0.18107862984708334];

% Layer 2
b2 = [1.6019565994074743;1.6941528082339388;0.44320039528991789;-1.1763712659840124;-1.3635760580258887;-0.6580569120242149;-0.36561251317839916;-0.45115306869054006;0.50996813657656159;0.96987042100894139;1.5679240481954506;2.2888422654610827;0.88741193071630053;1.2372443113194767;-1.7266530843976482];
LW2_1 = [-1.3740053468253359 -0.84361981081213699 -0.48147279747285227 -0.44977942905402801 -0.0033127000737949025 0.83417096437668348 0.1875375823662232 0.71357435552525683 0.058396515519718757 -0.46589988159883078 -0.58883509707770354 1.7069498978637105 -0.95758978653387317 -0.43181440472002069 0.092871890480844266;1.078375610245206 -0.5295885524539713 -0.5192479855841966 0.46097687737144882 -0.88239908031225156 0.57726303031846449 -0.68747976076460193 -0.62377845356064254 -0.0092050031507021294 1.0664731507515102 0.37099917873900934 2.1391474547341138 0.34419706322719318 -0.83936896819761309 0.36004358491815863;0.97700656265059937 -1.3977324795745258 2.6500953268557188 -1.1343304380947263 -1.0376925847642342 1.1111232799461768 0.70518149508086547 -1.3755223495663798 0.046862017996302907 0.038376926363524869 -3.0657402666498346 -1.3639900248343695 -2.2863200979218097 -2.4586618486182008 -1.4596241241354642;0.22077241965768218 0.27991575737859326 1.8308209652558427 -1.0219412194036588 -0.65503491448038231 0.58685617268569401 0.98360285936660652 -0.6016413318210676 -0.79280538443225457 2.4740862380628563 2.057980961039565 0.17637997390847138 0.16788495206290821 -2.3920574370636829 -0.48115585166575187;0.18016553012007605 -0.49073023758492929 0.53641703455823664 -0.0026814624689823936 0.5679211009568923 -1.1990892457968763 0.50359631850086661 -0.012977256199072442 0.30974559998606754 -0.31323765805117176 -1.8239038103538254 -1.9868783758563828 -1.0492682592589189 0.40414175928318069 -1.2208521318708077;1.1188990487164618 0.86683187076557167 -0.96158185761101134 -0.64462582814363178 0.61742314274944166 -0.95873314856554737 0.36483881819820391 0.024663347605105662 0.33704248052968927 1.9618743260870268 -1.3430180160007681 0.091838673431642537 0.73056649802017792 0.97446829933034995 -0.27466526129721347;0.44883795051770459 0.18579404696707619 1.5839340127320556 0.75788457410906596 0.38246611416805981 0.024892375021063139 -0.47386900345757876 -0.35891872159638699 -0.86222870800661089 0.41979669441017486 -0.24665245012250162 0.57090488225145908 -0.27470891535088526 -0.39847825641913048 0.61645579716751642;0.39215730448749175 -0.39556659381330661 0.39012560924786233 0.40057831570875718 -0.19097706918291071 -0.20865535434319074 0.52608529264083614 -0.16269520405507845 -0.76153182421228272 -0.13716226259212788 -0.093613402336132662 0.3427422533772177 0.2950974048761183 -0.049913410372094201 -0.0070088413154741546;0.57782991421292773 1.1104611313816823 1.0989146379516033 0.7628236280270182 -0.66303614179239834 0.35653497197903483 -0.58200482892710048 1.0880579712744396 -0.20634907970970845 0.21653178604729145 1.4531534840213391 1.5395757798707541 -0.18555883550372743 0.32896081315238274 1.0546270648816369;0.57162002927546174 1.2076521379448071 0.55285239859093782 0.20179137456907337 -0.157642197052907 -0.35982208887859013 -1.0604011369474458 0.14222133638309833 -0.52044029043625595 0.65225089334763153 0.1665557007731262 0.00065728903892065677 -0.23555025894374568 0.67508101423038525 0.36691587464704284;0.63506375569677831 0.80375514433940143 0.37186877958416753 -1.312441654836588 -0.17271339433960764 -0.41095111604738649 -0.59361169012577231 -0.86732937062860649 -2.0442904868489151 1.2634053784622903 0.62329930201969774 0.875080090459739 -0.35034534446114907 -0.062572524123957043 -0.14955672898251227;-0.66470170012449503 -0.71214072794153405 2.5723416903516818 1.8875297174922157 0.12333835430469046 0.96133938509019379 -1.7965199255435396 -0.50967322743856347 -1.0364322752316211 0.73577535920252646 -0.65396173866860929 -0.72602971153241169 -0.17296358948589552 -0.32828697512763372 -0.64202030710631086;0.4419744951714582 0.81106209670275109 0.44997153612880247 -1.378776470584467 -0.044869049213523374 -0.64612978030629464 -0.09733589689519942 -1.0737046303392672 -2.0740217305180892 1.2432441152728475 0.41613401194786809 0.58211450842803025 -0.32012618082153776 -0.031609757361490465 1.1847485436031093;-0.46997291227639748 0.13269801168926043 0.41599272970452272 0.089701846308862271 -0.040871084530574357 -0.91444250715292008 -0.49403001936274299 0.26458673342283678 -0.028710517440562779 -0.54647707169664894 0.51638236002552307 1.1916277132370183 -0.6855340403676965 -1.0808998954157472 -1.0671717530726983;-0.38818519959973347 -0.33208697516454311 0.87619214451998595 0.39212870136135514 -0.23988808573538145 0.33740509615760289 0.45106138917285038 -0.09067857094804177 -1.5365237617682794 -0.20551634819943881 -0.29614372408538886 0.41559144581179003 -0.31134855406996331 0.043169486071685345 -0.15389748405174442];

% Layer 3
b3 = 1.5104394425814063;
LW3_2 = [0.1850925142470268 -0.84233241850010399 0.18288838621344738 0.087525654281017939 0.30450763270125697 0.088380902940830897 0.18508373673961753 -1.1481597331835136 0.34951712642109656 -0.59686909916288344 -1.8363045309475723 -1.0797310571682499 1.9515034919345546 -0.2135459938871172 1.2858241630662939];

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