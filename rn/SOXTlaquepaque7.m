function [Y,Xf,Af] = SOXTlaquepaque7(X,~,~)
%SOXTLAQUEPAQUE7 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:56.
% 
% [Y] = SOXTlaquepaque7(X,~,~) takes these arguments:
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
b1 = [1.8736022972943727;-1.5274583357211717;-3.8036845728309117;1.0951844571958271;0.45550698151580887;-0.34136069495407528;-0.18472529021787726;-0.47028413721424867;-0.52208216720318223;0.17392092813987453;0.403805931935805;-2.1226393546138924;1.4535215768449961;1.4163131899537678;1.960903156325041];
IW1_1 = [-2.4943336060029728 0.73881188655537955 0.37056704882643893 -0.047503757422961465 0.14923359224411681 0.27908853889645441 1.9014270798476824 -0.75165027456636002 -0.72320711223958523 -0.44743402268911775 0.29611654011120536 -0.98506525982815041 0.77877492230441081 -0.60175284328901713 0.30349843090064338;0.3494016084968895 1.8560695197369241 0.56079841274837539 0.58218319217126113 -1.2418989717138573 0.41702401528673766 0.046817866808151823 -1.536267261874779 -1.9947629160343614 0.39146887476398989 -0.072011737688173386 -2.0676335328480522 -0.2033099162684516 0.30223679697516825 0.77714615107557683;0.19556356471871322 0.15159689246747196 0.032107304914992016 0.035136042843744227 0.11627816896999126 -0.30129939628861152 -0.17257540928261281 -0.11765041989055665 0.14130206209493879 -0.0056029882847219298 -0.0206243732675526 -2.9698495374540723 -0.058400001101370065 0.025771054167848962 -0.17542237574728634;-0.60154245230775116 -0.36366602203938808 -0.085472765516886276 0.2637749558696153 0.17264583313554147 -0.46778652164570644 -0.21794162914300833 0.23081494045120454 -0.64861797570844504 0.21477443187066259 0.25754873300644437 -0.27060659956406746 -0.55911076378802393 -1.3812178289670067 -0.26683282304585987;0.29946603926427051 -0.84081580710962989 0.54200107084998073 -0.14820885295991074 0.9329329698950859 -0.91667925449862597 -0.12850450230557864 -1.4370739590424004 0.11995499572911431 -1.7977733968106011 0.39103397011899343 0.2926951170281567 -0.5687858242607331 -1.4250113587731001 0.098895885386523247;-1.4958645827637287 0.36970897564967431 -0.44251605171852015 0.76074514154564854 -1.0479443844043292 -0.74377725851378951 -0.40721226195422772 0.32875640172061277 1.5803609482628735 0.11767495641807148 0.18281796188824356 0.10971217814264669 -0.254299167798547 0.54307211500150609 0.46981278811466198;-0.18267474095390587 -0.31066799556998459 -0.063534330576726139 -0.063842677819453381 -0.23453057479574901 -0.60462780074794853 0.10748939219036159 -0.99246022630102293 1.877950954002922 -0.23030346133783813 0.1510627213608112 0.37192401941051012 -0.2623938684803897 1.4185218946647664 -0.43325521612269563;-0.86816786645900357 -0.74241197482989851 0.34775063208658469 -0.45833765487770001 -0.076977497327413838 1.2777069437027628 0.85566191663066438 0.21602004284158885 -0.55228845781666547 -0.073412689955453969 0.28541828700799621 -2.3988262287514677 0.037917195161032084 -0.11012887114918127 0.57064946960849994;-1.1870783237046365 -0.42666298921365781 0.32104090153811471 0.17793609174430614 0.40179807788577154 -1.3101465581323157 -1.1615729006570354 0.27534398397737309 0.25333396823419213 -0.25039379695525182 0.59231326675943374 -0.49979053097206882 -0.17054530917637398 0.628577759191148 -0.63819174643705223;-0.66480847311886504 -0.89464189831281737 -0.22868931109506183 -0.094720441958466184 -0.55149694819340489 0.45089360572752712 0.2814057127857133 -0.80296049980172912 -0.35855952540042607 -0.40845111971257697 -0.73708905938212665 -1.482965776875516 -0.40476991166345899 -0.30546190193367734 0.43048683787312281;-1.2569036596616627 2.7071191392044449 -0.8332075820505187 0.45692816236239003 -0.20053303803252356 1.4465530010986964 -0.47210490107119696 -0.73358869819371908 -0.86196678294357976 0.052763854738279395 -0.087342230877756943 -1.1081379482364535 -0.36875175266287408 -0.031427272229344327 -0.2710435168874194;-1.0187670681185241 -0.54797109227727003 -0.19632207550586786 -0.41867268085833231 0.16947013370232511 0.036466179114650284 0.028373008756280533 -0.61441612610029761 -0.17160119809790336 -0.38060936512125187 -0.15689811562500541 2.8354005476472568 -0.10972414129423209 -0.70980440264246647 -1.1613988486727722;0.059625647433324783 1.8771409410927387 0.024019866381080966 -0.12550262119694786 -0.12637994783540349 0.759768221120803 0.068838258028211724 -0.13608153123123229 0.037204749113428331 -0.16475086755122104 0.28933951796512775 -0.64375410581415893 -0.70010200751282681 -0.44598251476809836 0.2941647666804611;0.64712623958700877 1.1941778737205579 -0.47366198600977383 0.3528491284920402 0.040232824183368571 -0.19118472950402307 -0.54526559112818018 0.23187122293086926 -0.22945767592494909 0.11835973435169203 -0.084380093802484415 0.085104841756481101 -0.15883395162303973 -0.0187689330344834 -0.038932951137998925;0.70676817533262848 -1.9606967356684908 0.16776078458485619 0.27976366913716266 -0.13036327035144188 -0.89145258872587974 -0.68378906677389184 1.0138617158508014 -0.77777120588521831 -0.60541535373758726 1.3136697819506078 -0.91336890862840237 -0.22611686989830618 0.70030467351770054 -1.6037908393715505];

