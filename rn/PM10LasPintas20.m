function [Y,Xf,Af] = PM10LasPintas20(X,~,~)
%PM10LASPINTAS20 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:31.
% 
% [Y] = PM10LasPintas20(X,~,~) takes these arguments:
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
b1 = [1.3549093782620014;-3.8185758329013213;0.83849477033478026;-4.4442036187055924;0.76458342867422724;3.3856675683506179;0.45652381467382491;-1.0502295830818424;1.3625804227616587;24.264890540364711;1.172833967346167;-0.42060475160120536;-0.20604080116485624;1.7689772360044711;0.87373892209762738];
IW1_1 = [-0.85245486800252712 -0.093215027088917574 2.4086005757711422 0.54682742827514241 2.0201060043643895 -0.89212022929610291 1.9024312048972492 0.33849264218638231 -0.97466570539587871;-1.2174155154943933 -0.65079395936928985 1.1191597491782592 -4.6686991789885717 0.18428819242023012 -0.48663881096141964 1.0041649214328887 0.051397171337516243 2.1200380226630822;2.4779440044673415 1.0527163189207596 -1.8220907713779106 0.073736492714425991 5.9058071684192361 8.2935214742084469 0.72609781111082139 0.25156314232726479 1.2098522455492526;1.0701977982603392 -1.6841308678867892 -0.17636127014479497 -2.6345030558131839 3.9120786641480003 -3.0074080796314369 6.0977246393124283 0.047414142734554757 2.7240707904061576;-0.38154907571179986 0.6563071100182577 1.5444122864638254 0.21937897068618997 0.43149274747259159 -0.51382777379021827 0.028073026302299423 0.059046236252496061 -1.2239713780746178;-0.065015806091533124 -1.9863231910671364 -0.031231005645024398 6.1750601563998835 1.1010721284479263 -2.4646689700129323 -0.98413620666122914 -0.036953345040096203 0.41499403979841448;-0.78194732169875958 0.24829106719982136 -0.41832271722076148 -0.15372671502568627 -1.2646320141123528 2.0464637140971944 -1.2658944413785524 0.089683449050982855 -1.6256534368487334;-1.4244464000233454 -0.26477763453760617 0.30607705066091873 -0.46160546861972268 -0.49475050744244736 0.24498879029859885 -0.24407233725167374 0.043973696000918924 0.59018651215960549;-0.077772386667751506 1.6449849042231062 0.68974091061008413 -0.28980961152753032 0.46740001769753187 -0.28304578351978105 -0.64063871189061572 0.048532250253916616 0.55662796338123177;0.68561616254888658 -0.28169944904225663 25.060434148429042 -0.22275792419274348 -0.42383552679755837 0.2135092464673341 -0.37559217073421203 0.093130245090915595 -1.7426071946444708;-0.0349766235180545 -0.56851597465415238 0.086624156583102518 0.032773210775014897 -0.36387238338009109 -0.25901396035027413 0.51227962688709938 -0.0086882729682685265 1.6562303926359043;-0.025585997437813077 0.72222311899495695 -0.83438602656559202 0.84854781625838305 -0.22642688592188306 0.97106791537695714 -1.2482134172405537 -0.18560212078959232 -0.62559995629877563;0.76521264039291814 -0.67466775408844282 0.4945382251910232 -0.25460372637328532 0.88376250398032064 -0.62530900624639452 1.1281789438372087 -0.028638051664925571 0.43847434180785616;0.47725980366802467 -0.60976586220225992 0.15109489283276922 -0.45297479874101354 -0.14923752487212247 1.3700379170162325 0.50853769620571487 0.018729180924017128 1.3552451940571248;1.1655361082110163 0.062079142712524751 -0.33699618126370073 0.30940043930686922 0.21171979249824796 0.15978072045939007 -0.32335526609115628 -0.075310180137968308 -0.38941647250874478];

