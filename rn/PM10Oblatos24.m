function [Y,Xf,Af] = PM10Oblatos24(X,~,~)
%PM10OBLATOS24 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:20:26.
% 
% [Y] = PM10Oblatos24(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;0.00618238021638331;117.647058823529;0.0560224089635854;0.00280033604032484;0.00462534690101758];
x1_step1_ymin = -1;

% Layer 1
b1 = [3.5232626609414837;2.2104742576233565;3.8303969401792366;-0.50759739133516923;-6.583488978691701;0.16253354043820495;-2.7392092584766234;-1.1571028622715611;-1.0860457503184977;1.397018651865976;0.18645159131494615;0.5414713634847983;14.179835207700952;-0.18615212360642794;-3.6756327188699744];
IW1_1 = [-1.197442067629253 0.021719526496049486 0.72234240783520409 1.8978448541601582 -0.50544928375463882 -0.74421067432358656 0.36299448342335749 2.1488550619205093;0.16140814135886353 -1.8242909236686664 0.63793981355558027 -0.36696686006293522 0.013373367029478011 -0.58835751239159995 0.54046168348893531 -0.3088676939803035;2.5880471216246255 -0.11056607739610427 10.524180178365304 -5.5418920347681251 -2.3364582818072925 1.5235228498345412 -0.20212043784133882 1.7756711600277026;0.45775503301492615 1.0632789825092457 -0.5308707564673143 -0.73248573594394117 -0.30050000545466926 -0.0095139474113544002 0.26874546989966275 0.30666486210266741;1.1481069492574141 0.54608088710322356 -4.8296230173517598 -0.4510499938018383 -0.34697598364809956 0.056166873037738665 -0.32585646963692072 0.84567242460497627;2.1297496198367787 0.19154644678418872 0.38229214328314204 1.9932404420338414 -2.9739376063467686 -0.23132753939639661 -0.65461387883561239 -0.29702699128058935;2.15884093802384 0.63478891007510696 -4.1763293459755788 0.79763772888703333 0.19087668246515088 -1.9196925682367199 0.59938836774676152 -0.3711684166932836;1.2159078638012091 0.52755208201929038 0.9636430971383203 -2.7329919728713667 0.18770920949556091 -0.48548190466741437 -0.13914649249213024 -0.2250828468407437;-0.28707057546514286 -0.13180400569855671 -0.072638209492720943 -1.150100617152557 -0.62339870802923036 -1.7913077653278313 1.0063100968460297 -0.35529957497798093;0.66100642355387884 -3.3761558403790195 -2.0834054895117675 1.6977585286573118 -0.6476883377275322 -0.5793820414086891 0.32557368626842775 -0.93388574819836001;-0.38796817396284317 -0.37245589667064138 -0.32696720471596358 -4.8302396439326092 4.6265067071074357 -0.97024308766920941 0.53832131920778648 3.2297034852497606;1.2978361214593885 0.28472679828552078 -0.76427573105686331 0.75703825369655342 -0.11409450245363625 0.53252978643781079 -0.42931967102803092 -0.012521510454600503;28.811288065321442 0.67807959619533476 -4.029866874154723 -0.71864054366673069 1.9029487710450723 -1.987027628883747 0.3040651557711696 -0.76285819572856339;0.010426211042862283 -0.90348588187061551 -1.6629226197615521 -0.50143463567572577 -0.21985657751804005 -1.2111624619927503 0.062307737108333469 0.30015831520916703;4.5265795312915884 -1.3298607651338163 -4.6868154734320679 8.4545692837897057 2.9957282346084417 12.526229078825354 2.1158451992005909 2.0763774877693049];

