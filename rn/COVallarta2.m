function [Y,Xf,Af] = COVallarta2(X,~,~)
%COVALLARTA2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:57:19.
% 
% [Y] = COVallarta2(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.412371134020619;5.12820512820513;24.390243902439;0.02710027100271;0.00630517023959647;0.141843971631206;0.201288244766506;0.281968137600451;0.290275761973875;0.304971027752364;0.100381449508131;0.172786177105832;0.171659085057077];
x1_step1_ymin = -1;

% Layer 1
b1 = [0.24341683973578851;3.8612271964835814;0.046128874952785899;0.34190816851390127;0.92659687264210266;0.1895887273500598;-0.13595330504602815;-0.98719300055717807;-0.90872529648711986;0.046383095223213093;0.93969677652827144;-1.0687650561395932;-1.2391718787968646];
IW1_1 = [-2.9544106440667663 -0.32158603752691273 -0.25083842655034122 0.19313247242681414 -1.2740960795867591 -0.60104658398383803 0.032700559496678966 0.16477580342861511 0.14093113487228362 -1.1030458171976951 0.53542187084543436 0.058405861498673897 0.1784129521389442 -0.85174979717915411 0.77023208208580718;-0.49478308031389151 0.29597750460739813 -0.23609615125430061 1.281782029269501 0.46450262399553444 0.5043408735242576 -0.094856345439054648 0.085650206859604089 1.1619608699320345 0.52850086783827377 0.38374081032480861 0.41720900798297811 -0.43296989138643899 0.061766659851964348 -0.45567214221181612;-0.74333362087726496 0.29505116079967914 0.74051786932331976 -0.1280508207019371 -0.42783124113866322 0.3085953929297181 0.061768301911104516 0.0079068140263169606 0.72544854719675034 0.13666019155339629 -0.51032601189442484 0.091526564328057114 -0.48703683569611256 0.53124045197855352 -1.3896347601804031;2.2776034118333981 1.3322243581554365 1.3423545447854777 -1.3656023949687568 0.30571597140825535 -1.493377759154443 0.18928277925994599 -0.053288653024864838 -0.97423721322435852 -0.36350646504118261 -0.13505999526161078 0.3545499095455375 2.0674834699810796 -0.82637608430443288 0.8745946140633134;0.11063188229191656 0.15666364727193627 -1.80651272922095 1.3387111741137188 1.4585355122288439 0.47571344121978226 -0.19385161524783343 0.52410012279773777 -0.027432747997485119 -0.33814762560495054 0.39300436121124255 -0.22563201516339926 -1.350544655846639 -0.13728514719565715 -0.11954128517290429;-0.4423470962268502 1.5939851847909354 -0.27549955322926539 0.071920809135204877 0.62917855700695213 -0.56040087113923576 0.153250029666991 0.040752388936144544 -0.23642206071457006 -0.11763107006440854 0.17695174991287022 0.48243920666269735 0.68132039928988075 -0.74862984518901399 0.46976597663400227;-0.36893507598502229 0.63934725330108666 -0.16677855984772433 0.32487823905380719 -0.60904265584974537 0.24087584685444635 -0.100104289853279 0.11395985994949646 0.041706360390368312 -0.067926890894003111 -0.025539536385179709 0.07652846321974259 -0.26024027325402294 -0.14038297066362312 -0.10199932665931165;-0.94138119507028395 -0.5639734656058506 0.32338374606982756 -0.042981655213375686 -0.78059669154821842 -2.048886040278262 -0.59656725946695044 0.49492098491186798 -0.24483401117763456 -0.35373471420458258 0.14325632091576701 -0.26820555652550865 -1.088814804748365 -0.27375583866801767 0.00635938920792712;-1.0950161150233571 0.019174756576638353 -0.50563312998856758 -0.1080091473943702 -0.20295256356739808 -0.21229435764022314 -0.28186720224324019 0.72416232814680437 -0.018075010833479996 -0.30617007588697803 0.11913121763914881 0.035764089416082286 -0.89884093111685415 -0.82655143891797522 -0.2257456370502838;-0.77588022706579995 -2.1307345499204251 -1.6628088320599745 0.19294737769950096 1.207208214595874 0.40198327857806687 0.2499717263800004 -0.096128601522845136 0.72103568190062717 0.096791744795462084 -0.44028701430569961 0.59558081926750073 2.4009952486012951 -0.049273041250496884 -1.1660566144021038;0.25869963148207525 6.0751578132070954 -0.26118667891511144 -0.054435846138120185 -1.0117478164107057 -0.079713442243391872 -0.18755746780159629 0.15507244225996036 -0.51923095048725743 0.035551726839010103 -0.22785910608743926 -0.28137773714168346 -0.35457213557192679 -0.1101422764736992 0.051434825713657782;-1.6207232023647338 0.84042876571498248 0.71521499587543391 -0.18327487958117361 -1.15616075686479 -0.10747611538183097 -2.9836086816557712 -0.16500111783676058 -0.63010235149905913 -0.57131433022265043 0.54100511932900786 -0.63410826014171229 0.44727496464607969 1.1741741060362199 1.6504716302853051;-0.3054155375895839 1.4117430363960155 0.40814424658967285 0.074275920558491568 -0.57703953056698976 0.0040085064814930557 -0.17816563717279787 0.2498069896966518 -0.11942619751644171 0.13483669241254373 -0.055407009243393951 -0.094080369355205376 -0.04633771390043797 0.00068087374150057819 0.16811947511163566];

