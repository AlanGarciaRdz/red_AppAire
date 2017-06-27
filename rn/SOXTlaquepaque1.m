function [Y,Xf,Af] = SOXTlaquepaque1(X,~,~)
%SOXTLAQUEPAQUE1 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:53.
% 
% [Y] = SOXTlaquepaque1(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.171659085057077;3.03490136570561;14.7058823529412;0.00462534690101758;0.0212539851222104;29.8507462686567;0.0523560209424084;0.00624804748516089;0.185185185185185;35.0877192982456;117.647058823529;27.7777777777778;5.12820512820513];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.8887069827931686;-1.7948440354704018;-1.5416708085306243;-0.36324546546107078;0.43958836403835111;-0.44515745873536183;0.038822975909210924;0.048607148059779851;-0.40385472883952528;0.5033881031918731;-1.4130285278333876;-1.5580766226904741;0.64062255620166431];
IW1_1 = [1.1222316166351707 0.58495876757848886 -0.422937263862668 -0.37186058306826614 -0.22239972781604597 -1.0878726854222538 -1.0739978875409095 0.35080416104532436 -1.0423115578857072 0.035875453884987571 -1.0356524623132857 0.93199685256830744 -0.5631934817648625 -0.6508406199120399 0.091148900438597899;0.25400126225483238 -0.39327931935932314 -0.30308844556254633 0.74566279144595349 0.089189278031155061 -0.22751795879068393 -0.30680512177845176 0.68013627785989261 0.29364354411769406 -0.046987211241571826 0.015394805067708288 0.77480947771092068 0.26139184408090932 0.68835965544872035 0.51005205076081994;0.21280995142668155 0.15815188743930442 -0.081454685249692196 0.51825501492220027 0.23407662120218375 -0.59697919547567047 1.0093322326264171 0.38739600851521205 0.57295939059536805 0.046270010192899322 0.66620314919406687 1.391912650323198 0.43560303858240834 0.12761966048057397 -0.050833842348970308;0.28276044368924746 0.067722133608886667 -0.49634208915924277 0.032262972707171156 -0.049253438633427994 -0.1289908096674805 -0.010974118445055032 -0.51294562881460104 0.28781736388237777 -0.0078520044404400482 0.034152432219774223 -1.1100128694950611 0.39771644158131592 0.31694403486453171 1.1350819809730512;-1.398993656663877 0.037943835577718368 -0.29443631983923696 0.17225160617257543 0.31226594908350236 1.0136060429977043 0.036529399673565069 -0.010320518287932491 0.84858463808571194 -0.83948444328664529 -0.37841578923845792 -1.0236256466748492 0.51621558980279825 0.064872031904184196 -0.5550158654975933;-0.040193438395559618 0.10626074104026292 0.089935598118965079 -0.37183314590514482 -0.05198813912667706 -0.16358915269206895 -0.14035385202699646 -0.10559726715469145 0.1438944943762433 -0.15481786832114933 -0.18443396908736581 -0.19679786905065419 0.043722101854771475 0.36826134338774275 0.2118677674920921;2.1151264847836795 -0.52440451225957352 0.57618302880158179 0.69979044345534347 -0.085319358359637817 -0.38394920946884414 1.4606121293166432 -0.20107025137045323 1.5667942647650379 0.39125084098732088 1.1343005638254435 1.0037239584547106 0.56080069311959491 0.047439681881383172 0.38005417601120967;-0.11822128714447799 0.21571117133641221 0.81362351048590797 -0.89837176451605094 1.4644927488249606 0.39818551053825618 0.08564319453525493 -0.25564387450006626 0.092273298997941844 -0.19782487031608167 0.077112505949497132 0.037116617181693297 -0.42977273050115278 -1.3719899966735563 -0.75312300943703181;0.10272459538249974 -0.45696109639558313 0.09633855492907098 1.003705289255052 -1.0083327476725286 -0.50974951403481084 0.55224102173917744 1.295805020871813 -0.52678885281594867 0.18994013609010943 0.10600650041766108 -0.22699987149097101 0.12770294751525824 1.0363151241148447 -1.2715449253839726;0.5505505648946335 0.92957787953352367 0.22069175680390463 -0.23566178278869263 0.013753962349395374 -0.07720231541194339 0.043474855604896015 -0.60438403474816471 -0.56979574036588754 0.13626219164440009 0.069865085123846427 -0.81078731842791374 -0.32162533627580797 0.19421436463491212 -0.12377350175055318;-0.59531253802568052 0.036017181259104143 0.14000140656864091 0.56814706718430563 0.46858263075401579 0.17722224877389781 0.63234546587928808 0.30870877349745007 -0.28469501359659455 -0.27697534251695277 0.71141070108347537 0.45677388537234731 0.043035996274864652 0.71904352098746804 0.64912307438680616;0.030471709982491497 -0.11867339973527002 -0.073176066640739404 0.36790122529487129 0.055596664362005874 0.17701728407158634 0.1471854102758838 0.11928947399700675 -0.15613962969834039 0.15973161110890152 0.19204049145477747 -1.8768142141983497 -0.057458180796412878 -0.36136547336025659 -0.23748473328681657;1.9663398752811447 -1.8120638898798653 0.74829538166951581 -0.05010883931971559 0.45343265778221842 -1.2944921975585828 -0.29683579778273933 1.3921178617702137 2.3180979554542969 0.24800765088997606 0.44652833040049533 0.6626509624400736 -0.047325953203341833 0.11034242035007509 1.2575244417448914];

