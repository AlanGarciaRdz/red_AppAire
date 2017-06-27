function [pronfil,P,X]=kalman(actualval,predictions,QRPX)
% Programa para filtro de kalman
%Matrices de Kalman
Q=QRPX.Q;
R=QRPX.R;
P=QRPX.P;
X=QRPX.X;

% Constantes
% A=eye(25);                % matriz de transici�n de estados
% H=eye(25);                % matriz de transici�n de la predicci�n
% B=zeros(25);              % matriz de control
% u=zeros(25,1);            % entrada de control del sistema
A=1;                        % matriz de transici�n de estados
H=1;                        % matriz de transici�n de la predicci�n
B=0;                        % matriz de control
u=0;                        % entrada de control del sistema
pronfil=zeros(25,1);

for i=1:25
    if i==1
        vartmenos1=actualval;
    else
        vartmenos1=pronfil(i-1);
    end
    %c�lculo del error a filtrar
    % errestk1=ones(25,1)*actualval-predictions;          %z kalman
    errestk1=vartmenos1-predictions(i);          %z kalman

    % etapa de estimaci�n de Kalman
    xest= A*X(i) + B*u;
    Pest= A*P(i,i)*A' + Q(i,i);

    % etapa de correcci�n
    K=Pest*H'*(H*Pest*H'+R(i,i))^(-1);
    X(i) = xest + K*(errestk1-H*xest);
    P(i,i)=(1-K*H)*Pest;
    pronfil(i)=actualval-X(i);
end
end
