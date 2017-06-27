% Código para PM10rrer todas las redes neuronales
% PronóstiPM10s de 5 parámetros en 10 estaciones

clear; clc;
addpath ("/root/rn/")

tm_struct = localtime (time ())
mes = localtime (time ()).mon
mes = mes +1
dia = localtime (time ()).mday
hora = localtime (time ()).hour
fechas = csvread('/root/rn/fechas.csv'); %archivo PM10n índices de semanas
for j=1:size(fechas,1)
    if mes==fechas(j,2)&& dia==fechas(j,4)
        semana=fechas(j,3);
    end
end



% Lectura de archivo CSV de entradas
% inlets = csvread('/root/rn/inletcsv03.csv');


%strout = strcat('PM10pron',strftime ("%d_%m_%H_%p", localtime (time ())),'.csv');

filetxt = strcat('tabla',strftime ("%d_%m_%I_%p", localtime (time ())),'.csv');

%filetxt = "tabla12_09_01_am.csv"  %file of testing

sprintf(strcat('/var/www/html/kml/Data/', tolower(filetxt)))

A = importdata(strcat('/var/www/html/kml/Data/', tolower(filetxt)));



inlets=[];
for i=1:9
    A{i+1}=strrep(A{i+1},'"','');
    A{i+1}=strrep(A{i+1},' ','');
    A{i+1}=strrep(A{i+1},'ND','0');
    B = A{i+1};
    C=str2num(B);
    inlets=[inlets;C];
end
clear A B C

% Valores de PM10 al tiempo cero
PM10zero=[inlets(5,1),inlets(5,2),inlets(5,3),inlets(5,9),inlets(5,4),...
    inlets(5,5),inlets(5,6),inlets(5,10),inlets(5,7),inlets(5,8)];

% Generación de vectores de entradas para cada parámetro
% PM10
inletPM10Aguilas=[semana;hora;inlets(2,1);inlets(5,1);inlets(7,1);...
    inlets(4,1);inlets(6,1);inlets(8,1);inlets(9,1)];
inletPM10Atemajac=[semana;hora;inlets(5,2);inlets(4,2);inlets(6,2);...
    inlets(8,2)];
inletPM10Centro=[semana;hora;inlets(3,3);inlets(2,3);inlets(5,3);...
    inlets(4,3);inlets(5,7)];
inletPM10LasPintas=[semana;hora;inlets(2,9);inlets(1,9);inlets(5,9);...
    inlets(7,9);inlets(6,9);inlets(8,9);inlets(5,6)];
inletPM10LomaDorada=[semana;hora;inlets(3,4);inlets(2,4);inlets(5,4);...
    inlets(4,4);inlets(5,7)];
inletPM10Miravalle=[semana;hora;inlets(5,5);inlets(7,5);inlets(6,5);...
    inlets(8,5)];
inletPM10Oblatos=[semana;hora;inlets(3,6);inlets(5,6);inlets(4,6);...
    inlets(6,6);inlets(5,9);inlets(5,7)];
inletPM10SantaFe=[semana;hora;inlets(3,10);inlets(2,10);inlets(5,10);...
    inlets(8,10)];
inletPM10Tlaquepaque=[semana;hora;inlets(5,7);inlets(7,7);inlets(4,7);...
    inlets(6,7);inlets(8,7);inlets(9,7);inlets(5,3);inlets(5,4);...
    inlets(5,6)];
