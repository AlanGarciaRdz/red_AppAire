function [Y,Xf,Af] = SOXAguilas4(X,~,~)
%SOXAGUILAS4 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:17.
% 
% [Y] = SOXAguilas4(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.448430493273543;14.4927536231884;11.7647058823529;0.00666000666000666;0.02;35.0877192982456;0.0561797752808989;0.00588581518540318;0.125;95.2380952380952;90.9090909090909];
x1_step1_ymin = -1;

% Layer 1
b1 = [-2.2758752157990529;1.7310473257316223;0.55554847550981457;-1.4458217759731034;1.0366127498327982;-0.37848550831784455;0.13462044331541101;1.3057652517423479;0.14127093899472504;2.3577142332640286;0.7647994020719967;0.59554624521235455;-0.51312879264583366;-1.7609395340160037;-1.7584232622292439];
IW1_1 = [1.4329717605258376 -0.5466095828747688 -0.95725349550780658 0.040474857473536754 -0.23691078247782568 0.24507815752357945 -0.28313138972237983 -0.31529211581104638 -1.5019149430691401 0.2199816039092049 -0.45314147498894869 -0.00076845940101158026 0.18716229220401295;-0.3607944790705559 -1.060461828806329 0.30624966689291966 -0.40078922173976878 0.010747259594506451 0.31402169851730238 -0.55282290159563408 -0.9445772069808489 0.19864609494730207 0.038734578376709218 -0.1629783355072712 -0.74838723963276343 -0.26194581424035263;-1.0868717193398494 -0.74507948969505899 -0.16962819206166749 -0.15079149271050743 0.59968334909711773 0.34933962517438916 -0.12025150221703149 1.1850944500635912 -0.25134260003129844 -0.11302129733856103 0.31288291352780467 0.57259931944906794 -0.23212320014863358;0.50569263422776423 0.47406753482224745 -0.47388387556317024 0.29061795494877235 -0.036053678013430172 0.30202501008371657 0.30856053644654358 1.1880766239657052 -0.31385796754380513 0.4937450221266777 0.075382485391378012 0.89965047742359461 0.43215236950721791;-0.03958268841615694 -0.59254724271803361 -0.22949431001520412 -0.90087252576657673 -0.62997266905418359 -0.2800641110617344 -0.11201885921942903 -0.72071452165072269 -0.11785830729393038 -0.76197862439073993 -0.4501354135163616 -0.44081953661252948 0.26458822020132139;0.31544066821012523 -0.5897635670782394 -0.18390255878978584 0.036872411702757388 -0.24357991768143031 -0.38611994916049081 -0.17859571826041709 0.49792829379549547 -0.10724750595040901 0.14201361743172036 0.37542187902170437 -0.20551379149473092 0.12415709350904512;0.87149390868570187 1.3273734311458829 0.54643922204698725 -0.12322980120886658 -0.52662740532990127 0.16500212639862535 0.45578183858798138 -0.087790820094644229 -0.04829510691661091 -0.26868761230034927 -1.1869829973147636 0.13179783158874633 -0.97866710555757375;-1.7290388835208113 -2.2462289081005968 0.37162018676801623 -1.3377983462429779 0.085984634542408622 0.028629756952704526 -0.045493560968168707 -0.58363568305862135 0.63147333204708689 -0.53773051095530522 0.48752647081455014 -0.0011394291820786655 -0.19489063450823485;-1.8118028691070855 -0.00082527732262369351 -0.60508188593646428 -0.84285561772763151 -0.34224621354610463 0.48825216834214702 -0.48480926009542002 -0.57232866718208442 -0.73238136142130195 -0.27899941934978117 -0.46685418249946253 0.60033675940600972 -0.2152177378514924;0.04958107612089796 0.3861281277314304 0.056922211545488287 0.049197776177372393 -0.0088171871774738574 0.070043291592310555 0.11246312476292643 1.900156155548002 0.10021285473826132 -0.02384995323508152 -0.21242482038323807 -0.017232603237676176 -0.0078581827175744495;-0.3045367236623987 -0.99819822956059923 -0.67762307892354001 0.49757150844932968 -0.23829799151796699 -0.30956256950677796 -0.40530978376984317 -1.0960532341760487 -0.047451405789839488 -0.19250264076179774 -0.84838141611917872 -0.1868414731346178 -0.6443135426910459;-0.058644420212450032 0.54773063138500477 0.22095583943864255 0.38422269442629908 -0.7176682975989267 0.22074281530130513 -0.7036769993980907 -0.060443960129382059 -1.1432900081223625 0.55948412696522554 -1.0813767369662881 -0.72496861669676804 0.083260436975410856;-0.40042447210339499 -0.32028448790566899 1.3699189210440528 0.095796846352109374 -0.48149710465535611 0.041491860747459329 0.41815420216885263 -0.99218952358480106 0.17111791149962563 -0.0058332880435007931 0.15181569046456153 0.74293981737249848 -0.71706338402114789;0.65691590146657941 -0.30637682099320368 -0.53542285752616892 -0.42687838640736941 0.068678073484726418 0.043108057582988628 0.22756667319328028 -0.17998087782733194 0.55215613747669046 -0.18261512701406274 0.57518836244390814 0.0753573583028119 0.082729315081536761;-0.28578786162688585 -0.53235187874690781 0.56603096010399534 0.23297148438435833 0.57380355330657384 0.76622995701011654 0.2966489087407902 -0.049471940347545214 -0.47317489263345752 0.62553389595563147 0.50517731690284451 0.55118410484366609 -0.36839491959365145];