% Layer 2
b2 = [2.4988436364496023;1.9969617446880705;-0.29170555628243505;-0.38847604066574759;-0.18962843952593983;1.7238233505382952;1.850346657726508;0.71649672924749319;-0.26887119405768795;-0.31201776674293213;-1.6480983660771593;-1.8501753412972428;-0.31135918462400874];
LW2_1 = [0.053720277195275098 -0.75137246854175821 1.8582327314231188 1.7543469993661427 1.8542087673716057 0.065088018004312381 -0.64650530873344958 0.10827986409629647 -0.091192389787322525 0.40877898922236444 -0.062677865015089665 0.047969119821124409 -0.99832247004072661;-0.62211214618087107 0.92289403072107745 -1.0204727930478423 0.17625314590957064 -1.1489070617196617 -1.0695443668289213 1.6046740325652051 -0.53409000788143035 0.1046668230732699 0.2730066463384706 -1.661244089738616 0.3451172853605145 0.4326712614609538;1.6936160094977302 -0.87873018729914509 -1.1959126247251466 1.3510021636273819 -1.4316676646921442 0.96475449227644727 0.15352485129417112 0.48873629367029625 -0.092105288367637067 0.88610122663768576 -0.91713885607968637 -0.91234062938899929 1.3929944545573822;0.97396991886565609 0.66879784606305082 0.54140314951676882 0.7683323161186103 0.89484781190935159 -0.35617076785820129 -2.5542284178401555 1.0268544144028029 -1.0474964000933649 -1.4703264482937211 -0.73767270509408833 -0.11242134350795316 0.042605503719572294;1.1947551261539857 0.59830575595243063 0.30402539610813378 1.047831615821438 0.85816260849384896 -1.2865052043667695 -0.98063736505449484 -0.29038848180078114 -1.2360742085795413 -0.90822667906228438 -0.67638047563889503 -0.13468234607489063 -0.10936955770581833;-0.99382883177547532 0.40642772734423227 0.50597041323933012 1.3260169345012369 0.75464509323533147 -0.11623750966189218 0.3978673029821263 -0.56598617512573368 1.3812575264964602 -0.6432486063203342 -1.0672796351656775 0.32723707261566171 -0.86132402124159002;2.4286441907155685 -0.2334577414366138 0.68850134163674248 -0.51920600059961264 0.64295433928992696 0.78636052942527312 0.82962331008194956 0.25293082789059473 0.41946942120974312 -0.32515853643990017 -0.60688731114334737 1.9358232196441039 -1.2150920766577848;0.51816182127918053 -1.6671936397574119 0.74239178369807379 -0.23033925615199749 0.98247476530025613 0.80584227552579768 0.4130597949860485 0.94544298311434771 -0.86843158856809788 -0.058474379621849849 -0.77838659103663566 -0.35609178792160862 -0.80625480630567559;-0.76933172820195783 0.26764282949572377 -1.2322331433486118 -0.096335180599529044 -0.11445806249500221 0.96861492806499905 0.80407079304541829 -0.47770388552066312 0.46467375232094932 1.0364596404182502 -0.20644759986965017 -0.062952974759756447 -0.1324441859563425;-0.75141901999129501 0.46619373489084776 -0.22217115072065258 -0.4837749351074293 -0.72476045260322031 1.3821058627862395 -2.3176986821000911 1.6690474551576278 1.4265933931268058 -1.0987232429787752 -0.92567047631617327 0.14540104846002727 -0.074902385954817852;-0.62233629993773387 1.0266192945140167 -0.92816754403129176 0.32713815636927462 -0.54659974803081912 0.51179892843842167 1.4558592809281545 0.46953618919640405 -0.13845908487969988 0.6077703689697862 -0.34188485945339486 0.091422216694326375 -0.76424062217117328;-1.2637088777435892 -0.33586371369395329 -0.35973502050790035 0.23846784600906279 0.59773879115496731 -0.42538415024573678 -0.90011305945995013 -0.081872175065265118 -0.48271017941853556 1.0132539856025302 -0.2269315245247574 1.1472506588553426 0.32393141547668358;-0.46238813310636834 -0.28480979349172686 -0.29360950099691846 -0.033942012556890444 -0.37822308892721324 0.068588090753310904 0.78810568938599312 0.46813027053989953 0.4119648425352595 -0.47135444021714734 -1.5434162421669948 0.19725546055308313 -0.56336185037583231];

% Layer 3
b3 = -1.0090286319555424;
LW3_2 = [-2.7140658650097089 0.84264118826124623 -0.10155011790612553 -1.2060191978981372 1.0045131691061948 3.3910710459056173 0.21975906271845536 1.1687615329779861 -0.80764583527618983 0.76962236808615714 0.96690670501430542 1.5843599245508961 -1.5928127627864181];

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