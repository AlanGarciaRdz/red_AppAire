function [Y,Xf,Af] = PM10Centro3(X,~,~)
%PM10CENTRO3 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:02.
% 
% [Y] = PM10Centro3(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.281968137600451;3.74531835205992;0.00773694390715667;45.4545454545455;0.00462534690101758];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.5655424688364183;-1.8317857848186336;3.1375492965964713;2.0548549850149542;-1.0263364134551298;-1.5879078719424284;0.055348646589042233;-0.48917985527167901;-1.2099559103826782;0.47384986559989506;0.77110061418433506;0.069709737884472572;-1.4995638896145036;-0.75702432935438746;-1.9200719794955574];
IW1_1 = [-0.96680096362781143 0.14931040553924829 1.0884359406075215 0.56447994571617177 0.99307550011639911 -2.0286870916423565 0.3000956514270523;-0.61408926894874893 -1.3708781040759201 -0.95758359839901541 0.62435166748367366 -0.63847655786415791 1.4496421061779001 -0.19141529874716856;-3.0142034165350724 0.010652252902980925 0.35472893526801169 -0.47272650895404433 0.1233168844619143 -0.022869938064793371 0.67109222742575469;-0.71017340440426457 -0.96776695115911138 1.0477453517733539 -0.48807653249918004 0.27756381137958153 -0.2450642468630268 0.20923061960697642;0.97152515248015714 -1.1996516235615351 0.29686952368531405 -1.2110145278575901 1.6234420625969594 -1.4638895745685148 1.5384253348073311;2.129858826755032 -0.53649461238329355 -1.3152247551125087 0.43066238999807832 -0.18820448197630787 0.30152745394011116 -0.82108543401228995;-1.6873157018305729 0.073018031156324201 1.7496242745216355 -0.33436524545729551 0.625055323501291 -1.2243635292873822 0.3150527185275519;1.3138010838095535 -0.60908087235233765 1.6828596393250232 0.76533060643242656 -0.62137632339776849 -1.3796924426407069 -1.3780278852538528;0.63605914537166441 -0.7845629239751315 -0.15827056045584309 0.40262334540847655 -2.1737230527692963 0.36895405185754082 -0.18773705137085281;0.25466651442381877 -0.32471842408813767 0.77718364529937689 -0.15213895324499432 0.51378793714853566 -0.07579001170157898 0.0064327004118968079;0.67206146477578865 -1.3126893568746871 -0.18112103935291515 -1.2574869259875792 -2.0294627833496715 -0.48396710531183457 -0.16111467146127381;-0.37426761179633289 3.4564552358838077 -0.17104913931468319 -0.34054589542335628 -0.19159758123244511 -0.84300384309610255 0.32961396588457914;0.28388243758378501 -0.92926142932371358 0.66943036988509497 -0.36905240628446778 3.1129040356969213 2.5494640488811928 -1.5947466765084897;-0.35334502055612999 1.2854802341040832 0.20239259982160654 -0.22443447393726185 -1.4410934069273613 0.13755629621824317 0.70418717190264801;0.19286979186985884 0.14797073504758979 -0.466832266352812 -0.4093797574841293 1.167466441105717 0.70990543680646101 -0.81304994227330973];

