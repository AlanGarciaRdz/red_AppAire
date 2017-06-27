% Cdigo para O3rrer todas las redes neuronales
% PronstiO3s de Ozono en 10 estaciones

clear; clc;
% Buscar nmero de semana a partir de la fecha
now = csvread('now.csv');       %archivo O3n la fecha actual
mes=now(1); dia=now(2); hora=now(3);
fechas = csvread('fechas.csv'); %archivo O3n ndices de semanas
for j=1:size(fechas,1)
    if mes==fechas(j,2)&& dia==fechas(j,4)
        semana=fechas(j,3);
    end
end

% Lectura de archivo CSV de entradas
inlets = csvread('inletcsv03.csv');

% Generacin de vectores de entradas para cada parmetro
% O3
inletO3Aguilas=[hora;semana;inlets(2,1);inlets(4,1);inlets(6,1);...
    inlets(8,1);inlets(1,1)];
inletO3Atemajac=[hora;semana;inlets(3,2);inlets(2,2);inlets(4,2);...
    inlets(6,2);inlets(8,2);inlets(1,2)];
inletO3Centro=[hora;semana;inlets(3,3);inlets(2,3);inlets(4,3);...
    inlets(1,3)];
inletO3LasPintas=[hora;semana;inlets(3,9);inlets(2,9);inlets(5,9);...
    inlets(4,9);inlets(9,9);inlets(1,9)];
inletO3LomaDorada=[hora;semana;inlets(3,4);inlets(2,4);inlets(5,4);...
    inlets(4,4);inlets(1,4)];
inletO3Miravalle=[hora;semana;inlets(3,5);inlets(2,5);inlets(6,5);...
    inlets(8,5);inlets(1,5)];
inletO3Oblatos=[hora;semana;inlets(3,6);inlets(4,6);inlets(6,6);...
    inlets(1,6)];
inletO3SantaFe=[hora;semana;inlets(3,10);inlets(2,10);inlets(1,10)];
inletO3Tlaquepaque=[hora;semana;inlets(3,7);inlets(2,7);inlets(1,9);...
    inlets(1,5);inlets(1,10);inlets(1,8);inlets(7,7);inlets(4,7);...
    inlets(6,7);inlets(8,7);inlets(1,7)];