% Layer 2
b2 = [-5.3170380823029522;-12.774458205237558;11.543930271887893;-15.213769279049663;5.9741848370505091;-0.24282008714366088;-0.20003218348090418;3.21120757884065;8.7211691845945385;1.3188255611743458;-16.085249678090353;-3.0499914710910274;3.6460106788658009;9.9773702081131113;1.1173994689745217];
LW2_1 = [7.6307259224357944 -2.9685909332490472 -2.0693714056542016 -3.7896843456866867 -12.597836166734478 0.43212979486250691 5.5287317434269285 -3.0220036004475661 4.6197185191296031 8.8373624541878701 1.9016642253860589 9.8558702671399576 8.395529739698647 1.0194642877481228 -6.9863288349613333;-2.6294854895970934 4.6064598522210245 2.3463491128240181 0.65892323280933174 6.7082958712152365 -1.0713366136294726 -1.1477902758562648 -9.5163403755741225 -4.1412359397216498 -2.6600608767002534 6.193190385935698 -7.2276232357474113 -3.4528671499134247 -2.089410039666769 4.540952913419221;1.2883533216492065 1.3771635798940067 -1.1270075101669463 0.81889683914445333 0.70251696358017846 -0.96896574714457651 3.466752876850832 -11.313792297948611 1.4316543638461374 -0.63341915349599875 3.6619166696146022 12.354954412830072 8.2124608633417306 -1.5435383410517731 -16.630130301195972;1.9846261209119704 -0.96447347811917605 9.1117246541804011 -16.972046149361859 7.9213483670862148 7.9564643322509996 -0.32523632342484465 -4.9906332031087981 3.2641294271656247 5.6882794191349788 -18.510989032501602 2.3384331267539027 -8.5779081271245925 16.945639458295755 25.140730427826075;-14.185842149709371 -7.6629771354606424 -2.9736475068577795 -0.5192108332207761 -21.416403531586958 2.2239695790268472 16.632984708457229 1.5515037402123599 3.3406651071658526 3.606480812731625 -13.279821187852155 -16.662796119925996 -9.0465711061108696 -5.7052088846158835 2.9739505304246272;0.46672406357901763 3.8479366088905196 -0.032742083292629114 0.72444763679323454 -2.3413922229825403 -0.67300111047506683 -1.477593207480594 -5.2021636186464768 -0.1854498224282938 1.7736417870324164 -2.165680313520844 -1.3125675811000295 -3.4740460803747601 -0.23682631291975459 -0.30394456868125219;-2.5949884501557503 6.8149776728542752 -3.4252246267913504 -7.2929324073553623 -5.8999448935713614 4.0085481559266922 3.7498357254412928 7.8220146011446277 -0.97155880231844405 -10.402178020963477 -15.551827648981961 -8.0376147255711441 -11.434058658680939 2.067404021486789 -5.1547621723556469;7.7957562227655819 -12.125812566466802 4.1859357045679939 -6.4871280763547468 28.20083482332458 -4.6912213304262931 -11.297659168957491 -24.932705072483326 -7.791695938364712 -14.596685890003648 2.3990546482874171 2.3397150182440178 4.6354207775564751 31.124576100893847 -32.542715347194722;-3.2709266003248278 -6.8014090912727525 1.1148884108290982 0.57553404765023064 2.6485919257286814 1.1155290039756443 -11.881239552182286 4.8786048890831628 -2.7931779031830222 -2.8180469504686361 -5.680782438518599 -3.0550991609739442 -6.0514431043502208 6.2080829005130491 -0.78246307771077961;15.005417513981438 1.5308399646719768 -8.8096272114739236 -26.501156455294439 -38.127071211252293 -10.663498547948612 -3.7143038778196353 -15.389771833762589 -0.3765637241743503 -19.734139091741763 -18.881320858037004 -7.1512185533201684 22.026527658583959 19.164820692858193 5.1126668715490018;1.7281454651707597 8.7909923856433707 5.0072305371397885 -0.98956133514679634 -6.8810240430631975 8.0782513706210679 7.9505793983973527 -14.790874558629255 8.6751038329719758 7.3948305983884728 15.697827014000053 2.1098613045448995 3.1504435238554347 -3.1800582377646172 -2.4161049171082829;-4.956161663408956 11.338399748296363 -38.565955916348742 4.9095017680952626 8.9593934589930058 -3.2317997522487638 -7.1029934669752395 10.889541430450059 -7.3553295778548602 -13.724477557600338 -1.5826890959147755 9.7354445577601876 -6.2396051166854525 -7.4849562204814095 11.443355809904489;-6.5883338921228711 -5.4419048551308729 -4.2650884360669794 5.180257300926308 16.147639011592602 -2.0625897602053986 7.6038471374985255 -3.0454732208988253 -4.5527554418639422 -0.8793953917885966 3.0474624633768372 3.9405549665349273 5.2881920626276884 4.4136059235762248 -11.730896810140861;-14.547915303766215 4.0367042680980427 4.5977350162856769 4.6934878900506218 -11.564883197409449 5.6929773800050532 8.7166457618769524 -23.456748305937122 -10.401764501139896 5.5791665353459425 -9.5237052141114837 2.7319140837369558 -7.3494624981498697 7.5521460723565399 -14.808255385892165;3.7343369684391781 -7.7062967023005715 -0.60390016603583774 -1.6663329505868152 -4.8110466826778433 0.034932895047897358 6.6765015062866295 18.672223578251764 5.6369161748038197 2.4629662915529149 6.1404062151052106 4.7516316365355928 9.3882886379671486 -4.7214089178293923 4.7881135675115623];

% Layer 3
b3 = -0.67216407904906461;
LW3_2 = [0.062908830154314241 0.065414745280929831 -0.075045762594930787 0.020128674941216066 0.02687060763201617 -0.12016840030070355 -0.06786447242619692 0.019059611601086664 -0.062882509139979448 -0.0097298446271124606 0.02362992404925892 0.022090261267488163 -0.019380059131577504 0.01365501593406028 -0.1247896590217149];

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