% Layer 2
b2 = [1.6988276834511928;-1.5379336115618254;-0.40306831815983374;-1.0942327563534344;0.56268940664440181;-0.54930494995388668;1.5149478081728134;0.27024134517887388;0.019976047325963558;-0.66000345908209135;0.18941023873972634;0.42234477355898942;-1.366641525488504;-1.6431904142796239;1.7056456290219739];
LW2_1 = [-0.30150161819363436 -0.56105475624002921 -0.33953370258203736 0.45445784127640143 0.47929944955237797 -0.72259206465573622 -0.074993789328272331 0.5247978337481416 0.36654282657418086 -0.47318533519111566 0.39675884039784837 -0.14092533021846448 -0.6609867373284124 -0.16676262554526597 -0.45422066035919062;-0.31019810242802831 0.40824964998255453 -1.155237262208554 -0.88519055477143727 0.28374990085523177 0.041865285996403823 -0.066796895117012561 -1.0655871547512892 -0.94391397376572794 -0.099691172698948158 0.54183170600425035 -0.19149876633838961 0.26854085205871397 -0.68799947793075455 0.48248769314353457;0.3519624429087666 -1.6266732440676559 0.86271720932806217 -0.67752735127528763 0.15619270148282238 0.29687880036531961 0.9811718289584358 -0.36336985690462403 0.68621840268070833 -1.3014054775860062 -1.0442190278991124 -2.2858422510521264 0.3607707466053674 1.5134842443963814 -0.45174619590154613;0.96761589317640007 -1.0573674480754436 -0.80367017321576739 0.37824333184975911 0.42152671084855675 -0.31578568192602013 -0.29861939779459856 0.49725765178002235 1.0270979371956279 0.48069093321342105 0.018258018839584032 -0.55526748261971426 0.71064343404455532 0.36517130564682238 0.13649565541862119;-1.2371249662338628 -0.68108902222277579 -1.0904294831594781 0.0072778510283520101 -0.38892730613539428 0.6365432623441396 1.0925299191489179 0.20694377691488058 0.44444522537610326 -0.64487663769454129 0.16516579406902704 0.19958440263896579 0.70866822466285107 -0.11837429261001953 -0.37567776274169873;0.28596857369869527 0.24559184651645838 1.5884329316313988 0.60794555492252877 -0.0077887400172318468 1.1443762061536302 -0.39836585282241588 0.31694474533013794 -0.75263969945311415 -0.63292628717181731 0.14166032307993501 -0.01639986153859193 -0.45735973149415121 -0.072512961585658162 1.1707653052406066;-1.5114631111952854 0.33171631757734205 -2.0250814086570186 1.9704541892637983 -0.1036542595051098 0.17891319176317877 1.2473648165387139 -0.87449621369747099 1.5992420185824965 0.45083852509681471 1.1192670060779784 -0.64593396968914896 0.012189669450279352 -1.3216976722232467 0.18899399496579258;-0.8699437408044568 0.2058721153638797 -0.2488300518057466 0.21997062656293165 -0.27646321763469645 0.11023886709247886 0.83536560122649339 -0.29079684439342623 0.44499343906252714 0.31461804506282048 0.088480078992664579 -0.0065058654312599006 0.24734364599013572 0.34250124660549852 0.46563128170386431;0.67424551852311809 0.057639227595944365 0.68999975568733596 -0.84057639672164497 -0.62096724736209097 1.1506466300339921 1.0062638230372065 0.37621911991003598 -0.57181435183935481 0.85081765030177769 0.085951171375506286 0.22865168797163249 0.76923629713137864 -1.4245561001547753 0.024939337378526074;-0.26381718442785307 -0.12776515593209187 -0.29987099317710797 -0.54819120552040557 0.23615089152937949 -2.178859404065649 0.77119892463905426 -0.45468392378273043 -1.713655703375272 0.63184777125238978 -0.072048980296093773 -0.30751114170924732 0.31307241126877433 -1.3598461750387252 0.45045253526289419;0.43181047990003485 -0.97714473914186672 1.6774723158479836 -0.13786631329230337 -0.11942275987872956 0.10301074227864822 0.43861742064579051 -0.56397807231676278 0.25756335312418172 -0.0022707248934453299 0.2411768249086057 -0.059721921114623301 -0.45419727568375828 -0.59973081699169917 0.10788770748066739;1.3107654558559874 -0.14915410064988144 -0.81511600967473807 0.93301637266350124 -0.75044094094306557 0.18625430306934482 -0.78278466124434343 -0.82644228033154876 1.2895261014230128 0.22880032731154404 -0.70851421451011742 -0.50695027877805354 -0.33416750802189621 1.1907315742086622 1.0001582190731191;-0.13644931923091105 -0.7229247233983237 -0.5833579798137889 -1.405346501350788 -1.5078083443796526 -0.10560641871188739 -1.2468437904519862 0.54857419886729086 -0.59227573502514175 0.84701216639829957 0.88815323475784558 1.8611362384112624 -0.34836846639170688 -0.19968610135518844 0.14886131083365725;0.30564491257562892 -0.15278748765842567 -0.046915185325241769 -1.3967142356149007 -0.57791497138907677 0.64461477592492755 0.14248587715341815 0.098974055441921713 -1.5730363939338401 -0.58008672291811347 0.30077750989166269 1.3067698198879643 0.81771977790316364 1.4119017155150033 -0.55634009256526029;0.085178097377186304 0.34327329061391387 -0.72313963721357399 0.72962629915340427 0.4055295551139223 -0.20808749776625118 -0.30770905233065715 -0.39719717120298464 -0.32133504010655017 -0.54444899758912646 0.50289558602397599 0.29688939345548954 -0.4457901979260378 0.35375317046240745 -0.39960878559995561];

% Layer 3
b3 = -0.91658703165477062;
LW3_2 = [0.80956819062735608 0.98881712806151023 -0.25215820966924296 -0.37854173520886047 0.31202821571780853 -0.47203125202548135 0.21593278906695262 -0.81152209405290776 -0.15129499456231904 0.12152114681208076 0.74124070122660668 0.33905280328470944 -0.17324270319615814 0.20411208892607183 -0.87734689306376101];

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
