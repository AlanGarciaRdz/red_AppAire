function [Y,Xf,Af] = COOblatos2(X,~,~)
%COOBLATOS2 neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 20-May-2016 13:56:50.
% 
% [Y] = COOblatos2(X,~,~) takes these arguments:
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
x1_step1_gain = [0.0384615384615385;0.0869565217391304;0.100381449508131;13.1578947368421;0.00618238021638331;0.0205761316872428;117.647058823529;0.0560224089635854;0.00600600600600601;0.158730158730159];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.9184998004026663;2.5660411941694141;-2.138038882232812;2.7765894096266268;-1.5859621714005383;0.72412110487478321;0.60000412322259944;-0.18064789785121563;0.0082630080000194693;0.21862723614069926;-3.3732926104674448;3.4340878630329521;-2.3985975471662302;2.1416706348244228];
IW1_1 = [-0.39351412428647764 -3.4701095989825865 -0.72273603677035558 0.27708744446669092 -0.69928236288473289 0.26576939856777004 -0.24132484580905464 -0.94940868019085023 -0.20534906922951476 -0.16720603293379113;-0.46508153905634969 1.0714793174027375 2.3873320111944034 -0.42159567542071841 1.2587414369016219 -0.12504085005497848 -0.10128809271573862 -0.38351640879806492 0.19221589558727581 0.057154722174206453;0.95684514543295351 -0.65778743636485881 -0.36181958031951356 -0.80324364311276519 0.18939278525642489 -1.0333466035617196 0.28029249974233539 -0.27103371655717923 0.45932653628431902 0.036513343424640445;1.0406596040143803 1.4325446751109612 1.0806485841232765 0.45992053941868066 -0.087494694639786513 -0.6980848921204591 -0.0048048916270749531 -1.751832991387861 -0.28235731143600634 -0.41074418661322443;0.56154709768581257 -1.4322956638377216 -0.83970670311334583 -0.80902440828915101 0.93463747962990318 -1.0975811534471192 0.052363508984515264 -0.61818114788604794 0.39271392027103202 0.20031337928628623;-0.40739450738732674 -0.089294368546944947 -3.3837836591108763 0.14779033307287803 1.2727202627437364 -0.42066851244600428 0.63785719080329661 0.97481878843686243 0.55155509564972582 0.68690442438858235;-0.89800591424796483 -0.85822303758082075 0.70866520231132268 0.33171520086807732 -0.54673860014519549 0.12504354894717296 0.069656643836698659 1.57215650395179 0.33726366211985781 0.11680921759075949;0.21146661017721557 -0.50964821725661869 -1.5171950090424713 0.22620943897237603 -0.86055710736081747 0.081625180610300857 0.57972459520629827 -0.055453974881033784 -1.0158889373647473 -0.0092977400055529076;-0.01758316960289354 4.2369603132386136 -1.635868811252843 -0.22379758809397704 -0.62442572847469091 -0.52512441926149278 0.28432361986018789 0.6023211324294917 0.043180674189170751 -0.3228859860852093;-1.1981147571517761 1.2909177271138557 1.9433707169622108 0.068982599271604772 -1.1659221608576411 -1.2991670496071877 0.31447292769924434 -0.0091398547287004049 -0.26697865162675338 -0.072103660545597192;-1.276594238884514 0.69883745854482793 -2.3519377900835923 -0.39166319967535024 0.13156371239426248 -0.13749453560025948 -0.1273652683487935 -1.0314151834443803 -0.43874985745202644 -0.31058406840329494;-0.61338342346301045 -0.47034103092424534 -0.68059242253550001 3.4897869325614344 -2.0236090710433485 0.92697765106657615 0.49999458726676582 1.0166890865403897 0.43615558486705985 0.36010977788280263;-0.62230848730511867 -1.8076090665355886 0.61083429739407713 -0.71670982577633457 1.0481255425300167 -0.41161724951066125 -0.80732276408900838 -0.15135902851770994 1.4271212137959932 0.30398340460933071;0.47402225509140072 0.76054024171819767 0.93724493131931097 -0.082130895062298329 -0.85865950180422923 0.098463040550982664 0.14910080751831725 0.34935131753703813 -0.2228916562953375 -0.74628009079935276];

