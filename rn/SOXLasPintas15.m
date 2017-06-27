function [Y,Xf,Af] = SOXLasPintas15(X,~,~)
%SOXLASPINTAS15 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:29:46.
% 
% [Y] = SOXLasPintas15(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;4.5045045045045;14.7058823529412;0.0179856115107914;95.2380952380952;0.0558659217877095;0.00576368876080692;0.212765957446809;166.666666666667;45.4545454545455;29.8507462686567;24.390243902439];
x1_step1_ymin = -1;

% Layer 1
b1 = [0.98316365628971925;-1.3338352673950857;-1.5116794142532717;-0.4999801943519509;-0.48066240285153167;-0.35360191223258003;-1.7766745143211118;-0.2437722528756836;0.92638901581729749;2.2349479391289946;-0.14258006385595939;-1.4163113947263237;1.5658461026173289;2.2915311944561956];
IW1_1 = [-2.3491324536160798 0.8755251295832136 1.0885320796202005 -0.56442110756160635 2.7266163260629734 -0.7343503145533784 -0.14119647301570387 -0.82336686845066176 -1.5795006715304658 3.0209520230243543 -0.23547787545951365 0.27533823525471285 0.25460158445053516;0.57238217664033308 -0.13967461157574546 0.57929209958426797 0.31724562299825942 -0.34119853941756179 -0.77448155138902741 -0.042592377658468211 0.32778385455708731 -0.37063539196103196 0.52129534119304421 0.44247636728008177 0.33843296523557226 0.68180878048570837;1.3074585717936253 0.3626372898005264 1.11420395077485 0.29410972402660301 -0.38395186750556121 -2.9133119369630132 -1.6259788738365724 0.039270477092713668 -0.56544439058070006 0.74334532317949042 -1.0402102408804825 0.82786235048106305 0.63667469688019296;2.0737503708303548 0.64247924399381606 0.096033759782430228 -1.5583198470614605 -2.9518816482251049 0.34926219865727143 2.6177270722501431 0.6561334035950378 0.027742193685663316 -0.035130578397120471 -1.2636421109418186 -0.45913472064658634 -0.44314840186098003;0.26421131465792702 -1.0513599684381467 0.53997594355950762 1.561356217246461 -0.54916627008494345 1.6702770509369333 -1.51776634911942 -0.34150723122515325 -0.074319333993863548 0.4767352962189475 -0.8113486796033591 0.19521131901846644 -1.0845403237057205;2.8109204825284504 -0.37285854590896228 -1.0067610261008995 1.2539741926960863 -0.64455632888870262 2.6602211190930452 -1.7641592336854823 -1.0143061633385577 -0.49008673876319991 2.7911494861747697 -1.6622302582715558 0.4307531665962066 -1.9098187819615846;-4.0235080497185818 0.037164629830927942 -0.6981107836486492 0.52291801341661059 -0.17999785711205829 -0.13764386231421172 -0.77180045117913887 -0.028138134045208239 0.26895610698323058 0.35781733576258712 0.68415747962524442 0.092908562969529498 -0.1494083447847972;-0.94488001915758912 0.36850449586140788 0.53467931438698502 -0.40456018671027583 -0.27820840958372761 -1.5734563193526052 0.16686803165462358 -0.025025812305274842 -0.42690333374612127 0.079940003951890132 -1.2353235515953944 0.54175601686120922 -0.078949508185448783;-4.1278430378558708 -1.2333478704128111 -1.5256374355988345 0.1086779809594499 -1.2400760572583307 5.5927084305721335 -1.0902816462581786 0.23286427603007054 -0.5122983435778945 0.039495475323262086 0.045820224881202742 2.2015854583628527 -3.4795423953714781;2.2384550306334372 0.66670716669332197 -1.3621441714094089 0.32224314689059846 1.6535700930375299 3.1759943045644725 0.23605698710806586 -0.51864957195252348 1.2253230670619044 0.087051567452588713 1.879278239775154 0.76202391176068784 -1.4940115094980229;0.96290873884291139 -0.034675380087829583 -0.41430245671382065 -0.41993231925277341 -1.1022727047079832 2.4842972018960361 -0.81687860114447552 0.40133175949147981 0.035353066799341151 -0.77989195322245608 -1.8646948764080458 0.19634469252078232 -0.30060961296476207;-3.0042221672859104 1.2595838790863183 0.90190820079793188 -1.0089588828292213 0.59428608763934399 -0.71028405090691826 4.8340009592727693 -0.34998900236563679 -0.71547396100864136 1.355774036257789 -1.7783733016329442 -0.69016598732849888 -1.10100138877312;0.36829067786346559 0.8556201206309888 -0.54550854138761407 -0.44315506634939456 -0.026650554428265444 -0.023361419317203279 1.0195170619026221 -0.34922741404542057 0.28128195740923789 0.11798552468912761 0.27232010945955298 -1.0323531464391826 -0.4979795318932696;0.99570253063591885 -1.0570121207442134 -0.74617539871162997 0.016418710741325018 -0.33585385486792807 0.0085059770175960336 -0.92666994485452048 0.21816081417887437 1.1118751872967318 0.74523260308022954 1.1264442479306169 -1.203156950835762 0.25633399542398477];

