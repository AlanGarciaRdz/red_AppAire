function [Y,Xf,Af] = NOXMiravalle7(X,~,~)
%NOXMIRAVALLE7 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:27.
% 
% [Y] = NOXMiravalle7(X,~,~) takes these arguments:
% 
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 10xQ matrix, input #1 at timestep ts.
% 
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
% 
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [1;1;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.0384615384615385;0.0869565217391304;2.48447204968944;15.3846153846154;0.0208986415882968;0.056980056980057;0.0063552589768033;0.141843971631206;5.12820512820513;4.16666666666667];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.6363078866155607;0.35246576909177729;1.1048036536233004;1.5851497333052347;-0.24102116920238487;-1.1665361868270303;-0.96451357398659754;1.8833374031904118;-1.0924215593072555;-3.4502317934337308;0.99795973417662132;-2.1924260625845045];
IW1_1 = [1.2182685667154087 0.98737350115859612 0.71429822165434609 -0.12852541498170991 -0.42189415991638513 1.6131545773202598 -0.66106653945208038 0.63402196241271369 0.89421061743505259 -0.96337241904399473;0.79016999921770703 0.35925421166819549 -0.29554055563520532 -0.14723356966729079 0.44233634369874975 0.5484936677566784 0.30834501714014234 0.2332711857547437 0.070844373987412848 0.01597144783591228;0.41886768551763148 -0.21857783492851673 -0.33575685620425566 0.4697314175985457 1.8979637392172828 1.7766741449542711 0.59806243377954205 0.30771706264956983 0.85803481504637469 -0.56243346673867234;0.24597660199374005 -1.8698071951667439 -0.66321232430718779 -0.79199393671382456 0.040643755090659608 -0.076129538212372685 0.4347530285362623 0.15158908346043273 -3.7728289217872635e-05 0.096000727208487707;0.50939775379476093 -2.274892892236513 0.0025843267033732881 -0.065535649982202793 -0.62769337718771234 -0.9012303541868274 -0.16171419940135126 -0.069422862180510331 -0.26328852224493099 -0.064552369898770751;-0.54906104897406749 0.67717551163750445 0.49951889102048808 -1.6887924562559431 -0.87869164125350618 -0.54501296285963652 0.065259836483583161 -0.23725839480150687 0.29972901063327095 0.31991795281502716;2.3039647317475564 -1.0491775327866426 1.5507439704005097 0.87993923032096732 1.0393477597006651 -2.3246921576920547 -2.1254303888530139 1.5070583167090155 -0.23154272552559463 1.4620464258592052;0.4399296077741725 0.82334052533752888 -0.28815426283683621 0.84971655199240981 1.0588006915801049 0.76189109110326303 0.2838551541138139 0.24096131543687632 0.25021370826632977 -0.29636851642446266;0.94390533923071862 1.222381838316043 -0.65147954533257257 0.087983915931746884 -0.40845389581694125 -0.17013784811863183 -0.29647872024021799 0.13417785866509371 -1.3678495484993456 0.47010548833933741;-2.5335924812716368 -0.55138735079306533 -1.1809986942029054 1.7403032889257157 0.52048899476609467 -2.2200196250274637 2.4796780914274947 0.54495758468712319 0.59472779790873442 -1.412140532956315;-1.9962090117373565 0.82982835707089009 -0.26699807696341615 -1.8284888533209207 0.72202595359099075 -0.57886298558421312 -0.11405121536587717 0.45513678948326697 -0.097680112786932061 -0.28676252178772832;0.056606513648261018 -2.0571765996384106 -0.050927554542473025 -0.088461755549383236 -0.059258423447355338 -0.011472459463073698 0.080317892875488434 -0.046192485448005298 0.036724842271956118 -0.020902760682193443];