inletO3Vallarta=[hora;semana;inlets(2,8);inlets(4,8);inlets(6,8);...
    inlets(9,8);inlets(1,8)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Redes para O3
% Las guilas
pronO3Aguilas=[O3aguilas1(inletO3Aguilas);O3aguilas2(inletO3Aguilas);
O3aguilas3(inletO3Aguilas);O3aguilas4(inletO3Aguilas);O3aguilas5(inletO3Aguilas);
O3aguilas6(inletO3Aguilas);O3aguilas7(inletO3Aguilas);O3aguilas8(inletO3Aguilas);
O3aguilas9(inletO3Aguilas);O3aguilas10(inletO3Aguilas);O3aguilas11(inletO3Aguilas);
O3aguilas12(inletO3Aguilas);O3aguilas13(inletO3Aguilas);O3aguilas14(inletO3Aguilas);
O3aguilas15(inletO3Aguilas);O3aguilas16(inletO3Aguilas);O3aguilas17(inletO3Aguilas);
O3aguilas18(inletO3Aguilas);O3aguilas19(inletO3Aguilas);O3aguilas20(inletO3Aguilas);
O3aguilas21(inletO3Aguilas);O3aguilas22(inletO3Aguilas);O3aguilas23(inletO3Aguilas);
O3aguilas24(inletO3Aguilas);O3aguilas48(inletO3Aguilas)];
% Atemajac
pronO3Atemajac=[O3atemajac1(inletO3Atemajac);O3atemajac2(inletO3Atemajac);
O3atemajac3(inletO3Atemajac);O3atemajac4(inletO3Atemajac);O3atemajac5(inletO3Atemajac);
O3atemajac6(inletO3Atemajac);O3atemajac7(inletO3Atemajac);O3atemajac8(inletO3Atemajac);
O3atemajac9(inletO3Atemajac);O3atemajac10(inletO3Atemajac);O3atemajac11(inletO3Atemajac);
O3atemajac12(inletO3Atemajac);O3atemajac13(inletO3Atemajac);O3atemajac14(inletO3Atemajac);
O3atemajac15(inletO3Atemajac);O3atemajac16(inletO3Atemajac);O3atemajac17(inletO3Atemajac);
O3atemajac18(inletO3Atemajac);O3atemajac19(inletO3Atemajac);O3atemajac20(inletO3Atemajac);
O3atemajac21(inletO3Atemajac);O3atemajac22(inletO3Atemajac);O3atemajac23(inletO3Atemajac);
O3atemajac24(inletO3Atemajac);O3atemajac48(inletO3Atemajac)];
% Centro
pronO3Centro=[O3centro1(inletO3Centro);O3centro2(inletO3Centro);
O3centro3(inletO3Centro);O3centro4(inletO3Centro);O3centro5(inletO3Centro);
O3centro6(inletO3Centro);O3centro7(inletO3Centro);O3centro8(inletO3Centro);
O3centro9(inletO3Centro);O3centro10(inletO3Centro);O3centro11(inletO3Centro);
O3centro12(inletO3Centro);O3centro13(inletO3Centro);O3centro14(inletO3Centro);
O3centro15(inletO3Centro);O3centro16(inletO3Centro);O3centro17(inletO3Centro);
O3centro18(inletO3Centro);O3centro19(inletO3Centro);O3centro20(inletO3Centro);
O3centro21(inletO3Centro);O3centro22(inletO3Centro);O3centro23(inletO3Centro);
O3centro24(inletO3Centro);O3centro48(inletO3Centro)];
% Las Pintas
pronO3LasPintas=[O3laspintas1(inletO3LasPintas);O3laspintas2(inletO3LasPintas);
O3laspintas3(inletO3LasPintas);O3laspintas4(inletO3LasPintas);O3laspintas5(inletO3LasPintas);
O3laspintas6(inletO3LasPintas);O3laspintas7(inletO3LasPintas);O3laspintas8(inletO3LasPintas);
O3laspintas9(inletO3LasPintas);O3laspintas10(inletO3LasPintas);O3laspintas11(inletO3LasPintas);
O3laspintas12(inletO3LasPintas);O3laspintas13(inletO3LasPintas);O3laspintas14(inletO3LasPintas);
O3laspintas15(inletO3LasPintas);O3laspintas16(inletO3LasPintas);O3laspintas17(inletO3LasPintas);
O3laspintas18(inletO3LasPintas);O3laspintas19(inletO3LasPintas);O3laspintas20(inletO3LasPintas);
O3laspintas21(inletO3LasPintas);O3laspintas22(inletO3LasPintas);O3laspintas23(inletO3LasPintas);
O3laspintas24(inletO3LasPintas);O3laspintas48(inletO3LasPintas)];
% Loma Dorada
pronO3LomaDorada=[O3lomadorada1(inletO3LomaDorada);O3lomadorada2(inletO3LomaDorada);
O3lomadorada3(inletO3LomaDorada);O3lomadorada4(inletO3LomaDorada);O3lomadorada5(inletO3LomaDorada);
O3lomadorada6(inletO3LomaDorada);O3lomadorada7(inletO3LomaDorada);O3lomadorada8(inletO3LomaDorada);
O3lomadorada9(inletO3LomaDorada);O3lomadorada10(inletO3LomaDorada);O3lomadorada11(inletO3LomaDorada);
O3lomadorada12(inletO3LomaDorada);O3lomadorada13(inletO3LomaDorada);O3lomadorada14(inletO3LomaDorada);
O3lomadorada15(inletO3LomaDorada);O3lomadorada16(inletO3LomaDorada);O3lomadorada17(inletO3LomaDorada);
O3lomadorada18(inletO3LomaDorada);O3lomadorada19(inletO3LomaDorada);O3lomadorada20(inletO3LomaDorada);
O3lomadorada21(inletO3LomaDorada);O3lomadorada22(inletO3LomaDorada);O3lomadorada23(inletO3LomaDorada);
O3lomadorada24(inletO3LomaDorada);O3lomadorada48(inletO3LomaDorada)];
% Miravalle
pronO3Miravalle=[O3miravalle1(inletO3Miravalle);O3miravalle2(inletO3Miravalle);
O3miravalle3(inletO3Miravalle);O3miravalle4(inletO3Miravalle);O3miravalle5(inletO3Miravalle);
O3miravalle6(inletO3Miravalle);O3miravalle7(inletO3Miravalle);O3miravalle8(inletO3Miravalle);
O3miravalle9(inletO3Miravalle);O3miravalle10(inletO3Miravalle);O3miravalle11(inletO3Miravalle);
O3miravalle12(inletO3Miravalle);O3miravalle13(inletO3Miravalle);O3miravalle14(inletO3Miravalle);
O3miravalle15(inletO3Miravalle);O3miravalle16(inletO3Miravalle);O3miravalle17(inletO3Miravalle);
O3miravalle18(inletO3Miravalle);O3miravalle19(inletO3Miravalle);O3miravalle20(inletO3Miravalle);
O3miravalle21(inletO3Miravalle);O3miravalle22(inletO3Miravalle);O3miravalle23(inletO3Miravalle);
O3miravalle24(inletO3Miravalle);O3miravalle48(inletO3Miravalle)];
% Oblatos
pronO3Oblatos=[O3oblatos1(inletO3Oblatos);O3oblatos2(inletO3Oblatos);
O3oblatos3(inletO3Oblatos);O3oblatos4(inletO3Oblatos);O3oblatos5(inletO3Oblatos);
O3oblatos6(inletO3Oblatos);O3oblatos7(inletO3Oblatos);O3oblatos8(inletO3Oblatos);
O3oblatos9(inletO3Oblatos);O3oblatos10(inletO3Oblatos);O3oblatos11(inletO3Oblatos);
O3oblatos12(inletO3Oblatos);O3oblatos13(inletO3Oblatos);O3oblatos14(inletO3Oblatos);
O3oblatos15(inletO3Oblatos);O3oblatos16(inletO3Oblatos);O3oblatos17(inletO3Oblatos);
O3oblatos18(inletO3Oblatos);O3oblatos19(inletO3Oblatos);O3oblatos20(inletO3Oblatos);
O3oblatos21(inletO3Oblatos);O3oblatos22(inletO3Oblatos);O3oblatos23(inletO3Oblatos);
O3oblatos24(inletO3Oblatos);O3oblatos48(inletO3Oblatos)];
% Santa F
pronO3SantaFe=[O3santafe1(inletO3SantaFe);O3santafe2(inletO3SantaFe);
O3santafe3(inletO3SantaFe);O3santafe4(inletO3SantaFe);O3santafe5(inletO3SantaFe);
O3santafe6(inletO3SantaFe);O3santafe7(inletO3SantaFe);O3santafe8(inletO3SantaFe);
O3santafe9(inletO3SantaFe);O3santafe10(inletO3SantaFe);O3santafe11(inletO3SantaFe);
O3santafe12(inletO3SantaFe);O3santafe13(inletO3SantaFe);O3santafe14(inletO3SantaFe);
O3santafe15(inletO3SantaFe);O3santafe16(inletO3SantaFe);O3santafe17(inletO3SantaFe);
O3santafe18(inletO3SantaFe);O3santafe19(inletO3SantaFe);O3santafe20(inletO3SantaFe);
O3santafe21(inletO3SantaFe);O3santafe22(inletO3SantaFe);O3santafe23(inletO3SantaFe);
O3santafe24(inletO3SantaFe);O3santafe48(inletO3SantaFe)];
% Tlaquepaque
pronO3Tlaquepaque=[O3tlaquepaque1(inletO3Tlaquepaque);O3tlaquepaque2(inletO3Tlaquepaque);
O3tlaquepaque3(inletO3Tlaquepaque);O3tlaquepaque4(inletO3Tlaquepaque);O3tlaquepaque5(inletO3Tlaquepaque);
O3tlaquepaque6(inletO3Tlaquepaque);O3tlaquepaque7(inletO3Tlaquepaque);O3tlaquepaque8(inletO3Tlaquepaque);
O3tlaquepaque9(inletO3Tlaquepaque);O3tlaquepaque10(inletO3Tlaquepaque);O3tlaquepaque11(inletO3Tlaquepaque);
O3tlaquepaque12(inletO3Tlaquepaque);O3tlaquepaque13(inletO3Tlaquepaque);O3tlaquepaque14(inletO3Tlaquepaque);
O3tlaquepaque15(inletO3Tlaquepaque);O3tlaquepaque16(inletO3Tlaquepaque);O3tlaquepaque17(inletO3Tlaquepaque);
O3tlaquepaque18(inletO3Tlaquepaque);O3tlaquepaque19(inletO3Tlaquepaque);O3tlaquepaque20(inletO3Tlaquepaque);
O3tlaquepaque21(inletO3Tlaquepaque);O3tlaquepaque22(inletO3Tlaquepaque);O3tlaquepaque23(inletO3Tlaquepaque);
O3tlaquepaque24(inletO3Tlaquepaque);O3tlaquepaque48(inletO3Tlaquepaque)];
% Vallarta
pronO3Vallarta=[O3vallarta1(inletO3Vallarta);O3vallarta2(inletO3Vallarta);
O3vallarta3(inletO3Vallarta);O3vallarta4(inletO3Vallarta);O3vallarta5(inletO3Vallarta);
O3vallarta6(inletO3Vallarta);O3vallarta7(inletO3Vallarta);O3vallarta8(inletO3Vallarta);
O3vallarta9(inletO3Vallarta);O3vallarta10(inletO3Vallarta);O3vallarta11(inletO3Vallarta);
O3vallarta12(inletO3Vallarta);O3vallarta13(inletO3Vallarta);O3vallarta14(inletO3Vallarta);
O3vallarta15(inletO3Vallarta);O3vallarta16(inletO3Vallarta);O3vallarta17(inletO3Vallarta);
O3vallarta18(inletO3Vallarta);O3vallarta19(inletO3Vallarta);O3vallarta20(inletO3Vallarta);
O3vallarta21(inletO3Vallarta);O3vallarta22(inletO3Vallarta);O3vallarta23(inletO3Vallarta);
O3vallarta24(inletO3Vallarta);O3vallarta48(inletO3Vallarta)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% O3rreccin O3n filtro de Kalman
%Las guilas
QRPX.Q = csvread('QO3agu.csv'); QRPX.R = csvread('RO3agu.csv');       
%QRPX.P = csvread('PO3agu.csv'); QRPX.X = csvread('XO3agu.csv');      
QRPX.P=eye(25)*5;
QRPX.X=ones(25,1);              %Quitar esta lnea cuando se genere P y X
[pronO3Kal,PO3,XO3]=kalman(inlets(1,1),pronO3Aguilas,QRPX);
csvwrite('PO3agu.csv',PO3); csvwrite('XO3agu.csv',XO3);
O3final(:,1)=pronO3Kal;
%Atemajac
QRPX.Q = csvread('QO3atm.csv'); QRPX.R = csvread('RO3atm.csv');       
%QRPX.P = csvread('PO3atm.csv'); QRPX.X = csvread('XO3atm.csv');      
QRPX.P=eye(25)*5;
QRPX.X=ones(25,1);              %Quitar esta lnea cuando se genere P y X
[pronO3Kal,PO3,XO3]=kalman(inlets(1,2),pronO3Atemajac,QRPX);
csvwrite('PO3atm.csv',PO3); csvwrite('XO3atm.csv',XO3);
O3final(:,2)=pronO3Kal;
%Centro
QRPX.Q = csvread('QO3cen.csv'); QRPX.R = csvread('RO3cen.csv');       
%QRPX.P = csvread('PO3cen.csv'); QRPX.X = csvread('XO3cen.csv');      
QRPX.P=eye(25)*5;
QRPX.X=ones(25,1);              %Quitar esta lnea cuando se genere P y X
[pronO3Kal,PO3,XO3]=kalman(inlets(1,3),pronO3Atemajac,QRPX);
csvwrite('PO3cen.csv',PO3); csvwrite('XO3cen.csv',XO3);
O3final(:,3)=pronO3Kal;
%Las Pintas
QRPX.Q = csvread('QO3lpin.csv'); QRPX.R = csvread('RO3lpin.csv');       
%QRPX.P = csvread('PO3lpin.csv'); QRPX.X = csvread('XO3lpin.csv');      
QRPX.P=eye(25)*5;
QRPX.X=ones(25,1);              %Quitar esta lnea cuando se genere P y X
[pronO3Kal,PO3,XO3]=kalman(inlets(1,9),pronO3Atemajac,QRPX);
csvwrite('PO3lpin.csv',PO3); csvwrite('XO3lpin.csv',XO3);
O3final(:,4)=pronO3Kal;
%Loma Dorada
QRPX.Q = csvread('QO3ldo.csv'); QRPX.R = csvread('RO3ldo.csv');       
%QRPX.P = csvread('PO3ldo.csv'); QRPX.X = csvread('XO3ldo.csv');      
QRPX.P=eye(25)*5;
QRPX.X=ones(25,1);              %Quitar esta lnea cuando se genere P y X
[pronO3Kal,PO3,XO3]=kalman(inlets(1,4),pronO3Atemajac,QRPX);
csvwrite('PO3ldo.csv',PO3); csvwrite('XO3ldo.csv',XO3);
O3final(:,5)=pronO3Kal;
%Miravalle
QRPX.Q = csvread('QO3mir.csv'); QRPX.R = csvread('RO3mir.csv');       
%QRPX.P = csvread('PO3mir.csv'); QRPX.X = csvread('XO3mir.csv');      
QRPX.P=eye(25)*5;
QRPX.X=ones(25,1);              %Quitar esta lnea cuando se genere P y X
[pronO3Kal,PO3,XO3]=kalman(inlets(1,5),pronO3Atemajac,QRPX);
csvwrite('PO3mir.csv',PO3); csvwrite('XO3mir.csv',XO3);
O3final(:,6)=pronO3Kal;
%Oblatos
QRPX.Q = csvread('QO3obl.csv'); QRPX.R = csvread('RO3obl.csv');       
%QRPX.P = csvread('PO3obl.csv'); QRPX.X = csvread('XO3obl.csv');      
QRPX.P=eye(25)*5;
QRPX.X=ones(25,1);              %Quitar esta lnea cuando se genere P y X
[pronO3Kal,PO3,XO3]=kalman(inlets(1,6),pronO3Atemajac,QRPX);
csvwrite('PO3obl.csv',PO3); csvwrite('XO3obl.csv',XO3);
O3final(:,7)=pronO3Kal;
%Santa F
QRPX.Q = csvread('QO3stfe.csv'); QRPX.R = csvread('RO3stfe.csv');       
%QRPX.P = csvread('PO3sfe.csv'); QRPX.X = csvread('XO3sfe.csv');      
QRPX.P=eye(25)*5;
QRPX.X=ones(25,1);              %Quitar esta lnea cuando se genere P y X
[pronO3Kal,PO3,XO3]=kalman(inlets(1,10),pronO3Atemajac,QRPX);
csvwrite('PO3sfe.csv',PO3); csvwrite('XO3sfe.csv',XO3);
O3final(:,8)=pronO3Kal;
%Tlaquepaque
QRPX.Q = csvread('QO3tla.csv'); QRPX.R = csvread('RO3tla.csv');       
%QRPX.P = csvread('PO3tla.csv'); QRPX.X = csvread('XO3tla.csv');      
QRPX.P=eye(25)*5;
QRPX.X=ones(25,1);              %Quitar esta lnea cuando se genere P y X
[pronO3Kal,PO3,XO3]=kalman(inlets(1,7),pronO3Atemajac,QRPX);
csvwrite('PO3tla.csv',PO3); csvwrite('XO3tla.csv',XO3);
O3final(:,9)=pronO3Kal;
%Vallarta
QRPX.Q = csvread('QO3val.csv'); QRPX.R = csvread('RO3val.csv');       
%QRPX.P = csvread('PO3val.csv'); QRPX.X = csvread('XO3val.csv');      
QRPX.P=eye(25)*5;
QRPX.X=ones(25,1);              %Quitar esta lnea cuando se genere P y X
[pronO3Kal,PO3,XO3]=kalman(inlets(1,8),pronO3Atemajac,QRPX);
csvwrite('PO3val.csv',PO3); csvwrite('XO3val.csv',XO3);
O3final(:,10)=pronO3Kal;

%Archivo de Salida
csvwrite('./result/O3pron.csv',O3final);