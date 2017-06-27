function [Y,Xf,Af] = NOXCentro11(X,~,~)
%NOXCENTRO11 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:20.
% 
% [Y] = NOXCentro11(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;3.74531835205992;15.748031496063;0.00773694390715667;0.0203458799593082;0.00627943485086342;0.132450331125828];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.8768560949159836;-3.4329536681273995;5.9631664886075244;-0.43835563680367162;0.020025695871629896;0.80168206455850843;1.0084595595608663;0.97133869292255748;-1.6186686788461035;-0.84256652990184855;2.6247250768092507;-0.98775984354166046];
IW1_1 = [-0.63803979347691853 -4.6706335346230645 0.084642709698121057 -0.92128197787291577 -0.098570853652685739 -0.44915564194810165 0.059298338974090085 -0.14233472392361268;0.87974757008897841 -0.1322291070925998 1.1904007198687321 -0.60939070493649283 0.70625925895031028 -0.80362367505697663 -3.6242644055400368 1.0345375890907682;-6.7717376765785948 -0.079845494762226285 -0.15621183498190819 -0.5805523742033124 0.5375210453268936 0.2817810486969482 -0.26899987756671528 0.30440448113334606;0.65221039723846297 -0.25926240167633346 0.44548639147991559 -0.60082543426621959 -0.38918235194309875 -2.8343798961856463 -0.12513297794113848 0.19770879074832126;1.5058967918413277 -0.48941763980949127 -0.27912615267301272 0.15990526074246098 -0.088693689819860311 0.79951677045612235 -0.04532154551711931 -0.16234832884434999;-0.16070592371335596 -3.621186554002584 -0.22156813161456984 1.9712059913351412 0.2923700505756841 0.47283424687788789 -0.18122257657117341 -0.16066744981231618;-0.66460234488777781 -2.6997583258487592 -0.24203255930109485 -0.048051013254524051 0.29734458572112027 0.34295827667920875 0.047232032884200977 -0.23453805887907891;0.60210682614128574 4.5956175118839697 0.35372995951420494 -0.24513294179679712 0.28596259899881521 -0.55064008175738577 0.34277347112098089 0.08659547184371158;-0.85234176951972118 1.9170406913449896 0.51421550604989241 -0.52444479788840337 -0.78143212532503237 0.59214453000053713 0.56969527914728524 -0.3942947117853739;0.41304917944307479 -1.3759863578576512 0.50086231559415584 -0.90908535185513839 -0.47880746609243818 -0.16814054450560459 0.24902292107279217 0.13352858748684188;0.24418856659879226 -1.210458687727078 1.8045873874252656 -0.067087626707508938 -1.0251931912873278 0.49610017630294806 -0.41348915912131451 -0.48460072972561008;0.26491053329005099 0.59067665834970084 0.34822965114028276 1.307460423071902 0.64347094206154243 -1.9805982295566977 -0.11023159569248595 -0.29239925942461875];

% Layer 2
b2 = [1.8576402398958747;1.374954121896341;-0.5599520801694633;3.0059396295291609;0.58450012718017641;-0.41771206033286978;0.82777629227713734;0.2917739498519738;-1.4187137054853918;-0.77949106971678095;1.8738085796272053;2.1353896706357238];
LW2_1 = [-1.8520755711458068 0.44029538734708284 0.69942818173076771 0.70707031828338918 0.79080865429532232 0.09431952612812583 1.9186378694464736 -0.89398003741617826 1.3733916299478481 -0.66801922361532007 -0.61144463171433094 1.5404168908804394;-1.30916043126614 -0.10586858808048362 0.13006777412281242 1.3886403302672379 1.4666740401738469 0.83148551747978983 1.367755668834242 0.36927829595368294 1.1568421629656258 -0.30213272517765566 -1.5132406843745545 1.0151868643494186;-0.19528219016131851 -1.0274158622916378 -0.92630263599584894 0.79024599840488485 0.95303786677574909 0.63218735024214145 0.25764680925963562 -0.81231314279249778 1.1950655550736569 -0.065286966664083165 0.25938006513373318 0.16919523391174951;-2.2809075867099962 -1.0303336892537371 2.2475212297297151 0.72997042226519038 2.364500343791653 -2.2235308200109265 3.9282397974278913 2.0528593404446704 -2.6175532273619817 3.71264868874571 0.34465481462241959 -1.8041469658105196;0.014308331372577358 -0.31224651681879062 1.5812005362757353 0.51945930161512144 0.73740066668829474 -0.77068296598645625 1.2212119704779218 -0.62667915718098999 1.6677215739277917 -1.9512131832474704 -0.35449565765518609 -0.32012716912350603;-1.3876550189152288 -0.42233190157054729 -0.60858248698563555 0.32899050733631363 0.75224780678286118 0.53033143904462954 0.58314301020723336 0.075414835090775151 0.92069131345353572 -0.5084592578601218 -0.5580222184847734 0.29975642227732624;-0.21249925869874434 -0.34507864694915491 -1.7744453156846849 -0.14063156969023968 -0.066136255166128977 -0.047333640492297033 -0.18875444304298838 -0.34836245746681987 -0.20978520196556069 0.39241020914016322 0.45116755805973818 -0.055591716760229698;-1.7894037080215643 -0.98174439315909989 -0.90789050035533392 0.5591877757117496 0.72796217807514452 0.49828072713801513 1.0928011026330908 -0.72928022974949691 0.68101549464860012 0.22382329945562343 -0.63764239762340136 -0.1274243505431823;-1.2300430829052733 -0.0036901897950368454 -0.27680019342269213 0.22673958444568307 -1.4370972574604719 -0.48939118905518159 1.7663499001800931 -0.93479929676855211 0.75425908690213539 -1.3484277730626573 0.29092596614342203 1.21652416126722;-0.28072841987439939 -0.045498463159504045 -1.8100262122467656 -0.29519437507378699 -0.36934432165553466 0.060178779650138417 -0.37914438023896541 -0.147112828960759 -0.45858957420262586 0.46137336793395989 1.5166412814664392 -0.45175214874303543;0.056100016585231942 1.0952689931568729 0.69827407960333754 -0.67682087612878172 -1.1611202975602384 -0.96561604040440407 0.1963867023724527 -1.2940967754159229 -1.0123068016300643 -0.3820725593488753 0.038612945737699383 -0.52214377758848007;0.86467275820462008 -0.93469498540528473 -0.71604857416964496 -0.053211972573959439 -2.109298080591159 3.1279474442472623 -0.54134866412875704 1.7627304429877226 0.85934903035394106 -2.0185689901048063 1.3672511307241884 -2.0676648261959998];

% Layer 3
b3 = 0.28509795537380284;
LW3_2 = [-1.0786742814920016 0.71883496774782196 2.0994977636068897 -2.7999307367907957 -0.41416644161638266 2.0856193237242091 1.0032381990789991 -2.3903227364367092 0.85538487522165507 -1.0044749941565965 1.6002065973134223 2.4555073688870301];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 4.04040404040404;
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