% Layer 2
b2 = [1.3926214312665801;-1.1425859904438669;1.307898060629884;0.23929441739024954;-2.3417402366840463;0.88102770980217826;-1.3621271413309237;0.90143037932783998;2.4112645008724631;0.52252586196130801;-0.084158374749383882;2.1757486977251053];
LW2_1 = [0.081858487201559027 -0.65883172642870214 0.29047020258358841 0.082308288633865426 -0.60101969653512677 -0.0065531459663967628 0.10803083705488413 -0.1097035595691101 -0.060385534858581377 0.14199740315057 -0.42259187424994693 1.874777486897798;1.5114648312463876 -0.33878651990010417 -0.21782714943659492 0.841027337812009 -1.917695338720657 -0.52885035773065847 -2.785319759889703 -0.4033516943882085 0.10492698352795815 0.0025563495439031468 -0.39342045911857915 0.98938550941580039;-0.93058253230325338 -0.51895014465149392 -0.12051864773651895 1.310625198158214 0.2911853285251455 0.12375556497983697 -0.3904065535598587 -0.035167930219279796 -0.41362612659629988 0.25723844196345358 0.67599708398883185 0.46286610786070675;-1.7341617495431865 -1.7443169077064815 0.59620168175575072 1.4562793990405711 -1.8287871600903123 0.061319507576228137 -0.76601183302471754 -0.21020060941877625 -0.16010451978642243 0.85446789978327509 -1.3510859097193546 0.16921050172061183;1.1999491906189603 -0.26931834711221986 -0.42589307840820595 0.79016006221012713 -1.4583450645201468 -0.26657154617264334 -1.8107240440834458 0.11300320871123055 0.23433098848186687 0.042518980632653178 -0.35079040162418629 -0.75880143599547256;-0.031057674785788459 -0.12100869313935775 -0.0093512360881333571 -1.3252607214075887 0.76097732543608976 0.98307448619371895 -0.014025918443201963 2.2439905737787305 0.66321968389540886 0.25158473849013907 1.3402369516146408 1.9716689893248223;0.090662323888064056 0.2873454294515736 -0.75579365352273564 0.54823608287617198 -0.67527945862827599 -0.7600982461480158 -1.2713329385046923 0.15574372478722989 -0.30931860442439069 -0.60151421942360739 -1.4691452631085058 1.6409991883574377;0.048093305880918688 -0.23728866005396931 -0.75192157747022226 0.28436684773498505 0.12418195224502596 2.5704018531785877 -0.35785967006887864 4.9967009042596064 0.75722995545756489 -0.46631060243944145 -1.5136655798640148 -1.311024471876358;0.85643738414326642 -1.1455185969388375 -0.14833279682164976 1.1130605151975395 -1.3608685982073851 -0.12682368501890845 -0.34537635441495596 0.28810197642107804 0.22963114125415984 0.16679088386792754 -0.25282067232180666 3.0842781170551112;-0.18332559529975262 -1.1018656366974087 0.76003127069882292 2.0594064057148209 -2.574102412809919 -0.85395027551036728 -1.0427900102808088 -1.3439301395780732 0.11074125513466906 0.07578096006082953 -1.3572478216883492 4.5619407298050634;0.60143231766656824 0.42094735850302101 0.010885738931047589 -0.63875158007832611 -0.06045923472423035 -0.48981008260779829 0.03665781856416489 -1.2437998719711412 -0.31397454800931773 -0.8156795909500858 -0.92788705201953792 -0.56365571083821919;0.95012768121055968 -0.8167909621992131 0.10076060808957746 0.91293035464997918 0.70047396863462241 0.50311690559080147 -0.66408778548105363 -0.90406147311948515 0.65737939470763107 0.52047468779198036 0.34360249375864044 -1.3407282855596154];

% Layer 3
b3 = -0.80684334765317056;
LW3_2 = [3.0786769507979161 -1.3785317729707545 -0.97572339008782605 -0.38507578874327109 2.5498040560443513 -0.67011651235030467 1.8035244513585607 -0.49997896493724225 -1.4029805421499342 -1.3133427987605917 -2.4883557606864906 2.5127328613947024];

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
