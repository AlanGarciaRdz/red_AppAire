function [Y,Xf,Af] = COMiravalle12(X,~,~)
%COMIRAVALLE12 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:45.
% 
% [Y] = COMiravalle12(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.304971027752364;15.3846153846154;0.0208986415882968;0.056980056980057;0.0063552589768033;0.141843971631206];
x1_step1_ymin = -1;

% Layer 1
b1 = [3.429048367498591;-3.4685888940831968;-0.7174128615901546;-0.68258357443985729;0.92865703903784869;1.1877692564937159;1.30635236750408;-1.2401097642898695;6.5403092477887492;-0.6057570756166758;-1.2960534304493105;-1.9227291518491652;-0.099244877286569513;1.3259197898203441];
IW1_1 = [-0.37624734773082907 -4.4951389352165672 -0.15881645394876184 0.070159245108879276 0.19334768168034189 0.11408252644771003 0.13532536436347711 -0.01840019080574724;0.79816453830235612 1.2805374441235537 0.2252004910613972 -1.1799161360337329 0.46814594888197381 -1.8020324392221165 -1.9530455952551842 1.2489332268096649;1.1489496444308565 -0.56246299689620105 0.59620241386882111 0.11633233405162682 0.026506356203928806 0.70573618947015671 0.55049810910408403 0.31714684161112727;1.2391404756262319 -1.6989030996272747 -0.073747543731271903 0.17051793921015929 0.45743396014536813 0.00041369950760930356 -0.28058281544995178 -0.064351620436619128;-0.94729439027141482 -1.1848982449060692 0.16914004124699933 0.77369749528676146 0.019778871746410454 1.1972826855197274 1.241149118939346 -0.62882289715720141;-0.46151029528804582 -0.10160493443305724 1.2141712293566245 -0.33943866378796678 -0.79185145464369922 0.61040192078371114 0.52871571107173876 0.17596262564015649;1.8067674882432523 0.47259037478463561 -0.39180723881110274 0.1334965241071176 -0.7040527981158724 0.033567940235378804 0.50043184152182918 -0.26194282018767412;1.6108543357745064 0.052205675262822812 0.080764848087368266 0.24648354126453087 -0.84355454811253017 -0.069910619378066155 1.1431402977367986 0.30823949398359934;5.2329954346360052 -1.7230736016551422 -0.53851522757838233 1.191092450734069 -0.45629456141745867 -2.025610368934907 -0.2039462505885471 -1.0178860274285519;-0.28152840797302986 1.2605979362188526 -0.72789705106955116 0.23225318303840486 0.45858166954760243 0.61201502086239856 0.20946773585851503 0.27146061684876654;-0.18582279049289113 0.16942112099690329 -0.27045598107714375 -0.40061615405734202 -1.4780593734970118 -0.11784577011237464 0.67090585179702245 -0.79180482609777891;-0.534866520121831 1.4390287782588487 0.67968068901615364 -0.71397450502410831 -0.064446078401369844 -0.26851816418942814 -0.71882900489057011 0.34901708503241935;0.76300752618817547 0.55040942063590703 -0.36184238900669902 0.29780221142579016 -0.17717535952284241 -0.22575764405116971 0.52994810256251224 0.42683911279903974;0.22752727730107405 -0.60813473735955192 0.21681800813722896 -0.016055744676611271 -0.91054482313922558 0.061881198320298536 0.5819178071135247 0.10527690465063666];