% Layer 2
b2 = [-1.8783184927733401;-1.2688568895920125;1.1709201183279887;0.88879392212396724;0.92711066870573866;-0.16902551624122505;0.034286582865443796;0.26690770865944546;-0.68086983433190529;-0.61929030274636754;-1.1785269815278991;-1.1497488134298532;-1.2120925381365815];
LW2_1 = [0.34927048923229109 0.24538759233362858 0.12136731885104657 -0.010980064538660112 0.2005019290564091 1.6778096613564397 0.069310056960631194 -0.13345071408709966 -0.20971446080718567 0.75739869404308569 -0.40641728962545676 2.4795871338676725 0.23190357454518684;0.70707937605545945 0.097994862184852885 0.13342367289877713 0.61052225596364018 0.46702903401610074 -0.48855169405576621 -0.1958613296586055 0.63225736891356776 -0.0039157366174697641 -0.52736879920248281 0.58796290781663607 0.9854721421014867 -0.20958099651381634;-0.68518401374935212 -0.58035479444961302 0.49599168279773143 0.5971039671603523 0.57873431497480454 -0.17170659593460297 -0.67805671853218841 0.066848907697812848 0.19291320078289062 -0.22843732383305371 -0.62226803333632308 0.065459893519350193 -0.47023432065579673;-1.3059459779904949 0.026411807534206487 0.23204200214172455 0.050628661039762102 -0.71107189300595786 0.68416859037010569 -0.9199654975807996 -0.013581765822593399 0.41988994272985075 -0.74326277204936531 0.31877087465621712 -0.93423216495712025 0.57142333229763909;-0.39081093750051299 -0.79095762481980292 -0.78263940182124259 1.5734215097939304 0.44158663260512449 0.087538596010597866 -0.11657857892253784 1.5673385279525456 1.1336380253701246 -0.31170711829518416 0.12742884591256579 0.50520499968106525 0.065806284562111267;0.58161682483906751 -0.46348102327999668 0.2897279315459772 0.059564598140609978 -0.21416010424984216 0.018774465410269184 1.0374159040988242 -0.92402188389040696 -0.03772135086672955 -0.4436589012613158 0.65607507874273518 0.2736099823998186 -0.34777627832918245;1.0497466714953929 -0.59258212324476434 0.44804405710527595 0.40014099620823995 0.52983330634679171 -0.2491558348224516 0.56807843950579739 0.28359078878153082 -0.41601574041196271 0.46747886379322967 0.62317669032536527 1.4567904771681015 -0.092048204305413467;1.1559405133011649 -0.66417169467289849 -0.36593477865859697 -0.67565306362749256 0.16853446560206026 -0.13722124962976245 0.60018114177129489 -0.33800861868189108 -0.75436776492440827 0.64331404468911735 -0.029992999972178851 -0.55010971383829876 0.48657708848927222;-0.3539384810244256 -0.17671130397022286 0.34606012655004548 0.33266859504143276 -0.10478002852732381 -0.39416707029863307 -0.46727460336812671 0.66945617391685808 -0.15068597502616238 -0.47637983927277605 -0.16722780381098115 -0.12476713420733829 0.37565166916659049;-0.59749498474765528 0.19301634578152674 -0.31648754024918441 0.43715085829989564 0.32958228211401652 -0.23392171867470404 -1.0203824776924506 1.0622468853317828 0.38418748834049116 0.78939164573300113 -0.2738887793826536 0.31284185767186601 0.16473995010258494;-0.81401813650683053 0.11789577840311793 -0.60058910307549562 0.61823048700863692 0.17179857506290333 -0.2148306542396789 0.27261823341196723 0.30646562663574956 0.75429012594434575 -0.4815018889038879 0.14907321351978969 0.62944238521498064 -0.50538047585706403;-0.69776941083608945 -0.90467429884003381 -0.11468580402378828 -0.16617889966881708 -0.41077499323448691 0.68871504320841892 -0.47160142017762813 0.2293624434169495 -0.24942841504871932 -0.4891946432460616 0.020043030718257977 0.37806704219524739 0.62150550114561043;-1.3785769017912701 -1.1012625586586853 -0.22790388289730867 0.077518607111909041 -0.76745522206456862 1.1249590444461988 -0.98027778162046431 0.016402838739735293 0.3613669911692865 -0.86508478658059584 -0.1261757150679588 -0.33859239115784556 0.59435326260881682];

% Layer 3
b3 = -0.026078605415612376;
LW3_2 = [-0.96629326073058242 0.57008253688439969 0.60657151397303433 2.0243995923843663 -1.8264818876483444 0.69636026103270732 0.45909376695138809 -0.37151958495079324 -0.59957881308368799 0.70333485911691052 -0.19658063082422406 0.78416542642847165 -2.0293333697715616];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 35.0877192982456;
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