% Layer 2
b2 = [-1.978748973838754;1.588435420715679;-1.2594974478657344;0.95314424210053117;0.75225026429877062;-0.72383078448371241;-0.27138137657626993;-0.14636198185477972;-0.061848208023832237;0.18026226451773367;-0.32585761811400976;-1.7899688637720681;1.5818920090449309;-1.2542803666412334;-1.7821685826534934];
LW2_1 = [1.2069785679258838 0.97560999769460333 -0.20858328566865708 -0.32463276436404809 -0.040382156335555405 -1.320414757431347 1.6604457588627441 -1.1276946568967279 0.85843764349854745 -0.32658825267826713 -0.5756266321336676 0.10346776611836715 -0.46405303641542583 0.54870947342257714 -1.0949052951619522;-0.58533644859732459 -0.19674464730746605 -0.15944231540409934 0.73630504125301444 0.37827529594105835 0.713972218048054 -0.43093321246151789 0.35217081207918011 -0.39181132660782653 -0.33831338761379687 0.20348657604827156 1.0456294076914201 0.32697802292756639 0.44102498457202866 -0.080344622595029419;-0.35084296172641349 -0.33140986463821731 0.29393449790529241 -0.66991522751420729 0.41822505938821897 -0.46786696569452763 0.032209160693067902 0.050259818080985529 -0.038273182895067814 -0.13009265984626311 0.24740057055096115 -0.84178994891579428 -0.24284152090879824 0.85389751346691556 0.33798459520995633;-0.65042111678384917 -0.26186122929769973 0.02449489090392884 0.62073657365327495 0.040104812323643518 0.53900708101917172 -0.63934533504537927 -0.93141434011332092 -0.39607395973913284 0.47117687329329577 0.64068501926769361 0.16809604369087941 0.25312295149364561 0.026101252236349057 0.81488092563331194;-0.1866696540967317 0.60342692817492172 0.10981373713177443 0.39496461564856844 -0.39235615142943042 -0.64964964985676243 0.63115379603226718 -0.29510514996909487 0.49141805545660522 0.19495130540678113 0.55959193784513073 -0.062544179790803622 -0.035383565843421304 -0.40721412804975327 -0.91653269984425167;1.0875146710884285 -0.29645941851976843 -0.93366199418605034 0.12830893741764324 -0.57357253462638969 0.28366466781408456 -0.17528574388108029 -0.4614508217202935 -0.34246321885454839 0.69809939718627256 -1.213555144322366 0.72888376093749652 0.50977295557717284 0.12886290072370565 0.12073079560429523;-0.062095507433352966 -0.38716309668394333 0.33299622063250905 0.31080399509521256 0.21492908148331838 0.68686648929571958 -0.53076115429786741 0.4120941199348116 -0.38063769608060655 0.26455585099401402 -0.51110658675252785 1.1287468488149048 -0.58315332383154983 0.52304930923895188 0.99186366492129618;-0.15202444182864491 0.077337856952592932 -1.021703649651394 -0.13403851739710881 0.27393458786975378 -0.088518825305329646 0.022423154133653547 0.74066236935485164 0.46676995061382853 0.19467146236432525 0.052885194012252543 -0.12122701045250581 -1.195346279409867 0.33708731233195938 0.64285244540302255;-0.27266334882082444 0.01253752145777007 1.0248272732944099 0.74714391020496007 -0.092268604882079774 0.23685935933482666 -0.58412213359939569 0.27254751374457875 -0.029469565782290701 -0.19648635828161864 -0.14112192490992775 0.2255338761613993 0.44036639386451609 -0.60147967774982947 0.49202576668809972;0.97975636731037918 -0.39802150809102721 0.21304782881614565 0.49000901513702672 0.12853817845245769 0.66680683951457786 0.33468587764570146 -0.091940663609965959 -0.68126067311462468 -0.36815244060280006 0.34184879216752495 0.35728416884519698 0.23421239430692514 -0.44769936080170231 -0.65427679560186569;-1.2653714247303072 -0.93798771565456374 0.26063264298785216 1.1704776104607166 0.11262584559563631 1.216842143596468 -1.6859306249909869 1.1968321743240036 -0.74919823249293971 0.64816576952383465 -0.31921116764237817 -0.31041371684972352 0.87607431760144894 1.0174411370978325 1.0948670550330393;0.11256700764305201 -0.33743199598316881 0.744478984539925 -0.34664879423917161 -1.689412743156534 0.83933281281987471 0.53352717328911803 -0.93127048279758673 -1.123446248817642 0.63433784544010929 0.80731021887682608 1.0536737942962626 -0.25413592195249507 0.0086213798284266174 0.9077382528250737;0.97870215475709765 0.4319926882272454 -0.25822428313026591 0.50351723596623432 -0.050121413225555994 -0.63362304221173726 -0.51121808078547437 0.21621741637692429 -0.10679534490374348 0.88674831915830443 1.6117768286719194 -1.5386950618403106 -0.06589451037086369 -0.1368307422482592 0.09450439590077421;0.32833858944741512 0.028823423956083158 -1.8923823019955504 -0.4340470864698206 0.33387059127810725 -0.47756677188673713 0.49352439966225908 -0.52143735989319129 0.19830304023441797 -0.72839869286307435 0.31524350163151599 -1.5188950591328141 0.0018716309696576658 0.38837600202706624 -0.62040243901314474;-0.24020668285178054 0.34398788460412927 -0.92607002340270461 -0.38769729104044659 -0.33238936332730734 0.0090718748834720253 -0.46844177247107355 -0.023476171813541759 0.50581237613599828 0.0015326240949597625 -0.7070446385573933 -0.0081249246303420498 -0.17705724564910968 0.46937344119073771 -0.41925449394224568];

% Layer 3
b3 = 0.40488875762359294;
LW3_2 = [1.9954910719446728 1.1025456003132024 0.31273599577258826 -0.65047322308266364 0.87073249298148603 0.2962663654335379 0.88126800781994841 0.15744245333680271 0.75843460957388231 0.18939558141861915 1.9072900771047825 1.5501435589409345 -1.0560519699073831 0.79642125607621594 -1.0129096337473813];

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
