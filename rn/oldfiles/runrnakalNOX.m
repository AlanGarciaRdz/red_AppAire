% Cdigo para NOXrrer todas las redes neuronales
% PronstiNOXs de NOX parmetros en 10 estaciones

clear; clc;
% Buscar nmero de semana a partir de la fecha
now = csvread('now.csv');       %archivo NOXn la fecha actual
mes=now(1); dia=now(2); hora=now(3);
fechas = csvread('fechas.csv'); %archivo NOXn ndices de semanas
for j=1:size(fechas,1)
    if mes==fechas(j,2)&& dia==fechas(j,4)
        semana=fechas(j,3);
    end
end

% Lectura de archivo CSV de entradas
inlets = csvread('inletcsv03.csv');

% Generacin de vectores de entradas para cada parmetro
% NOX
inletNOXAguilas=[semana;hora;inlets(3,1);inlets(2,1);inlets(1,1);...
    inlets(5,1);inlets(7,1);inlets(6,1);inlets(8,1);inlets(9,1);...
    inlets(2,4);inlets(2,5)];
inletNOXAtemajac=[semana;hora;inlets(2,2);inlets(1,2);inlets(7,2);...
    inlets(6,2);inlets(8,2);inlets(9,2)];
inletNOXCentro=[semana;hora;inlets(2,3);inlets(1,3);inlets(5,3);...
    inlets(7,3);inlets(8,3);inlets(9,3)];
inletNOXLasPintas=[semana;hora;inlets(2,9);inlets(1,9);...
    inlets(7,9);inlets(6,9);inlets(8,9);inlets(9,9)];
inletNOXLomaDorada=[semana;hora;inlets(2,4);inlets(1,4);inlets(5,4);...
    inlets(7,4);inlets(6,4)];
inletNOXMiravalle=[semana;hora;inlets(2,5);inlets(1,5);inlets(7,5);...
    inlets(6,5);inlets(8,5);inlets(9,5);inlets(2,8);inlets(2,10)];
inletNOXOblatos=[semana;hora;inlets(3,6);inlets(2,6);inlets(1,6);...
    inlets(5,6);inlets(4,6);inlets(9,6)];
inletNOXSantaFe=[semana;hora;inlets(3,10);inlets(2,10);inlets(1,10);...
    inlets(5,10);inlets(8,10);inlets(9,10);...
    inlets(2,1);inlets(2,2);inlets(2,7);inlets(2,4)];
inletNOXTlaquepaque=[semana;hora;inlets(2,7);inlets(1,7);inlets(7,7);...
    inlets(6,7);inlets(8,7);inlets(9,7)];
inletNOXVallarta=[semana;hora;inlets(3,8);inlets(2,8);inlets(1,8);...
    inlets(5,8);inlets(7,8);inlets(6,8);inlets(8,8)];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Redes para NOX