% Layer 2
b2 = [1.7659070878293972;-1.4707203638311719;-1.0735142684760364;-0.90602476447077218;0.84201191541741893;0.54080029665781693;-0.033423339240755363;0.30326618771099206;0.2814684015116185;-0.51315377468015555;-0.82557789061990616;0.77627875006329738;1.0702380943489294;1.9224382928530985;-1.527461222103736];
LW2_1 = [-0.52100953557261076 0.047966544552825084 -0.43485054823468128 -0.36400939013592926 0.51330583252583317 -0.241200308756995 0.051208735088545565 -0.36957955233950557 -0.5949972731636608 0.13385775109999093 0.52185696600628995 -0.46057439476679385 0.43164330281110436 -0.72442086154761609 -0.013895019772387964;0.23865293145828709 0.23433318380549797 -0.675707769970745 0.067017033551489344 -0.34896940170536961 0.54118728434165253 -0.38071800443674303 0.088969230728109153 -0.46480901207320252 -0.31744864583046406 0.57524378532843723 -0.23488221885710955 0.14855720589744967 0.4948962990351411 0.67554322566880498;0.018411755781186409 0.18861925322723749 0.27980599447614857 -0.19970771446266122 0.36998243230507821 -0.044516547887119569 -0.12775628311479745 0.95085056389588962 -0.14398044827087936 -0.34749246078383117 -0.23511374227890125 -0.27290564712565896 -0.97541949649500503 0.51730990863750015 -0.36448872935506582;0.10134281446830824 0.18521828879567348 0.34880489757841238 -0.4099580496639712 -0.087352970802707638 -0.36077428376894255 -0.57697288213089015 0.30896569148412323 -0.46033018526281611 0.09387159173939684 0.31451818039625257 -0.53553660601156983 0.047733489000897959 -0.55094721833733717 -0.16248205754105322;0.21607648269854016 0.61553119156323144 0.35475486804080841 0.57055152103707563 0.026519458691967354 0.52444896860633805 0.70380392842109318 -0.47802355950833314 0.2434439281160122 0.42026804656913225 -0.56258650356707562 0.39864548210609063 -0.21659093170941632 0.10570144134735374 -0.24906211898578728;-0.40482633124797462 0.048694446597402456 0.24716030107188969 0.14237587979982103 -0.19048309225741941 0.16254770039641303 0.6334089605240798 0.5065528451281841 0.79645655591778408 -0.47670731712079462 0.82744464478796498 0.022678969136133931 -0.46176967741869662 0.16061814577169112 0.14056088046808884;0.49295172254089781 -0.54608182549353723 0.47567539445203821 -0.094709108838647638 -0.26824745490763002 -0.41198596604489224 0.2599473439389221 -0.26417470630265943 -0.27876762360835683 -0.76310582777480196 0.53978125789574871 0.70489646523746585 -0.057894069283900007 0.5162202070936398 -0.16081265627068217;0.36957331041272584 1.104311835416055 0.78305327809152503 -0.96229128405955666 0.30436279169788466 -1.1368557637544736 -0.25852303275520017 -0.12753684451159888 -0.044153252660794888 -1.0218760607870607 0.42207764989695418 -0.4535131028179365 0.028086101991447114 -0.61955434527625675 0.14449279817271352;0.056982109749017421 -0.46532950644075 0.98733990822562834 0.42566944047399063 0.59582469850724495 1.0390754399904418 0.14328975589832896 -0.29642180953538549 -0.48745853079690638 1.4210738222032768 0.69900331305430374 -0.16530747690011435 0.1248668259079934 -0.36688583832396826 -0.28328903420740842;-0.44945017159391987 -0.25017391096131586 0.59243783935123606 -0.19509348967655465 -0.62611670000946218 -0.6769837784911974 -0.6516269601132898 -0.19205891847653381 -0.62632164979437699 0.12003609620668619 0.0079935777470775092 -0.18685009547264728 0.4256676933183684 0.2487530003729656 0.51718340809579799;0.053123521571591968 -0.10115080861797152 0.34595896990000918 -0.051642938533687587 -0.56994975806781834 0.34942648733504839 0.22118162730838814 0.66496847210705146 0.41141358329011718 0.10449245794238542 -0.35767855334669424 0.011732978068096696 -0.81254537945986582 -0.20805211727494216 -0.12925175417704415;0.67140334492603182 -1.0123495443489734 0.71395290294010638 0.48875579163836375 -0.74418049227823546 -0.65448339637377884 -0.16674868210397387 0.36549285425371825 -0.16608768983238065 -0.026909922651589178 -0.10886676468445763 0.15418049736530368 0.001051958305544525 0.16497435793931278 -0.33981229545061559;0.88987524508240612 -0.18154249951017612 0.25225718214714427 0.33368219059427673 -0.4766744071424861 -0.72626481585266167 0.35232277561813741 0.43029325493923809 -0.056012229863072444 -0.36954825687030524 0.29375418909552203 0.34586168655942529 -0.63610638170288014 -0.21690727018859185 -0.097908914780461709;1.18162823935408 0.073152101277941736 -0.92588051353997269 -0.2991774129409277 0.61688907860418163 -1.2853722466429798 -1.6100602167852891 -1.5070405572634764 1.5435394267987672 0.41465873811341752 1.5425621086336738 -1.5726739868855044 0.97672256214137798 0.19185124612116539 -1.0525972103335504;-0.396121685750491 -0.38862396649246767 -0.5808982131061815 -0.18434700263336232 0.25855437549800825 0.43625568744503312 0.52049792817441698 -0.62769618734572663 0.32858738614656974 -0.40519868034726375 0.57749243492086255 0.43710117069841325 0.63732822105650322 -0.83259093248962424 0.079511125022959886];

% Layer 3
b3 = 0.34274576601561446;
LW3_2 = [0.28781631772159438 0.63242927689764572 -0.3585233556929831 -0.85177393674417301 -0.64584641668212772 -0.20644149167393633 -0.54639492540316992 1.1856554634632388 0.43254432493285822 0.54713080687924764 0.36067945714859057 0.83181318463162257 0.18911229678577138 -0.95361917360217863 -0.32214340902758481];

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