% Layer 2
b2 = [-2.1112120204526392;-1.531399860422658;-1.6455038986094848;0.85713980605314599;1.8345258306510701;-0.7504974497228738;-1.499756446586396;-0.43255112834061299;0.76392164321152023;-0.77881763421680605;-1.0714189687104672;1.4725710298300001;1.7531086529713389;1.9206349288583231];
LW2_1 = [0.22490994903544759 0.64562027909575459 0.74134898547436978 -0.91471684063377956 -0.034652120264018288 0.58581722681055182 0.21984347042640706 -0.21667437080317439 -0.038937166303793715 0.97916532636463649 -0.062721119148165652 0.38530913020997748 -0.012180875431650019 -1.3645442820646854;0.53894991665022052 0.45215853924510729 0.26259964559791221 -0.39350455386429711 0.51689289622356493 0.41863219356100267 0.30332500051458772 -0.62542181811029551 0.3277404786023092 0.017608406372941192 0.43013641007044834 -0.61008411410571228 -0.67472737186201592 0.11121959589323616;-0.11141095918182117 1.0905211699441069 -0.64429952642423483 0.030919698505090014 -0.059691632610998933 0.10721878763494647 -1.181268074711104 0.13888234660398036 -0.01910348880056402 -0.15174481615194543 -0.32260926373811505 0.31059376094661473 -0.29164120073718208 -0.056393083160551132;-0.10126292636881708 -0.63357657681507784 0.80110559918695656 -0.053035552979486811 0.2923211737349663 -0.25152739986376416 -0.43055457422295218 -0.21807789886770096 -0.27670419614063752 0.55335127799432759 -1.1621242990788545 0.085173253331752213 -0.41981844294756343 0.090897660686887191;0.074763942673870515 -1.0312316603426008 -0.032269137379603706 0.91726588829366262 -1.0507371426006764 1.1616189364933713 -3.3120233719989649 0.58443305298543713 0.32274998803649679 0.07813543444564805 -1.3948415559402332 -1.0235250899998998 1.9843789180410309 0.88719961276914028;-0.32402402114730505 0.51236773335835051 0.40685051155164742 -0.20951673881444899 0.2057340077323708 -0.44658277417521569 -0.486794266069005 0.46591021398594645 -0.037408745685442349 -0.90523185668949901 -0.27716469152527651 0.52249884751966935 -0.33923494997510373 -0.27857780349959654;-1.5965525569477914 1.9990373229738001 5.8235820067595299 -2.4073458241140844 -1.138362727895438 -2.2135570568237992 -3.6969199464180993 -2.1203796653530667 4.6336277133363479 4.0991489387398499 -1.4311853947584841 3.9841519130822252 -1.4002799403211688 -2.3955619550892462;-0.21038767921751209 -0.24988571660419209 1.0415640150100325 -0.52958235768199557 0.16124416148710932 0.2150509355020444 -0.26268370374385042 0.11805430409404277 -0.22489165881490358 0.80643832182667041 1.2825097485848651 -0.05270978863275104 -0.91043256631834901 -0.43945263930231349;0.45478725911913681 -0.87416671664879986 -0.85529652741675743 1.3823859638419549 0.40556624628968518 0.5771042978104387 0.19418489622125792 0.37637122054034688 -0.38720062489322821 -0.42603685201834024 -1.1893426783003647 -0.086071117276479647 0.86967717902368125 -0.23981122272636576;-0.3356446921674125 0.68747794111225025 -0.37395167276202834 -0.17427251898239346 -0.34395674495812567 0.030896538035022625 -1.0874253076616502 -0.64364738353177431 0.18857409436137471 -0.4562811321762209 -0.45649210419878572 1.3074066439536178 -0.79409822201940738 -0.14841795955857817;-0.19740810012498389 -0.55101664274970774 1.1411944683468973 -0.79565583551262054 0.33073700961607766 0.07117151756243778 -0.55003216788902232 -0.30976744782221455 -0.17619206186330927 0.93915318346630461 1.3984124665759998 0.47948275014569852 -0.59735765095606597 -0.38318853761213328;-0.078182185675251384 0.4522286182758361 0.86795719580172248 -0.042884143479268097 0.37849824920539932 -0.36258532718870889 -0.37792315134334198 -0.64714531351024207 -0.25352602899205889 0.63954475549460954 -1.2041539009018092 0.39826743894577754 0.19146515986765594 0.12940293481521722;0.10710796107663233 -0.88063475506277822 0.32793641259674888 -0.10001312241623905 0.15013414913116735 0.16121343965101592 0.067891740393575956 0.85863629590700219 0.23177708176226477 0.0037369034292665023 -0.34147086278119232 0.15624171038453777 0.91778191450961077 0.34246212923237368;0.31642272721672732 -0.46897392642981894 -0.39425142849106287 0.89759644053102361 0.38982547046880039 -0.5461886544530441 0.2402478639820308 1.1985161629220999 0.25459873928061999 0.47156786135794598 0.050293559710236781 -0.5716158109578906 -0.27448934834808347 -0.52397030884458051];

% Layer 3
b3 = 0.1492795779117288;
LW3_2 = [-1.1778934774953642 -0.25264072095529899 -0.88219972176760741 1.0166999392749527 -2.0385427759464658 -0.12712043962742847 3.8689939963067426 -0.69102215888134533 0.96645965549151147 0.24167275058518997 0.61515321776710652 -0.92976357953847122 0.95429937719967528 0.66992733494761014];

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