% Layer 2
b2 = [0.21295368397721645;-12.993785657554703;17.568676401915496;-8.9322554460854988;13.177362557313504;8.6242726263276577;21.018432892360259;-2.0390947912188939;-4.7581028242186472;-2.6571119439107393;5.2119408876048707;8.8675608342595034;-2.3778838010346575;-47.956065992882465;2.77045785435786];
LW2_1 = [-5.1123868044933785 -11.211756881962042 0.7774498336079968 5.8982010055014813 2.0373886195027158 8.7610973356029618 -4.5664379007869469 -4.9830682842695504 4.5567201123407139 2.242623335077055 11.559607119531183 -6.1014865053254823 -3.1268493722242741 8.8345618519783287 -5.6562229913383399;-1.945223767075472 2.5714479387796247 2.2708565414265354 4.1514900867245306 -7.8224407334892181 -10.595138742631864 2.7898801913839595 -9.2441517072597232 4.8990410352055296 -0.38090086946909379 -2.9570276940729365 17.698923271292941 4.7153484614675607 4.6030678703539598 4.8914972329232151;21.731283743597203 0.84606369228417722 -17.220304500956686 -11.903696559367059 -14.739107320802788 5.2832787855488688 11.120630495634042 -0.21483199361428496 -9.1916252591147725 2.0713044289314229 -16.699980537802809 -4.8812011658191352 -5.6034096281481975 -2.7639677709880424 1.3430290932493594;0.29483715985961789 7.4934325251248612 5.0544264452622381 5.9565293474986358 -4.1603036812193555 -7.9943505811639604 -0.35938868924999778 -4.7223713410045125 -3.0852431252631596 -3.3911160056818788 2.5414751920016538 2.894535291058852 4.4601340233851898 1.2039918907366527 3.0014148658368871;0.1485415691306014 7.3857794074305492 -0.9653109126867786 -0.99452995523943666 7.3988306481097865 3.4334074333953688 -2.2065725217410068 3.7665931595052204 -0.38325734938742051 -2.8081219848843433 2.9291422288565196 1.5689269341284309 -2.9114489624338766 -0.061229793421006144 7.5617882739136109;1.0905753252053123 -19.692571691233614 1.7200087453208115 -3.4541350664289294 -9.3981908461962274 1.6128910228048163 -2.8907102523160217 3.1332826449769082 1.870834942178812 3.7114092984663518 -0.12869865790360824 -1.1437005027778169 2.1583774997405425 0.25592338103396439 0.96786373899923617;-17.138986724310431 22.547741448446789 4.3414753253745308 -122.25097402671368 -4.76535407040984 -5.3395707627721549 10.444988145820123 -36.563706020935129 -6.6049355513591408 -24.18251353445368 -34.477270532964923 -5.2147406899416877 -4.3463902621834585 57.703362728909326 -39.634325109627994;3.5030003239510963 -5.2228263538449839 2.5413166695268639 -1.9796368025269375 -1.8507294899567004 -6.9150537328661104 -0.1253400557038615 1.7294999032907614 1.8845394547496455 2.8223771015873886 -3.4558507425817302 6.1574008701922427 1.3835264600988737 -0.80349265289734806 1.0631723706316061;-3.6383988295278424 3.8033265730209567 0.33020451261641443 -9.369560495492621 -15.518338839054897 12.85476807054437 -2.1803081265267052 -10.08768420956598 22.883535229159154 -2.3039412267527948 -4.1075827006189938 9.1373577200871523 -2.0648018214915758 4.5515733378378087 -2.8466784457961238;-2.3737658371079542 18.597511293547143 -7.4039839689275979 11.371469860241891 14.037876237769897 -4.8305395992849842 3.5810919675670752 -5.1947781587504478 5.8194657878623453 -4.9754442634028138 -0.27891231409029504 10.759860233195948 -1.4138442041806571 -1.5149268984579378 1.5200080150594408;0.44921286411937145 -5.4524416873132946 2.1542280551178874 -4.7398726809469034 -6.8938134411989855 -0.11438894118499958 -1.2149443980324848 2.8358898998127633 2.6643259433286302 1.9561222026585223 0.48955959662270021 2.8526368774529969 -7.7325901430658144 0.74046020094046039 -2.1874022211786825;-1.0274198049825842 -4.0230009367283808 0.2078964670172144 -7.5530086285786826 0.058905310117181517 4.2148409687813819 1.2981819259683247 -9.6078787758344912 1.5315222817975889 -1.2627453270822773 1.0940308958122698 2.4460252307404562 1.8315817048015255 -3.1305663299667228 -3.6041530858867401;-2.9419246754491222 -0.94567782270960965 -3.1439888942683885 -0.13266649584875287 4.5270801794999791 10.986672246511453 -4.3214020765446399 4.2310458239793851 3.194359251420301 2.1904445514336368 5.1005388589078526 3.7632757621110784 -11.813719880241401 4.4134507735853949 -3.3164598210151341;-1.1691625090241153 18.429333988584652 25.245507919403146 19.9591646323783 -3.3999707139210633 -3.6899739899178026 -5.1907137215306456 -17.532091878774381 10.857253503587495 1.3490554372640069 -15.244429461894031 18.638314611904882 12.21377223624946 -1.9677033961842552 -2.4186039718684023;0.32728806230169116 3.3877877234923131 -1.176206666410466 1.3610725810952327 5.3868520433643763 1.2987143411491402 0.10978115454349795 -0.7176320186461087 -1.6502131121879167 -1.3681173004149387 -0.99640111251529784 -3.4586532001641546 2.3362109160302822 -2.042563679254263 1.8721944145273648];

% Layer 3
b3 = -0.79810773130322021;
LW3_2 = [0.041370401869917257 0.048751033914739901 0.052195694788379231 0.048604334455165328 0.058369020043649231 -0.071645253745969667 -0.039907071035981657 0.081464321498045333 0.043682989666104712 0.036864203340584385 0.28767925328608823 0.075683803482203785 -0.028309444598483696 0.017620558565442215 0.30732418285362817];

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