% Las guilas
pronNOXAguilas=[NOXAguilas1(inletNOXAguilas);NOXAguilas2(inletNOXAguilas);
NOXAguilas3(inletNOXAguilas);NOXAguilas4(inletNOXAguilas);NOXAguilas5(inletNOXAguilas);
NOXAguilas6(inletNOXAguilas);NOXAguilas7(inletNOXAguilas);NOXAguilas8(inletNOXAguilas);
NOXAguilas9(inletNOXAguilas);NOXAguilas10(inletNOXAguilas);NOXAguilas11(inletNOXAguilas);
NOXAguilas12(inletNOXAguilas);NOXAguilas13(inletNOXAguilas);NOXAguilas14(inletNOXAguilas);
NOXAguilas15(inletNOXAguilas);NOXAguilas16(inletNOXAguilas);NOXAguilas17(inletNOXAguilas);
NOXAguilas18(inletNOXAguilas);NOXAguilas19(inletNOXAguilas);NOXAguilas20(inletNOXAguilas);
NOXAguilas21(inletNOXAguilas);NOXAguilas22(inletNOXAguilas);NOXAguilas23(inletNOXAguilas);
NOXAguilas24(inletNOXAguilas);NOXAguilas48(inletNOXAguilas)];
% Atemajac
pronNOXAtemajac=[NOXAtemajac1(inletNOXAtemajac);NOXAtemajac2(inletNOXAtemajac);
NOXAtemajac3(inletNOXAtemajac);NOXAtemajac4(inletNOXAtemajac);NOXAtemajac5(inletNOXAtemajac);
NOXAtemajac6(inletNOXAtemajac);NOXAtemajac7(inletNOXAtemajac);NOXAtemajac8(inletNOXAtemajac);
NOXAtemajac9(inletNOXAtemajac);NOXAtemajac10(inletNOXAtemajac);NOXAtemajac11(inletNOXAtemajac);
NOXAtemajac12(inletNOXAtemajac);NOXAtemajac13(inletNOXAtemajac);NOXAtemajac14(inletNOXAtemajac);
NOXAtemajac15(inletNOXAtemajac);NOXAtemajac16(inletNOXAtemajac);NOXAtemajac17(inletNOXAtemajac);
NOXAtemajac18(inletNOXAtemajac);NOXAtemajac19(inletNOXAtemajac);NOXAtemajac20(inletNOXAtemajac);
NOXAtemajac21(inletNOXAtemajac);NOXAtemajac22(inletNOXAtemajac);NOXAtemajac23(inletNOXAtemajac);
NOXAtemajac24(inletNOXAtemajac);NOXAtemajac48(inletNOXAtemajac)];
% Centro
pronNOXCentro=[NOXCentro1(inletNOXCentro);NOXCentro2(inletNOXCentro);
NOXCentro3(inletNOXCentro);NOXCentro4(inletNOXCentro);NOXCentro5(inletNOXCentro);
NOXCentro6(inletNOXCentro);NOXCentro7(inletNOXCentro);NOXCentro8(inletNOXCentro);
NOXCentro9(inletNOXCentro);NOXCentro10(inletNOXCentro);NOXCentro11(inletNOXCentro);
NOXCentro12(inletNOXCentro);NOXCentro13(inletNOXCentro);NOXCentro14(inletNOXCentro);
NOXCentro15(inletNOXCentro);NOXCentro16(inletNOXCentro);NOXCentro17(inletNOXCentro);
NOXCentro18(inletNOXCentro);NOXCentro19(inletNOXCentro);NOXCentro20(inletNOXCentro);
NOXCentro21(inletNOXCentro);NOXCentro22(inletNOXCentro);NOXCentro23(inletNOXCentro);
NOXCentro24(inletNOXCentro);NOXCentro48(inletNOXCentro)];
% Las Pintas
pronNOXLasPintas=[NOXLasPintas1(inletNOXLasPintas);NOXLasPintas2(inletNOXLasPintas);
NOXLasPintas3(inletNOXLasPintas);NOXLasPintas4(inletNOXLasPintas);NOXLasPintas5(inletNOXLasPintas);
NOXLasPintas6(inletNOXLasPintas);NOXLasPintas7(inletNOXLasPintas);NOXLasPintas8(inletNOXLasPintas);
NOXLasPintas9(inletNOXLasPintas);NOXLasPintas10(inletNOXLasPintas);NOXLasPintas11(inletNOXLasPintas);
NOXLasPintas12(inletNOXLasPintas);NOXLasPintas13(inletNOXLasPintas);NOXLasPintas14(inletNOXLasPintas);
NOXLasPintas15(inletNOXLasPintas);NOXLasPintas16(inletNOXLasPintas);NOXLasPintas17(inletNOXLasPintas);
NOXLasPintas18(inletNOXLasPintas);NOXLasPintas19(inletNOXLasPintas);NOXLasPintas20(inletNOXLasPintas);
NOXLasPintas21(inletNOXLasPintas);NOXLasPintas22(inletNOXLasPintas);NOXLasPintas23(inletNOXLasPintas);
NOXLasPintas24(inletNOXLasPintas);NOXLasPintas48(inletNOXLasPintas)];
% Loma Dorada
pronNOXLomaDorada=[NOXLomaDorada1(inletNOXLomaDorada);NOXLomaDorada2(inletNOXLomaDorada);
NOXLomaDorada3(inletNOXLomaDorada);NOXLomaDorada4(inletNOXLomaDorada);NOXLomaDorada5(inletNOXLomaDorada);
NOXLomaDorada6(inletNOXLomaDorada);NOXLomaDorada7(inletNOXLomaDorada);NOXLomaDorada8(inletNOXLomaDorada);
NOXLomaDorada9(inletNOXLomaDorada);NOXLomaDorada10(inletNOXLomaDorada);NOXLomaDorada11(inletNOXLomaDorada);
NOXLomaDorada12(inletNOXLomaDorada);NOXLomaDorada13(inletNOXLomaDorada);NOXLomaDorada14(inletNOXLomaDorada);
NOXLomaDorada15(inletNOXLomaDorada);NOXLomaDorada16(inletNOXLomaDorada);NOXLomaDorada17(inletNOXLomaDorada);
NOXLomaDorada18(inletNOXLomaDorada);NOXLomaDorada19(inletNOXLomaDorada);NOXLomaDorada20(inletNOXLomaDorada);
NOXLomaDorada21(inletNOXLomaDorada);NOXLomaDorada22(inletNOXLomaDorada);NOXLomaDorada23(inletNOXLomaDorada);
NOXLomaDorada24(inletNOXLomaDorada);NOXLomaDorada48(inletNOXLomaDorada)];
% Miravalle
pronNOXMiravalle=[NOXMiravalle1(inletNOXMiravalle);NOXMiravalle2(inletNOXMiravalle);
NOXMiravalle3(inletNOXMiravalle);NOXMiravalle4(inletNOXMiravalle);NOXMiravalle5(inletNOXMiravalle);
NOXMiravalle6(inletNOXMiravalle);NOXMiravalle7(inletNOXMiravalle);NOXMiravalle8(inletNOXMiravalle);
NOXMiravalle9(inletNOXMiravalle);NOXMiravalle10(inletNOXMiravalle);NOXMiravalle11(inletNOXMiravalle);
NOXMiravalle12(inletNOXMiravalle);NOXMiravalle13(inletNOXMiravalle);NOXMiravalle14(inletNOXMiravalle);
NOXMiravalle15(inletNOXMiravalle);NOXMiravalle16(inletNOXMiravalle);NOXMiravalle17(inletNOXMiravalle);
NOXMiravalle18(inletNOXMiravalle);NOXMiravalle19(inletNOXMiravalle);NOXMiravalle20(inletNOXMiravalle);
NOXMiravalle21(inletNOXMiravalle);NOXMiravalle22(inletNOXMiravalle);NOXMiravalle23(inletNOXMiravalle);
NOXMiravalle24(inletNOXMiravalle);NOXMiravalle48(inletNOXMiravalle)];
% Oblatos
pronNOXOblatos=[NOXOblatos1(inletNOXOblatos);NOXOblatos2(inletNOXOblatos);
NOXOblatos3(inletNOXOblatos);NOXOblatos4(inletNOXOblatos);NOXOblatos5(inletNOXOblatos);
NOXOblatos6(inletNOXOblatos);NOXOblatos7(inletNOXOblatos);NOXOblatos8(inletNOXOblatos);
NOXOblatos9(inletNOXOblatos);NOXOblatos10(inletNOXOblatos);NOXOblatos11(inletNOXOblatos);
NOXOblatos12(inletNOXOblatos);NOXOblatos13(inletNOXOblatos);NOXOblatos14(inletNOXOblatos);
NOXOblatos15(inletNOXOblatos);NOXOblatos16(inletNOXOblatos);NOXOblatos17(inletNOXOblatos);
NOXOblatos18(inletNOXOblatos);NOXOblatos19(inletNOXOblatos);NOXOblatos20(inletNOXOblatos);
NOXOblatos21(inletNOXOblatos);NOXOblatos22(inletNOXOblatos);NOXOblatos23(inletNOXOblatos);
NOXOblatos24(inletNOXOblatos);NOXOblatos48(inletNOXOblatos)];
% Santa F
pronNOXSantaFe=[NOXSantaFe1(inletNOXSantaFe);NOXSantaFe2(inletNOXSantaFe);
NOXSantaFe3(inletNOXSantaFe);NOXSantaFe4(inletNOXSantaFe);NOXSantaFe5(inletNOXSantaFe);
NOXSantaFe6(inletNOXSantaFe);NOXSantaFe7(inletNOXSantaFe);NOXSantaFe8(inletNOXSantaFe);
NOXSantaFe9(inletNOXSantaFe);NOXSantaFe10(inletNOXSantaFe);NOXSantaFe11(inletNOXSantaFe);
NOXSantaFe12(inletNOXSantaFe);NOXSantaFe13(inletNOXSantaFe);NOXSantaFe14(inletNOXSantaFe);
NOXSantaFe15(inletNOXSantaFe);NOXSantaFe16(inletNOXSantaFe);NOXSantaFe17(inletNOXSantaFe);
NOXSantaFe18(inletNOXSantaFe);NOXSantaFe19(inletNOXSantaFe);NOXSantaFe20(inletNOXSantaFe);
NOXSantaFe21(inletNOXSantaFe);NOXSantaFe22(inletNOXSantaFe);NOXSantaFe23(inletNOXSantaFe);
NOXSantaFe24(inletNOXSantaFe);NOXSantaFe48(inletNOXSantaFe)];
% Tlaquepaque
pronNOXTlaquepaque=[NOXTlaquepaque1(inletNOXTlaquepaque);NOXTlaquepaque2(inletNOXTlaquepaque);
NOXTlaquepaque3(inletNOXTlaquepaque);NOXTlaquepaque4(inletNOXTlaquepaque);NOXTlaquepaque5(inletNOXTlaquepaque);
NOXTlaquepaque6(inletNOXTlaquepaque);NOXTlaquepaque7(inletNOXTlaquepaque);NOXTlaquepaque8(inletNOXTlaquepaque);
NOXTlaquepaque9(inletNOXTlaquepaque);NOXTlaquepaque10(inletNOXTlaquepaque);NOXTlaquepaque11(inletNOXTlaquepaque);
NOXTlaquepaque12(inletNOXTlaquepaque);NOXTlaquepaque13(inletNOXTlaquepaque);NOXTlaquepaque14(inletNOXTlaquepaque);
NOXTlaquepaque15(inletNOXTlaquepaque);NOXTlaquepaque16(inletNOXTlaquepaque);NOXTlaquepaque17(inletNOXTlaquepaque);
NOXTlaquepaque18(inletNOXTlaquepaque);NOXTlaquepaque19(inletNOXTlaquepaque);NOXTlaquepaque20(inletNOXTlaquepaque);
NOXTlaquepaque21(inletNOXTlaquepaque);NOXTlaquepaque22(inletNOXTlaquepaque);NOXTlaquepaque23(inletNOXTlaquepaque);
NOXTlaquepaque24(inletNOXTlaquepaque);NOXTlaquepaque48(inletNOXTlaquepaque)];
% Vallarta
pronNOXVallarta=[NOXVallarta1(inletNOXVallarta);NOXVallarta2(inletNOXVallarta);
NOXVallarta3(inletNOXVallarta);NOXVallarta4(inletNOXVallarta);NOXVallarta5(inletNOXVallarta);
NOXVallarta6(inletNOXVallarta);NOXVallarta7(inletNOXVallarta);NOXVallarta8(inletNOXVallarta);
NOXVallarta9(inletNOXVallarta);NOXVallarta10(inletNOXVallarta);NOXVallarta11(inletNOXVallarta);
NOXVallarta12(inletNOXVallarta);NOXVallarta13(inletNOXVallarta);NOXVallarta14(inletNOXVallarta);
NOXVallarta15(inletNOXVallarta);NOXVallarta16(inletNOXVallarta);NOXVallarta17(inletNOXVallarta);
NOXVallarta18(inletNOXVallarta);NOXVallarta19(inletNOXVallarta);NOXVallarta20(inletNOXVallarta);
NOXVallarta21(inletNOXVallarta);NOXVallarta22(inletNOXVallarta);NOXVallarta23(inletNOXVallarta);
NOXVallarta24(inletNOXVallarta);NOXVallarta48(inletNOXVallarta)];