inletPM10Vallarta=[semana;hora;inlets(2,8);inlets(5,8);inlets(4,8);...
    inlets(6,8);inlets(8,8);inlets(9,8)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Redes para PM10
% Las Águilas
pronPM10Aguilas=[PM10Aguilas1(inletPM10Aguilas);PM10Aguilas2(inletPM10Aguilas);
PM10Aguilas3(inletPM10Aguilas);PM10Aguilas4(inletPM10Aguilas);PM10Aguilas5(inletPM10Aguilas);
PM10Aguilas6(inletPM10Aguilas);PM10Aguilas7(inletPM10Aguilas);PM10Aguilas8(inletPM10Aguilas);
PM10Aguilas9(inletPM10Aguilas);PM10Aguilas10(inletPM10Aguilas);PM10Aguilas11(inletPM10Aguilas);
PM10Aguilas12(inletPM10Aguilas);PM10Aguilas13(inletPM10Aguilas);PM10Aguilas14(inletPM10Aguilas);
PM10Aguilas15(inletPM10Aguilas);PM10Aguilas16(inletPM10Aguilas);PM10Aguilas17(inletPM10Aguilas);
PM10Aguilas18(inletPM10Aguilas);PM10Aguilas19(inletPM10Aguilas);PM10Aguilas20(inletPM10Aguilas);
PM10Aguilas21(inletPM10Aguilas);PM10Aguilas22(inletPM10Aguilas);PM10Aguilas23(inletPM10Aguilas);
PM10Aguilas24(inletPM10Aguilas);PM10Aguilas48(inletPM10Aguilas)];
% Atemajac
pronPM10Atemajac=[PM10Atemajac1(inletPM10Atemajac);PM10Atemajac2(inletPM10Atemajac);
PM10Atemajac3(inletPM10Atemajac);PM10Atemajac4(inletPM10Atemajac);PM10Atemajac5(inletPM10Atemajac);
PM10Atemajac6(inletPM10Atemajac);PM10Atemajac7(inletPM10Atemajac);PM10Atemajac8(inletPM10Atemajac);
PM10Atemajac9(inletPM10Atemajac);PM10Atemajac10(inletPM10Atemajac);PM10Atemajac11(inletPM10Atemajac);
PM10Atemajac12(inletPM10Atemajac);PM10Atemajac13(inletPM10Atemajac);PM10Atemajac14(inletPM10Atemajac);
PM10Atemajac15(inletPM10Atemajac);PM10Atemajac16(inletPM10Atemajac);PM10Atemajac17(inletPM10Atemajac);
PM10Atemajac18(inletPM10Atemajac);PM10Atemajac19(inletPM10Atemajac);PM10Atemajac20(inletPM10Atemajac);
PM10Atemajac21(inletPM10Atemajac);PM10Atemajac22(inletPM10Atemajac);PM10Atemajac23(inletPM10Atemajac);
PM10Atemajac24(inletPM10Atemajac);PM10Atemajac48(inletPM10Atemajac)];
% Centro
pronPM10Centro=[PM10Centro1(inletPM10Centro);PM10Centro2(inletPM10Centro);
PM10Centro3(inletPM10Centro);PM10Centro4(inletPM10Centro);PM10Centro5(inletPM10Centro);
PM10Centro6(inletPM10Centro);PM10Centro7(inletPM10Centro);PM10Centro8(inletPM10Centro);
PM10Centro9(inletPM10Centro);PM10Centro10(inletPM10Centro);PM10Centro11(inletPM10Centro);
PM10Centro12(inletPM10Centro);PM10Centro13(inletPM10Centro);PM10Centro14(inletPM10Centro);
PM10Centro15(inletPM10Centro);PM10Centro16(inletPM10Centro);PM10Centro17(inletPM10Centro);
PM10Centro18(inletPM10Centro);PM10Centro19(inletPM10Centro);PM10Centro20(inletPM10Centro);
PM10Centro21(inletPM10Centro);PM10Centro22(inletPM10Centro);PM10Centro23(inletPM10Centro);
PM10Centro24(inletPM10Centro);PM10Centro48(inletPM10Centro)];
% Las Pintas
pronPM10LasPintas=[PM10LasPintas1(inletPM10LasPintas);PM10LasPintas2(inletPM10LasPintas);
PM10LasPintas3(inletPM10LasPintas);PM10LasPintas4(inletPM10LasPintas);PM10LasPintas5(inletPM10LasPintas);
PM10LasPintas6(inletPM10LasPintas);PM10LasPintas7(inletPM10LasPintas);PM10LasPintas8(inletPM10LasPintas);
PM10LasPintas9(inletPM10LasPintas);PM10LasPintas10(inletPM10LasPintas);PM10LasPintas11(inletPM10LasPintas);
PM10LasPintas12(inletPM10LasPintas);PM10LasPintas13(inletPM10LasPintas);PM10LasPintas14(inletPM10LasPintas);
PM10LasPintas15(inletPM10LasPintas);PM10LasPintas16(inletPM10LasPintas);PM10LasPintas17(inletPM10LasPintas);
PM10LasPintas18(inletPM10LasPintas);PM10LasPintas19(inletPM10LasPintas);PM10LasPintas20(inletPM10LasPintas);
PM10LasPintas21(inletPM10LasPintas);PM10LasPintas22(inletPM10LasPintas);PM10LasPintas23(inletPM10LasPintas);
PM10LasPintas24(inletPM10LasPintas);PM10LasPintas48(inletPM10LasPintas)];
% Loma Dorada
pronPM10LomaDorada=[PM10LomaDorada1(inletPM10LomaDorada);PM10LomaDorada2(inletPM10LomaDorada);
PM10LomaDorada3(inletPM10LomaDorada);PM10LomaDorada4(inletPM10LomaDorada);PM10LomaDorada5(inletPM10LomaDorada);
PM10LomaDorada6(inletPM10LomaDorada);PM10LomaDorada7(inletPM10LomaDorada);PM10LomaDorada8(inletPM10LomaDorada);
PM10LomaDorada9(inletPM10LomaDorada);PM10LomaDorada10(inletPM10LomaDorada);PM10LomaDorada11(inletPM10LomaDorada);
PM10LomaDorada12(inletPM10LomaDorada);PM10LomaDorada13(inletPM10LomaDorada);PM10LomaDorada14(inletPM10LomaDorada);
PM10LomaDorada15(inletPM10LomaDorada);PM10LomaDorada16(inletPM10LomaDorada);PM10LomaDorada17(inletPM10LomaDorada);
PM10LomaDorada18(inletPM10LomaDorada);PM10LomaDorada19(inletPM10LomaDorada);PM10LomaDorada20(inletPM10LomaDorada);
PM10LomaDorada21(inletPM10LomaDorada);PM10LomaDorada22(inletPM10LomaDorada);PM10LomaDorada23(inletPM10LomaDorada);
PM10LomaDorada24(inletPM10LomaDorada);PM10LomaDorada48(inletPM10LomaDorada)];
% Miravalle
pronPM10Miravalle=[PM10Miravalle1(inletPM10Miravalle);PM10Miravalle2(inletPM10Miravalle);
PM10Miravalle3(inletPM10Miravalle);PM10Miravalle4(inletPM10Miravalle);PM10Miravalle5(inletPM10Miravalle);
PM10Miravalle6(inletPM10Miravalle);PM10Miravalle7(inletPM10Miravalle);PM10Miravalle8(inletPM10Miravalle);
PM10Miravalle9(inletPM10Miravalle);PM10Miravalle10(inletPM10Miravalle);PM10Miravalle11(inletPM10Miravalle);
PM10Miravalle12(inletPM10Miravalle);PM10Miravalle13(inletPM10Miravalle);PM10Miravalle14(inletPM10Miravalle);
PM10Miravalle15(inletPM10Miravalle);PM10Miravalle16(inletPM10Miravalle);PM10Miravalle17(inletPM10Miravalle);
PM10Miravalle18(inletPM10Miravalle);PM10Miravalle19(inletPM10Miravalle);PM10Miravalle20(inletPM10Miravalle);
PM10Miravalle21(inletPM10Miravalle);PM10Miravalle22(inletPM10Miravalle);PM10Miravalle23(inletPM10Miravalle);
PM10Miravalle24(inletPM10Miravalle);PM10Miravalle48(inletPM10Miravalle)];
% Oblatos
pronPM10Oblatos=[PM10Oblatos1(inletPM10Oblatos);PM10Oblatos2(inletPM10Oblatos);
PM10Oblatos3(inletPM10Oblatos);PM10Oblatos4(inletPM10Oblatos);PM10Oblatos5(inletPM10Oblatos);
PM10Oblatos6(inletPM10Oblatos);PM10Oblatos7(inletPM10Oblatos);PM10Oblatos8(inletPM10Oblatos);
PM10Oblatos9(inletPM10Oblatos);PM10Oblatos10(inletPM10Oblatos);PM10Oblatos11(inletPM10Oblatos);
PM10Oblatos12(inletPM10Oblatos);PM10Oblatos13(inletPM10Oblatos);PM10Oblatos14(inletPM10Oblatos);
PM10Oblatos15(inletPM10Oblatos);PM10Oblatos16(inletPM10Oblatos);PM10Oblatos17(inletPM10Oblatos);
PM10Oblatos18(inletPM10Oblatos);PM10Oblatos19(inletPM10Oblatos);PM10Oblatos20(inletPM10Oblatos);
PM10Oblatos21(inletPM10Oblatos);PM10Oblatos22(inletPM10Oblatos);PM10Oblatos23(inletPM10Oblatos);
PM10Oblatos24(inletPM10Oblatos);PM10Oblatos48(inletPM10Oblatos)];
% Santa Fé
pronPM10SantaFe=[PM10SantaFe1(inletPM10SantaFe);PM10SantaFe2(inletPM10SantaFe);
PM10SantaFe3(inletPM10SantaFe);PM10SantaFe4(inletPM10SantaFe);PM10SantaFe5(inletPM10SantaFe);
PM10SantaFe6(inletPM10SantaFe);PM10SantaFe7(inletPM10SantaFe);PM10SantaFe8(inletPM10SantaFe);
PM10SantaFe9(inletPM10SantaFe);PM10SantaFe10(inletPM10SantaFe);PM10SantaFe11(inletPM10SantaFe);
PM10SantaFe12(inletPM10SantaFe);PM10SantaFe13(inletPM10SantaFe);PM10SantaFe14(inletPM10SantaFe);
PM10SantaFe15(inletPM10SantaFe);PM10SantaFe16(inletPM10SantaFe);PM10SantaFe17(inletPM10SantaFe);
PM10SantaFe18(inletPM10SantaFe);PM10SantaFe19(inletPM10SantaFe);PM10SantaFe20(inletPM10SantaFe);
PM10SantaFe21(inletPM10SantaFe);PM10SantaFe22(inletPM10SantaFe);PM10SantaFe23(inletPM10SantaFe);
PM10SantaFe24(inletPM10SantaFe);PM10SantaFe48(inletPM10SantaFe)];
% Tlaquepaque
pronPM10Tlaquepaque=[PM10Tlaquepaque1(inletPM10Tlaquepaque);PM10Tlaquepaque2(inletPM10Tlaquepaque);
PM10Tlaquepaque3(inletPM10Tlaquepaque);PM10Tlaquepaque4(inletPM10Tlaquepaque);PM10Tlaquepaque5(inletPM10Tlaquepaque);
PM10Tlaquepaque6(inletPM10Tlaquepaque);PM10Tlaquepaque7(inletPM10Tlaquepaque);PM10Tlaquepaque8(inletPM10Tlaquepaque);
PM10Tlaquepaque9(inletPM10Tlaquepaque);PM10Tlaquepaque10(inletPM10Tlaquepaque);PM10Tlaquepaque11(inletPM10Tlaquepaque);
PM10Tlaquepaque12(inletPM10Tlaquepaque);PM10Tlaquepaque13(inletPM10Tlaquepaque);PM10Tlaquepaque14(inletPM10Tlaquepaque);
PM10Tlaquepaque15(inletPM10Tlaquepaque);PM10Tlaquepaque16(inletPM10Tlaquepaque);PM10Tlaquepaque17(inletPM10Tlaquepaque);
PM10Tlaquepaque18(inletPM10Tlaquepaque);PM10Tlaquepaque19(inletPM10Tlaquepaque);PM10Tlaquepaque20(inletPM10Tlaquepaque);
PM10Tlaquepaque21(inletPM10Tlaquepaque);PM10Tlaquepaque22(inletPM10Tlaquepaque);PM10Tlaquepaque23(inletPM10Tlaquepaque);
PM10Tlaquepaque24(inletPM10Tlaquepaque);PM10Tlaquepaque48(inletPM10Tlaquepaque)];
% Vallarta
pronPM10Vallarta=[PM10Vallarta1(inletPM10Vallarta);PM10Vallarta2(inletPM10Vallarta);
PM10Vallarta3(inletPM10Vallarta);PM10Vallarta4(inletPM10Vallarta);PM10Vallarta5(inletPM10Vallarta);
PM10Vallarta6(inletPM10Vallarta);PM10Vallarta7(inletPM10Vallarta);PM10Vallarta8(inletPM10Vallarta);
PM10Vallarta9(inletPM10Vallarta);PM10Vallarta10(inletPM10Vallarta);PM10Vallarta11(inletPM10Vallarta);
PM10Vallarta12(inletPM10Vallarta);PM10Vallarta13(inletPM10Vallarta);PM10Vallarta14(inletPM10Vallarta);
PM10Vallarta15(inletPM10Vallarta);PM10Vallarta16(inletPM10Vallarta);PM10Vallarta17(inletPM10Vallarta);
PM10Vallarta18(inletPM10Vallarta);PM10Vallarta19(inletPM10Vallarta);PM10Vallarta20(inletPM10Vallarta);
PM10Vallarta21(inletPM10Vallarta);PM10Vallarta22(inletPM10Vallarta);PM10Vallarta23(inletPM10Vallarta);
PM10Vallarta24(inletPM10Vallarta);PM10Vallarta48(inletPM10Vallarta)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Corrección PM10 filtro de Kalman
%Las Águilas
% QRPX.Q = csvread('/root/rn/QPM10agu.csv'); QRPX.R = csvread('/root/rn/RPM10agu.csv');       
% QRPX.P = csvread('/root/rn/PPM10agu.csv'); QRPX.X = csvread('/root/rn/XPM10agu.csv');      
% [pronPM10Kal,PPM10,XPM10]=kalman(inlets(3,1),pronPM10Aguilas,QRPX);
% csvwrite('PPM10agu.csv',PPM10); csvwrite('XPM10agu.csv',XPM10);
% PM10final(:,1)=[PM10zero(1);pronPM10Kal(1:3);pronPM10Aguilas(4:24)]; c/kalman
PM10final(:,1)=[PM10zero(1);pronPM10Aguilas(1:24)];  %s/kalman

%Atemajac
% QRPX.Q = csvread('/root/rn/QPM10atm.csv'); QRPX.R = csvread('/root/rn/RPM10atm.csv');       
% QRPX.P = csvread('/root/rn/PPM10atm.csv'); QRPX.X = csvread('/root/rn/XPM10atm.csv');      
% [pronPM10Kal,PPM10,XPM10]=kalman(inlets(3,2),pronPM10Atemajac,QRPX);
% csvwrite('PPM10atm.csv',PPM10); csvwrite('XPM10atm.csv',XPM10);
% PM10final(:,2)=[PM10zero(2);pronPM10Kal(1:3);pronPM10Atemajac(4:24)];
PM10final(:,2)=[PM10zero(2);pronPM10Atemajac(1:24)];

%Centro
% QRPX.Q = csvread('/root/rn/QPM10cen.csv'); QRPX.R = csvread('/root/rn/RPM10cen.csv');       
% QRPX.P = csvread('/root/rn/PPM10cen.csv'); QRPX.X = csvread('/root/rn/XPM10cen.csv');      
% [pronPM10Kal,PPM10,XPM10]=kalman(inlets(3,3),pronPM10Centro,QRPX);
% csvwrite('PPM10cen.csv',PPM10); csvwrite('XPM10cen.csv',XPM10);
% PM10final(:,3)=[PM10zero(3);pronPM10Kal(1:3);pronPM10Centro(4:24)];
PM10final(:,3)=[PM10zero(3);pronPM10Centro(1:24)];

%Las Pintas
% QRPX.Q = csvread('/root/rn/QPM10lpin.csv'); QRPX.R = csvread('/root/rn/RPM10lpin.csv');       
% QRPX.P = csvread('/root/rn/PPM10lpin.csv'); QRPX.X = csvread('/root/rn/XPM10lpin.csv');      
% [pronPM10Kal,PPM10,XPM10]=kalman(inlets(3,9),pronPM10LasPintas,QRPX);
% csvwrite('PPM10lpin.csv',PPM10); csvwrite('XPM10lpin.csv',XPM10);
% PM10final(:,4)=[PM10zero(4);pronPM10Kal(1:3);pronPM10LasPintas(4:24)];
PM10final(:,4)=[PM10zero(4);pronPM10LasPintas(1:24)];

%Loma Dorada
% QRPX.Q = csvread('/root/rn/QPM10ldo.csv'); QRPX.R = csvread('/root/rn/RPM10ldo.csv');       
% QRPX.P = csvread('/root/rn/PPM10ldo.csv'); QRPX.X = csvread('/root/rn/XPM10ldo.csv');      
% [pronPM10Kal,PPM10,XPM10]=kalman(inlets(3,4),pronPM10LomaDorada,QRPX);
% csvwrite('PPM10ldo.csv',PPM10); csvwrite('XPM10ldo.csv',XPM10);
% PM10final(:,5)=[PM10zero(5);pronPM10Kal(1:3);pronPM10LomaDorada(4:24)];
PM10final(:,5)=[PM10zero(5);pronPM10LomaDorada(1:24)];

%Miravalle
% QRPX.Q = csvread('/root/rn/QPM10mir.csv'); QRPX.R = csvread('/root/rn/RPM10mir.csv');       
% QRPX.P = csvread('/root/rn/PPM10mir.csv'); QRPX.X = csvread('/root/rn/XPM10mir.csv');      
% [pronPM10Kal,PPM10,XPM10]=kalman(inlets(3,5),pronPM10Miravalle,QRPX);
% csvwrite('PPM10mir.csv',PPM10); csvwrite('XPM10mir.csv',XPM10);
% PM10final(:,6)=[PM10zero(6);pronPM10Kal(1:3);pronPM10Miravalle(4:24)];
PM10final(:,6)=[PM10zero(6);pronPM10Miravalle(1:24)];

%Oblatos
% QRPX.Q = csvread('/root/rn/QPM10obl.csv'); QRPX.R = csvread('/root/rn/RPM10obl.csv');       
% QRPX.P = csvread('/root/rn/PPM10obl.csv'); QRPX.X = csvread('/root/rn/XPM10obl.csv');      
% [pronPM10Kal,PPM10,XPM10]=kalman(inlets(3,6),pronPM10Oblatos,QRPX);
% csvwrite('PPM10obl.csv',PPM10); csvwrite('XPM10obl.csv',XPM10);
% PM10final(:,7)=[PM10zero(7);pronPM10Kal(1:3);pronPM10Oblatos(4:24)];
PM10final(:,7)=[PM10zero(7);pronPM10Oblatos(1:24)];

%Santa Fé
% QRPX.Q = csvread('/root/rn/QPM10sfe.csv'); QRPX.R = csvread('/root/rn/RPM10sfe.csv');       
% QRPX.P = csvread('/root/rn/PPM10sfe.csv'); QRPX.X = csvread('/root/rn/XPM10sfe.csv');      
% [pronPM10Kal,PPM10,XPM10]=kalman(inlets(3,10),pronPM10SantaFe,QRPX);
% csvwrite('PPM10sfe.csv',PPM10); csvwrite('XPM10sfe.csv',XPM10);
% PM10final(:,8)=[PM10zero(8);pronPM10Kal(1:3);pronPM10SantaFe(4:24)];
PM10final(:,8)=[PM10zero(8);pronPM10SantaFe(1:24)];

%Tlaquepaque
% QRPX.Q = csvread('/root/rn/QPM10tla.csv'); QRPX.R = csvread('/root/rn/RPM10tla.csv');       
% QRPX.P = csvread('/root/rn/PPM10tla.csv'); QRPX.X = csvread('/root/rn/XPM10tla.csv');      
% [pronPM10Kal,PPM10,XPM10]=kalman(inlets(3,7),pronPM10Tlaquepaque,QRPX);
% csvwrite('PPM10tla.csv',PPM10); csvwrite('XPM10tla.csv',XPM10);
% PM10final(:,9)=[PM10zero(9);pronPM10Kal(1:3);pronPM10Tlaquepaque(4:24)];
PM10final(:,9)=[PM10zero(9);pronPM10Tlaquepaque(1:24)];

%Vallarta
% QRPX.Q = csvread('/root/rn/QPM10val.csv'); QRPX.R = csvread('/root/rn/RPM10val.csv');       
% QRPX.P = csvread('/root/rn/PPM10val.csv'); QRPX.X = csvread('/root/rn/XPM10val.csv');      
% [pronPM10Kal,PPM10,XPM10]=kalman(inlets(3,8),pronPM10Vallarta,QRPX);
% csvwrite('PPM10val.csv',PPM10); csvwrite('XPM10val.csv',XPM10);
% PM10final(:,10)=[PM10zero(10);pronPM10Kal(1:3);pronPM10Vallarta(4:24)];
PM10final(:,10)=[PM10zero(10);pronPM10Vallarta(1:24)];

%Archivo de Salida
%csvwrite('PM10pron.csv',PM10final);

strout = strcat('PM10pron',strftime ("%d_%m_%Y_%H_%p", localtime (time ())),'.csv');
csvwrite(strcat('/var/www/html/kml/resultrn/',strout),PM10final);

