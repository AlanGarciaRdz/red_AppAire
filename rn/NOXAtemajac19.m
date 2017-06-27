function [Y,Xf,Af] = NOXAtemajac19(X,~,~)
%NOXATEMAJAC19 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 14:08:17.
% 
% [Y] = NOXAtemajac19(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;4.04040404040404;16.1290322580645;0.0210748155953635;0.0561797752808989;0.00614628149969269;0.0213447171824973];
x1_step1_ymin = -1;

% Layer 1
b1 = [2.0019479874996309;0.91162340644570561;-2.946966529619039;1.1714066275644892;0.7636491385682902;-1.0749005015317059;-0.34487686886970453;0.082231091098248194;0.11554880795129567;2.4897110115392795;0.28609085452930605;-2.977753117796845;-1.483688106292016;-3.2919387834488596;-2.3478195802935389];
IW1_1 = [-1.6998576635945606 0.41699269582325971 0.57267213157000774 0.78086557606520057 -0.81281805290055431 -1.3856080557121295 0.12227419938693775 0.57658889942977454;-0.4259240192264428 0.079731307132479029 0.39334980995682362 -0.707561417873948 -0.42636911458782534 -0.48309146533608205 0.12261469487113349 0.57033194557345579;1.3881609294676405 -1.9656795733935313 -0.89293834341331646 1.1382518824963657 -0.45383743249054437 -1.8994997818130694 -0.037162353882870425 -1.4230687986460462;-1.7901833874435944 0.15781653779899407 -0.015814397085729653 0.84189870516381415 -0.41801782726846054 -0.23439640098462314 0.11699959734014038 0.76998461712267618;-0.079195752456752061 0.39254872822199627 0.92198590986729645 1.9182556400126667 -2.0348428034062191 -1.3457110630085927 0.064465407274959738 0.97249670856445924;-0.56486403542633379 -2.1226635332116626 0.23605192986425996 0.59040959980331364 -1.1642299851401019 0.21576293527269966 0.11221535557691664 -0.60723601778552261;0.94632730612633165 -1.2494830778960622 -1.6458418176019585 -0.19785267021577391 0.59650835745603303 0.6902972592060268 -0.15432046673989369 0.61713929330458783;-0.8568931973745384 1.9084669372897676 0.31494140411348875 -0.65580105149487056 -0.471225957970408 -1.0851543449076679 -0.069696117245552691 0.16030230639448753;-0.64624582371450712 -3.8296182349941885 -0.57274747117757019 -0.18631805602322229 0.42993032460704295 -0.39621004809901011 -0.0064919594921428346 0.098799931289659637;2.9774322640354347 0.65073850421483781 -1.3814052252472002 0.5417113763997552 -0.49452743278989192 -0.048972182979004165 0.17919316633896429 0.032025461383783746;1.1805018781774324 -1.2694551794741515 0.19611774858925526 0.55009429009698674 0.027923494988743122 0.69588312659555573 0.086296455753710768 -0.50872436628329076;-0.077038396690392599 -0.50151885306895405 -2.4351032186111885 1.1484186861710186 -1.1323325756048772 0.5999739885375277 0.0465482756644107 -0.21127395694703208;-1.078217545103171 -1.5408138848912796 1.0205381361915329 0.49600150985316593 -0.29749923021647501 0.51622771714952087 0.21959431010390298 0.98655270963904029;-1.3527454359738373 1.7715778152536579 -1.8803649659533692 0.25296718553208997 -0.57429674087368621 -0.86082482869266619 0.18885577389768265 -0.93850195012062665;0.36692531040119547 -1.3007212049533137 -0.1425152968565245 -0.25316884917152865 0.44213541380035587 -2.4817520225419392 0.35595862182991705 0.37953826298023174];