% Layer 2
b2 = [1.9737597271589438;-3.4049136192480618;1.6294698264797436;-0.30885375292551548;0.66914341973859581;-0.42730265164970432;-0.47947272324020013;0.20399840159816879;0.61713484476891389;0.87790977591782071;0.29554356415118432;-1.4921821932519852;1.1589422483814931;0.82962228868193688];
LW2_1 = [0.17790035226447021 1.0359475909386795 0.95004983056079306 0.93830380263618463 -0.13609406044168298 0.044936068462322641 0.69748945965918185 0.15534054651103077 -1.3007563009003136 -0.51231293189407745 0.10888628557206229 -0.28908708865394345 0.85403871439003531 0.38453079167066062;0.52370261784392347 -0.23249165156305079 0.46581170968968566 1.2380601493311285 -1.0293803484513657 0.50734572955390866 -1.5157074608087038 -0.053989603353287355 -0.79761594273098579 -0.82231424457677604 -0.18571972525749439 2.0606747339503846 0.77214362804731573 -2.1553961790841543;-0.057658560252347467 1.8502838747169084 0.27471914110533302 0.16220907141506202 0.74491577640305251 -1.1728964427366211 1.1750484482294552 -0.35685894180319516 -0.53003706777209014 0.5444758460321969 2.0195401922059451 -1.0071639885231265 -0.30184294605243128 0.40843962195383565;0.50362649698383344 0.36937726078241606 -0.48318603747684008 -0.49469234022933206 -0.023922596083009215 -0.21538832233766445 -0.4264460531402684 -0.52677171129358724 0.99437522910498288 -0.22642549541223972 0.17052039491274393 0.3904915580269675 -0.79104799433983719 -1.1912951741204845;-0.040011110541555067 -0.19093895010630935 -0.30260319597763852 -0.35349598551585332 0.78877816351751529 -0.79268156029824832 1.0291368999142709 0.22693862715396718 0.43355168205438366 -0.16863730180833358 -0.34399177832442096 -0.31824691286754592 -0.31064795076310003 0.17946726412282876;-0.58513686675230736 -0.99909860801339401 0.20159748288088275 -0.20687018147986772 -0.541470254089227 0.37060908261494724 -0.28814995169540347 -0.08601102271979004 0.55509738790901009 0.44925657258795187 -0.043192456403814632 0.12203351240656828 0.22276436910835096 -0.18680836037457338;0.44917281139134613 1.349643776881198 -0.75905097944141853 -0.036628431632065403 0.12009901602163828 0.032883524042544778 -0.99109600797417896 0.58013643859387942 -1.5127870234682519 0.50379304103303257 -1.6902639358546345 1.0338666291798702 -0.084900013458887161 0.032162291451618155;-1.4985732289082185 2.1293565090807309 0.18177657906740927 -0.66275187186565832 -1.9706983527879387 0.069041614067295143 -0.31940267777228099 0.64799027542752907 -2.2861362449891263 -0.44728108194389088 2.2747683478184304 2.5813424883335139 0.79419409942878927 0.44553429649391652;1.1842714449227556 -1.4940164076350613 -0.77742335596636514 0.88358127774481898 -0.63967562576753645 -1.0550023349808704 -2.7882562786923599 -0.25569694657577274 -0.13287331892396392 -0.24603665978010653 -2.8176656812392791 -0.26696001180910645 0.30124148397070721 0.46918377838586756;-0.2903043571897197 -0.54003875423442038 -0.015299632582787404 -0.17015581625673279 0.52185533508038884 -0.10869275518809433 0.20270070539780669 0.28715916562093419 -1.0767103584959929 0.57187535804936274 -0.27389050448679819 -0.58569768477086592 -0.41196796623181037 0.562491553936596;0.22294311287663379 0.78345755452196542 0.18583280125149657 0.37221283267027827 0.38969268622454367 0.25936275713002976 0.35645375163868409 0.91004535626446192 -0.1084864059154878 -0.50244717452339993 0.41208113845358824 -0.38100676153640695 0.028159645340240999 0.039589413096698507;1.0138406642995115 0.78799841061017328 1.0085507511506384 -0.71428599882338983 -1.1819831817000477 -0.0014628311459900997 1.3340711158911418 0.12529670911090693 1.0130228404580746 0.59168627717839228 -0.05833665381651261 -0.85582572115843525 0.26180893790619308 0.64588451625892385;-0.83973684936503079 -0.98312971336877319 -0.33456199072345932 0.70522282937950043 0.72660472761796147 0.23381679018210139 -1.351957889802629 -0.46896120171599576 -0.75089582681091138 -0.53247044234884422 0.35734745490367925 1.2323198165750886 0.61725338031485111 0.29243737239573647;-1.1147289082332539 0.74241885972123345 -0.49635066758995955 -0.49278413403531818 -0.37351043910391413 -0.31390409765066712 -0.60878569654612047 1.1170119528758411 1.849441614558714 -0.25224081790552533 -0.25762223589809607 0.3159135470440001 -0.095849924131309369 -0.52252430942481254];

% Layer 3
b3 = -0.71884048356713726;
LW3_2 = [-1.534402045356829 -0.7152089117728333 -0.30325996118490084 -2.5834144700046906 -0.80422814320243918 -2.6611801049197319 -0.32002853604003573 -0.14761557503097023 -0.39985307798505532 -1.3411102704954323 -1.1468168340645712 -0.9243514908538496 -1.0481287805355519 0.73835756216251691];

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