NOXp=[pronNOXAguilas,pronNOXAtemajac,pronNOXCentro,pronNOXLasPintas,pronNOXLomaDorada,...
    pronNOXMiravalle,pronNOXOblatos,pronNOXSantaFe,pronNOXTlaquepaque,pronNOXVallarta];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NOXrreccin NOXn filtro de Kalman
%Las guilas
QRPX.Q = csvread('QNOXagu.csv'); QRPX.R = csvread('RNOXagu.csv');       
QRPX.P = csvread('PNOXagu.csv'); QRPX.X = csvread('XNOXagu.csv');      
[pronNOXKal,PNOX,XNOX]=kalman(inlets(2,1),pronNOXAguilas,QRPX);
csvwrite('PNOXagu.csv',PNOX); csvwrite('XNOXagu.csv',XNOX);
NOXfinal(:,1)=pronNOXKal;
%Atemajac
QRPX.Q = csvread('QNOXatm.csv'); QRPX.R = csvread('RNOXatm.csv');       
QRPX.P = csvread('PNOXatm.csv'); QRPX.X = csvread('XNOXatm.csv');      
[pronNOXKal,PNOX,XNOX]=kalman(inlets(2,2),pronNOXAtemajac,QRPX);
csvwrite('PNOXatm.csv',PNOX); csvwrite('XNOXatm.csv',XNOX);
NOXfinal(:,2)=pronNOXKal;
%Centro
QRPX.Q = csvread('QNOXcen.csv'); QRPX.R = csvread('RNOXcen.csv');       
QRPX.P = csvread('PNOXcen.csv'); QRPX.X = csvread('XNOXcen.csv');      
[pronNOXKal,PNOX,XNOX]=kalman(inlets(2,3),pronNOXAtemajac,QRPX);
csvwrite('PNOXcen.csv',PNOX); csvwrite('XNOXcen.csv',XNOX);
NOXfinal(:,3)=pronNOXKal;
%Las Pintas
QRPX.Q = csvread('QNOXlpin.csv'); QRPX.R = csvread('RNOXlpin.csv');       
QRPX.P = csvread('PNOXlpin.csv'); QRPX.X = csvread('XNOXlpin.csv');      
[pronNOXKal,PNOX,XNOX]=kalman(inlets(2,9),pronNOXAtemajac,QRPX);
csvwrite('PNOXlpin.csv',PNOX); csvwrite('XNOXlpin.csv',XNOX);
NOXfinal(:,4)=pronNOXKal;
%Loma Dorada
QRPX.Q = csvread('QNOXldo.csv'); QRPX.R = csvread('RNOXldo.csv');       
QRPX.P = csvread('PNOXldo.csv'); QRPX.X = csvread('XNOXldo.csv');      
[pronNOXKal,PNOX,XNOX]=kalman(inlets(2,4),pronNOXAtemajac,QRPX);
csvwrite('PNOXldo.csv',PNOX); csvwrite('XNOXldo.csv',XNOX);
NOXfinal(:,5)=pronNOXKal;
%Miravalle
QRPX.Q = csvread('QNOXmir.csv'); QRPX.R = csvread('RNOXmir.csv');       
QRPX.P = csvread('PNOXmir.csv'); QRPX.X = csvread('XNOXmir.csv');      
[pronNOXKal,PNOX,XNOX]=kalman(inlets(2,5),pronNOXAtemajac,QRPX);
csvwrite('PNOXmir.csv',PNOX); csvwrite('XNOXmir.csv',XNOX);
NOXfinal(:,6)=pronNOXKal;
%Oblatos
QRPX.Q = csvread('QNOXobl.csv'); QRPX.R = csvread('RNOXobl.csv');       
QRPX.P = csvread('PNOXobl.csv'); QRPX.X = csvread('XNOXobl.csv');      
[pronNOXKal,PNOX,XNOX]=kalman(inlets(2,6),pronNOXAtemajac,QRPX);
csvwrite('PNOXobl.csv',PNOX); csvwrite('XNOXobl.csv',XNOX);
NOXfinal(:,7)=pronNOXKal;
%Santa F
QRPX.Q = csvread('QNOXstfe.csv'); QRPX.R = csvread('RNOXstfe.csv');       
QRPX.P = csvread('PNOXsfe.csv'); QRPX.X = csvread('XNOXsfe.csv');      
[pronNOXKal,PNOX,XNOX]=kalman(inlets(2,10),pronNOXAtemajac,QRPX);
csvwrite('PNOXsfe.csv',PNOX); csvwrite('XNOXsfe.csv',XNOX);
NOXfinal(:,8)=pronNOXKal;
%Tlaquepaque
QRPX.Q = csvread('QNOXtla.csv'); QRPX.R = csvread('RNOXtla.csv');       
QRPX.P = csvread('PNOXtla.csv'); QRPX.X = csvread('XNOXtla.csv');      
[pronNOXKal,PNOX,XNOX]=kalman(inlets(2,7),pronNOXAtemajac,QRPX);
csvwrite('PNOXtla.csv',PNOX); csvwrite('XNOXtla.csv',XNOX);
NOXfinal(:,9)=pronNOXKal;
%Vallarta
QRPX.Q = csvread('QNOXval.csv'); QRPX.R = csvread('RNOXval.csv');       
QRPX.P = csvread('PNOXval.csv'); QRPX.X = csvread('XNOXval.csv');      
[pronNOXKal,PNOX,XNOX]=kalman(inlets(2,8),pronNOXAtemajac,QRPX);
csvwrite('PNOXval.csv',PNOX); csvwrite('XNOXval.csv',XNOX);
NOXfinal(:,10)=pronNOXKal;

%Archivo de Salida
csvwrite('./result/NOXpron.csv',NOXfinal);