% Layer 2
b2 = [-1.3088791545677219;-0.91865322492071544;3.3599382474353372;0.78898164227240375;0.51119970636476919;1.249203496215181;0.12239208964504134;-0.69127735809414459;1.1687409577100287;0.13626569696213633;-0.6172406115633019;-0.90665686043740079;1.2704641492799218;-1.7019540889823863;2.3029432914727721];
LW2_1 = [0.16743270492435558 0.84930995711178037 -0.39232897892489799 -0.78031373615778543 0.53809731809397643 1.044118856920228 -0.30511335316057492 0.20098109960865768 -0.16650045354231438 0.43226516865602571 -0.37573170841932901 -0.22582952136652984 -1.1632547289549047 -0.55999190488327166 -0.38841776039988607;-0.19685378792218261 0.59840739736273962 -0.0077199715924105225 -0.20267298096351982 0.05744784452593777 0.51742369460678883 -0.76976107277306094 -2.3061984614258582 0.62975397280162926 -0.89773458979851317 -1.0263884714940834 0.20613510427647472 -0.26858433239229335 1.3548309690772351 -0.21755880063852195;-1.4292399385691827 -0.92300422950352023 -1.0858298729803715 1.4097539838302939 0.22704315371707084 0.68625570015591453 -0.039114530773045331 1.4917885116267504 0.32663477783637745 -0.75800543082878735 0.8067265220739408 -0.40519543507995071 -0.1998097322463315 0.60379743183379453 0.67952361500481684;1.3994310033363229 0.39643605389065117 -1.6167969751850098 -0.97831399210504355 -0.20364761672566814 1.1661234206897821 1.1729256202478471 -0.55705170876854326 1.5532822091154039 -0.35918674302039993 0.39916251940304126 -0.14285794897487292 0.30562466233769503 1.3479295227462642 0.062677952340002924;-1.76355744337596 -0.37927937755459085 -0.24099784412587796 1.1254570438210767 0.049360542218043583 -1.3175928097188736 -0.50310310828007476 -0.32684138666657497 -1.1252605919377832 0.063439085213335369 -0.78462111805981738 0.1113581443100962 -0.30645366975545058 0.44595068767479357 0.91903704866306601;-0.097947325527271784 0.67065908049174072 0.40253059568723237 -0.46695819631744345 0.26084844682563668 -0.18735404229615704 0.8452036453298678 0.93070548711014167 0.31106106220643898 0.19576117839213811 -0.39792875619293833 1.0568434190766183 -0.74169430950171988 0.032698863449415791 -0.09461340673799605;-0.36346953533867904 0.2790638891929702 -0.98213678919775405 0.71024639499692799 -0.32127736890700531 0.14423119943185908 0.0061626400727592531 -0.39427742500586271 0.032060859838025084 -0.75426699884385451 0.39740442125855258 -0.2225034392324847 0.11846998099088842 0.11154152479538487 0.39911101101998608;0.45880554316560163 0.1587619669889723 -0.066891120105166346 -0.78146134447478921 0.2386553538394835 0.093100191500334509 -0.023890243380085031 0.096001036306873011 -0.026894192572146529 0.4496324695384149 -0.35098394614468637 0.029031451960171688 -0.32003412353314625 -0.2116868097170333 -0.40531436200109766;-0.11104049432239121 -0.24906716773133425 -0.5275460455997375 0.65602959651534942 -0.55837333752516283 -0.62078774386721203 -0.1996962631351557 0.83018038906019642 -1.7408629965417017 1.0568094299040911 0.27878184588116645 0.15462987542236706 0.047603135804999419 -0.59806475229905731 -0.15903839055461674;-1.0101932857520495 0.13596975841788095 0.27718835338882336 0.09334441039669078 -0.22200661974209984 -2.3572113748492276 -0.42543987378785919 -1.4647824478238169 -1.5603719144902366 0.091163956859229026 -1.8654754643506593 1.0127205971856417 0.24312880992327668 0.27347665745051652 0.25852460241973402;0.0337249608820036 0.69982485829607932 0.90326835436827457 0.0077185164044619569 -0.15636634406887545 0.1603489932346468 -0.27258793007302418 -0.72536977922036017 0.15757322258361028 -0.88514974879609931 0.55412704955714898 -1.0835408787385927 0.72011965018619928 0.13656010769587559 -0.062304264213192101;-0.42536095548898578 -0.57665390718849086 0.77257674360471251 0.31800841590929624 0.51553720671916692 0.60824062565985315 0.34643113886171673 0.12572997979703682 1.7552938434837344 -1.1431712018779137 1.1783774962603191 -0.62710417125962636 0.52668921488998366 0.97745106628398715 -0.073341291868220845;1.0769054948067363 -0.1368144580170412 -0.85540102895183789 -0.57454047617600346 -0.15063628437435189 1.6595651739197135 -0.31338357163679292 -0.36344806574391042 1.6568065082439967 0.17995796501853453 0.14877631731451682 -0.37625479308581866 -0.29760353710158077 0.22319962765043036 0.37566235930360981;0.7889663955431554 1.2163889310930194 0.92265244345493536 -0.90289120462055694 0.024134614910772127 -0.088592517924278733 2.9512098465621155 -0.98346151857631681 -0.1455454817840148 0.42916378964453339 -0.72997172670996069 0.78953498640324915 -0.13076437852213221 2.4710843503835598 0.41822094063904791;1.2774023510454737 0.68179441870482571 -0.61290722482608606 0.27426928634958025 0.31211675482569728 0.072321472809065285 0.041457413287585537 0.15734196796333053 -0.30702835300936282 0.87052481172149265 -0.91230671679016939 -0.33238862048255491 0.02744787584881922 0.15369730675442625 -1.1702140490288171];

% Layer 3
b3 = 0.65314773053119679;
LW3_2 = [0.81050344851228362 -1.5736756382258128 -3.322741075073758 0.670928007637137 1.0780932356828898 -1.4934442175889475 -0.76485737693946476 -1.8458643888478907 -2.6773483905660864 -0.95598674884567325 -1.3711763395434833 -1.7917491595051951 -0.44000836556725109 -2.3636173793931148 -0.85446293957950059];

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