% Layer 2
b2 = [5.7750965797385732;-0.76475191097257145;-1.864784687018713;-1.9269552005696209;0.55666335808039014;-1.1430773332329189;-0.68813093729285491;-1.6551770594596771;-0.83355364594654446;1.2887791275305229;-0.59991395190740693;-1.2303063610738569;1.7444198751427844;2.1419802322954244];
LW2_1 = [0.10848464872895316 1.4172181702995905 -1.7759010847984471 0.10539294613820813 0.10740262872098646 -0.38058132900224523 2.0773725131483758 2.0458186661219653 -4.049778395414056 0.4290298059109463 -0.55958679945567236 1.3439365809034267 -2.3110866772839751 0.59849624779931754;1.6887579099310452 -0.024331334325896865 -0.26479014586985111 -0.40657169989420705 0.26035015383144083 -0.32837205236505335 1.0942554344923401 0.24070838333822936 1.0148864456331244 -0.46151428204883699 0.37017158360412528 2.3958034458142441 0.66512429749898361 -0.17021682855136841;-2.3821273864811823 -2.2960566389268049 0.46888041822547755 0.20453271260430519 -0.11050047875713266 -1.3666739148819553 4.5549535193724981 -0.40495085804917524 1.4555964333367066 -0.89628442471600311 -2.5975248574328575 -0.042035169052730081 -2.9274532890285925 1.9499295600249342;0.66796996335451309 -0.092516778157665736 -1.0171542987467903 -0.82168708134471125 0.23206093078133772 1.4332299000824917 2.9425787425784082 -0.85542766165067807 -2.4957078541465352 -1.9637113740799323 -0.58748754199253728 -1.5472551649372284 2.6989519265181889 -3.366240126200986;-2.1715902166655678 0.088090341011080722 -0.78587173238994412 -1.9997684938916569 4.7741304805843052 -1.427570318854984 0.23209774456910942 -2.6531507974123127 -4.1661833628696572 -4.7264045950752456 -3.1929791832649723 -1.1875517641805766 4.257317221821606 2.3135003181802349;0.4692770993044042 -0.52046615969977428 -0.65265240783103162 0.53376419047834422 -0.026386263246754645 0.88202665061793262 -0.9680824819797812 -3.1002739921566551 -4.7917815677128415 0.032100780817477317 0.19299396137186797 -2.7582279987478926 0.69079654496244181 -1.1987065989728634;-0.49663493076526605 0.3050327624109454 -1.1224112921923313 0.69010107783016794 -0.88679738873131397 0.0095739995454401945 -0.86436429885150878 0.95824995389736445 0.07557997392764515 0.88650042814184626 -0.41216524807996047 -1.3067189895637796 -1.5915081575282835 1.450695159616145;-0.086337145651386948 -0.35924340582126796 1.0421021347162687 -0.92238911853614214 0.59487665559391001 0.24878178864383876 -0.13002992731945964 -1.7988212056074777 3.8772495928221997 -1.0495512074593487 0.30870022486450344 3.2207765228991265 1.9960583564946168 -0.98341541623435569;-0.61119338956787173 0.090283787840395091 -0.97187865643839999 0.72858991724709565 -0.79168823126157506 -0.27339473887484617 -1.3727328525475027 0.95147010857550285 0.56432356777834825 1.118186018575577 -0.17805647202014199 -1.1618339054551976 -1.8541101023509552 1.9684205748800401;-0.021481014631678359 1.2812446520962997 -4.2926432385254039 2.0442910353311263 -1.340462713519663 1.0301350626522561 -1.5398004456561261 1.4046716137141504 0.037458897029931271 1.6045590690564626 1.19268654949792 1.1269153057274683 -0.076120335382981366 0.059622013244334672;-0.50352208267266896 0.54089272438317204 1.6856240500266175 -1.8917207944403218 -0.33901062080912869 0.87273773818541145 -0.14436305305187186 -1.2887132319388894 -0.42651919085840345 -0.740516040643864 -0.017221366305704471 -0.56922366680089909 0.70311356252773261 -1.373241628160869;0.88799726685245883 0.081177958648386964 -3.309405206546018 0.95442220048713133 -0.30907846250266424 -1.0638120862181262 0.63934893683156002 2.6419736504246796 0.34127704316460178 0.8602140882624526 -0.85552678533082316 -0.025220504493962181 -2.5007507922913299 2.6795656591315145;-0.57969850409124335 -4.4180507139650995 -2.5770965363242846 -2.0871752660268612 1.8607602895860655 -0.51330299695270154 -0.1698360481034242 -6.0027426680998808 0.17106001150605152 1.0309193747629606 -3.752667895330152 -0.2685436716623209 -2.3150541818312758 -0.083165505818276877;-0.91942213140973483 -0.16251581254263892 1.9246926331273357 -1.1326328850970684 1.4221913512868778 -0.38219857541619445 1.0704015082969238 -0.36009880589306403 -0.69085446507861281 -0.78137641276798298 0.45933974984597781 -0.064307641500269463 1.312795772724701 -1.0481075964982103];

% Layer 3
b3 = -0.02524659367612854;
LW3_2 = [-0.51132064468152705 -0.8262565198319658 0.62183153769975008 0.79613559941199319 0.19090280271479784 -0.79645493824195746 -4.3148347880280546 -0.98991793116014448 3.1852723862133421 0.48764930164121556 2.138838104827244 1.2969560541546052 -0.49429828455301683 -0.77911228543076794];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 0.448430493273543;
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