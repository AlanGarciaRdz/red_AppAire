function [Y,Xf,Af] = PM10Atemajac1(X,~,~)
%PM10ATEMAJAC1 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:19:54.
% 
% [Y] = PM10Atemajac1(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.00968992248062015;166.666666666667;0.0561797752808989;0.00614628149969269];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.2667083496295053;0.36827584089692422;2.3907001374728321;1.6766081117292926;0.9225596199856777;-0.33987869107010094;-0.43996991725519302;0.12177507427655268;2.0495264434148952;-0.16185432141844427;0.40803650180603124;-1.7243776766094552];
IW1_1 = [0.2410102534181956 -1.5078075058966991 -0.90838755875432864 0.42724877770786873 0.41723849984780531 -1.2193248091491169;-0.0051414311213227176 -0.42215423787031181 0.25981477713453582 -0.041018113808917983 -0.37475609652335651 0.32263949948362697;-1.780003067933503 -0.64039879078279394 -0.43219306089739679 -0.71491000867073418 1.9937097660439183 -0.47680369822665758;0.20980354210758204 4.4082052703206687 -0.20175520657987142 -0.41737828078680161 -1.0021333079183485 -0.37800843402718931;0.067206741883044388 -1.4524355390143122 0.2607013014243752 0.34773262546721695 1.2786777168449555 0.50281973003896907;0.3237566949325571 -0.24140463344849039 0.15576940784965196 0.23883630069754036 0.33383811755360848 -0.69762686379953898;-0.08288977107991452 3.0559602379726356 0.4765344542991487 0.2304535462364167 -1.2611330467268957 0.16897548221958386;0.83559601059848621 0.33534225300772708 0.052508386934184276 -0.010115642318752253 -0.23121181109548833 -0.038639247863585774;0.48427167306815655 -0.350659997546101 1.2636819346273076 0.34278286843628053 -0.18384808736929611 0.27793512960334577;-0.92879345907746702 -0.68493012891881955 -0.77995884148730021 0.54059060403606851 2.331281499252789 0.96781038098292793;0.069119263216049789 0.86581824586728251 1.0677046267643502 0.40734418028935609 -0.80610912775448351 0.41585997871759939;-0.38404295277995426 -0.23211379473713781 -1.7199942835288335 -0.008497622679632142 0.098199351890843917 -0.021136809236045807];

% Layer 2
b2 = [-2.818388002905079;-1.7628375488110859;-0.96687732030157891;-0.89150576951753624;-2.2248916997965065;-0.54467849943676039;1.2443170369075096;1.4655696830247305;-1.1883249889609941;-1.225195643297611;-1.6669717790414285;-0.37091911944724287];
LW2_1 = [0.72024381615232813 1.1674175408744503 -0.64716515197534075 1.454045437224958 -0.4202045218323015 -0.25137991694187073 -1.2499444718818216 2.4271436685422576 -0.41563060668219642 1.0851824462707147 1.4302307278106021 -0.55649138455309721;1.9802972676439499 -0.60388392952883618 -2.4048369218602281 -2.1270279311778628 1.9787125751717745 -2.5082773578430326 -2.288293513673604 1.0965926575303016 -0.42820562645741483 -0.048935647616768746 -0.83115311850448603 -0.10307894356121719;-2.4813239393863977 0.74113831248054984 1.1334991125376901 -0.12281471686737774 -2.9779192601008044 2.2156567517149681 1.9005123172359255 -1.2243687550656863 -0.25432118626851552 2.6371625965803283 -0.28126889579648862 1.0199411445454118;0.54979912100300099 0.011015633334590352 -0.18069497448912564 0.77476167385983874 -0.81007806821642925 -0.98036060216752374 -0.37787982733245623 0.17154456838792154 1.3822081218482711 1.2000506104498621 0.49864522511416698 -0.93849345272687923;0.44860696104423387 1.6302084758178135 -1.0555341146012365 0.78763781131448329 -0.13494379246811922 0.78501754887549824 -0.23077008086734174 1.4938066362556446 0.66979718368083585 0.85443329422134018 0.68112645559225704 -0.93385778167260614;0.63613654211103665 0.26736269051695194 1.0832718888933144 0.23983947799663768 0.43392604093501635 -1.6806345486579342 0.23192128349873545 1.2766315008112763 0.87208068429058583 -2.8170861512030418 1.2112373906250362 -2.1820384802175838;-0.26099695298170156 1.0377490549313526 2.931393151035286 -0.2950299617061044 2.0585502953881183 -0.30319366892994809 -1.5767259394564463 -0.99528060861128831 0.52900831493035116 -2.7645767587749202 2.3852058861069754 2.3851942013688996;0.5230986815726627 0.5770450010824244 -0.31297182008150365 1.2741166543755555 -1.1592569076956309 0.068540246513384778 -1.0994663393908541 1.1516284940505153 0.65555732014892898 0.77828497680642594 0.50693469542601211 1.429549429805737;-0.22035571730604719 -0.37866091147638109 -0.13994833068641363 0.14624707872967316 0.04952284161483364 -0.20136058610900837 0.17086298209476131 0.57990941282949937 0.69106673250134443 -0.070076553147767118 0.04034147176320188 1.8620019693927028;-0.48082761014704312 0.4206582145115878 0.44593405225862137 1.4031037132648863 -1.0634774487967644 0.53591097993607995 1.2633001848202123 -3.5293006049601581 2.4584772668387638 -0.41230723733146746 0.52319513253560956 -0.14778696017313792;-0.5295224163865363 -1.2649273730415052 -0.060919438117183575 -1.9122290098263035 0.46129517327059305 -0.44417362618880263 0.90534287751894627 -1.2757976321585818 -0.3714643992568113 -0.8227352171044674 -0.94075654034591916 -1.8444733841956225;-0.43921233960898265 0.66966451393321313 0.43459246089151865 1.225410490453346 -2.6627286418817873 1.8484325203624064 -1.6377347607387931 1.1324707333338311 1.9371303313122616 1.4933413271291718 0.0060503441181915078 1.3855263728576546];

% Layer 3
b3 = -0.8922749071473276;
LW3_2 = [-0.4818596228358491 -0.070839182786440247 -0.021508271695662211 0.062207245779994098 0.78011988681387989 0.0056748524651070859 0.032322263266841303 -1.6076906990337636 -0.62215461660436089 0.038264747860577916 -1.1313053784738647 0.15789716111866545];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.00968992248062015;
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