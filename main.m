% This code is used to conduct time series simulations for different PV
% penetration levels without considering voltage controls
clear all; 
close all;
clc;

DSSObj = actxserver('OpenDSSEngine.DSS');

% Start the DSS. Only needs to be executed the first time w/in a
% Matlab session
Start = DSSObj.Start(0);

DSSText = DSSObj.Text;
DSSCircuit=DSSObj.ActiveCircuit;
DSSSolution=DSSCircuit.Solution;
DSSText.command='Compile (C:\Users\Afiq Hafizuddin\Documents\MATLAB\fyp-simulation\DYNAMIC-DUMA\master.dss)';


m1 = load('pv-profile.m'); %s Sunny day
m2 = load('pv-profile_normal.m');% normal day
m3 = load('pv-profile_overcast.m'); %overcast day

m = load('pv-profile.m'); %s Sunny day
% m = load('pv-profile_normal.m');% normal day
% m = load('pv-profile_overcast.m'); %overcast day

% n3 = load('i1_total.m')
% n3 = load('i1_commercial.m')
% n3 = load('i1_residential.m')
n = n3*85;
for i = 1:length(n)
    
DSSText.command = ['Load.LOAD1.kW=', num2str(n(i))];
n=n3*732;
DSSText.command = ['Load.LOAD2.kW=', num2str(n(i))];
n = n3*732;
DSSText.command = ['Load.LOAD3.kW=', num2str(n(i))];
n = n3*11;
DSSText.command = ['Load.LOAD4.kW=', num2str(n(i))];
n = n3*732;
DSSText.command = ['Load.LOAD5.kW=', num2str(n(i))];
n = n3*170;
DSSText.command = ['Load.LOAD6.kW=', num2str(n(i))];
n = n3*170;
DSSText.command = ['Load.LOAD7.kW=', num2str(n(i))];
n = n3*170;
DSSText.command = ['Load.LOAD8.kW=', num2str(n(i))];
n = n3*880;
DSSText.command = ['Load.LOAD9.kW=', num2str(n(i))];
n = n3*647;
DSSText.command = ['Load.LOAD10.kW=', num2str(n(i))];
n = n3*255;
DSSText.command = ['Load.LOAD11.kW=', num2str(n(i))];
n = n3*1265;
DSSText.command = ['Load.LOAD12.kW=', num2str(n(i))];
n = n3*1365;
DSSText.command = ['Load.LOAD13.kW=', num2str(n(i))];
n = n3*718;
DSSText.command = ['Load.LOAD14.kW=', num2str(n(i))];
n = n3*1110;
DSSText.command = ['Load.LOAD15.kW=', num2str(n(i))];
n = n3*472;
DSSText.command = ['Load.LOAD16.kW=', num2str(n(i))];
n = n3*472;
DSSText.command = ['Load.LOAD17.kW=', num2str(n(i))];
n = n3*116;
DSSText.command = ['Load.LOAD18.kW=', num2str(n(i))];
n = n3*435; 
DSSText.command = ['Load.LOAD19.kW=', num2str(n(i))];
n = n3*51;
DSSText.command = ['Load.LOAD20.kW=', num2str(n(i))];
n = n3*389;
DSSText.command = ['Load.LOAD21.kW=', num2str(n(i))];
n = n3*389;
DSSText.command = ['Load.LOAD22.kW=', num2str(n(i))];
n = n3*389;
DSSText.command = ['Load.LOAD23.kW=', num2str(n(i))];
n = n3*389;
DSSText.command = ['Load.LOAD24.kW=', num2str(n(i))];
n = n3*292;
DSSText.command = ['Load.LOAD25.kW=', num2str(n(i))];
n = n3*567;
DSSText.command = ['Load.LOAD26.kW=', num2str(n(i))];
n = n3*834;
DSSText.command = ['Load.LOAD27.kW=', num2str(n(i))];
n = n3*834;
DSSText.command = ['Load.LOAD28.kW=', num2str(n(i))];
n = n3*834;
DSSText.command = ['Load.LOAD29.kW=', num2str(n(i))];
n = n3*472;
DSSText.command = ['Load.LOAD30.kW=', num2str(n(i))];
n = n3*306;
DSSText.command = ['Load.LOAD31.kW=', num2str(n(i))];
n = n3*323;
DSSText.command = ['Load.LOAD32.kW=', num2str(n(i))];
n = n3*1373;
DSSText.command = ['Load.LOAD33.kW=', num2str(n(i))];
n = n3*148;
DSSText.command = ['Load.LOAD34.kW=', num2str(n(i))];
n = n3*580;
DSSText.command = ['Load.LOAD35.kW=', num2str(n(i))];
n = n3*580;
DSSText.command = ['Load.LOAD36.kW=', num2str(n(i))];
n = n3*358;
DSSText.command = ['Load.LOAD37.kW=', num2str(n(i))];        
n = n3*358;
DSSText.command = ['Load.LOAD38.kW=', num2str(n(i))];        
DSSObj.ActiveCircuit.ActiveDSSElement.Properties('kW').Val;

DSSText.command = ['PVSystem.pv1.irrad=', num2str(m(i))]; 
DSSText.command = ['PVSystem.pv2.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv3.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv4.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv5.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv6.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv7.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv8.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv9.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv10.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv11.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv12.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv13.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv14.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv15.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv16.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv17.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv18.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv19.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv20.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv21.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv22.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv23.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv24.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv25.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv26.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv27.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv28.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv29.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv30.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv31.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv32.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv33.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv34.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv35.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv36.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv37.irrad=', num2str(m(i))];
DSSText.command = ['PVSystem.pv38.irrad=', num2str(m(i))];  
DSSObj.ActiveCircuit.ActiveDSSElement.Properties('irrad').Val;

DSSText.command = 'set maxcontroliter=100';
DSSText.command = 'set controlmode=static';
DSSText.command = 'set mode=snapshot';
DSSText.command = 'set voltagebases=[11 0.4]';
DSSText.command = 'calc';
DSSText.command = 'solve'; 

%voltage magnitude for each phase in p.u

Voltage00=DSSCircuit.AllNodeVmagPUByPhase(1)'; 
Voltage0(:,i)=Voltage00;

SystemLoss = DSSCircuit.Losses;
TPL_Active(i,1) = SystemLoss(1,1);

Buses = DSSCircuit.AllBusNames;

%     for tt = 1:length(Buses)
%        DSSCircuit.SetActiveBus(Buses{i});
%        SeqBus(tt,1:3,i) = DSSCircuit.ActiveBus.SeqVoltages;
%     end
    
DSSCircuit.SetActiveElement('PVSystem.pv1');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(1,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(1,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv2');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(2,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(2,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv3');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(3,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(3,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv4');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(4,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(4,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv5');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(5,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(5,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv6');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(6,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(6,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv7');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(7,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(7,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv8');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(8,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(8,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv9');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(9,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(9,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv10');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(10,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(10,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv11');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(11,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(11,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv12');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(12,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(12,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv13');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(13,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(13,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv14');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(14,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(14,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv15');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(15,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(15,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv16');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(16,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(16,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv17');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(17,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(17,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv18');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(18,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(18,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv19');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(19,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(19,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv20');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(20,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(20,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv21');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(21,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(21,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv22');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(22,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(22,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv23');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(23,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(23,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv24');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(24,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(24,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv25');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(25,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(25,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv26');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(26,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(26,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv27');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(27,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(27,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv28');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(28,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(28,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv29');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(29,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(29,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv30');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(30,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(30,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv31');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(31,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(31,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv32');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(32,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(32,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv33');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(33,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(33,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv34');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(34,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(34,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv35');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(35,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(35,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv36');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(36,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(36,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv37');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(37,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(37,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

DSSCircuit.SetActiveElement('PVSystem.pv38');
powers_PV11=DSSCircuit.ActiveElement.Powers;
powerP_PV1(38,i)=powers_PV11(1)+powers_PV11(3)+powers_PV11(5);
powerQ_PV1(38,i)=powers_PV11(2)+powers_PV11(4)+powers_PV11(6);

end

% PV Profile Figure

% [Figure 1.1: PV sunny]
figure();
y=1.0; 
t=0:(1/(60)):24;
plot(t, m1);
xticks([0:2:24]);
xlim([0 24]);
hold on;
plot(t,m2);
plot(t,m3);
% plot([0 24],[y y],'r--');
hold off;
xlabel('Time (hr)','FontName','Times New Roman','FontSize',12)
ylabel('PV sunny load profile (p.u.)','FontName','Times New Roman','FontSize',12)
legend('PV sunny','PV normal','PV overcast','FontName','Times New Roman','FontSize',12,'NumColumns',1)

% Figure 1: Network losses
Average_loss = mean(TPL_Active);
Max_loss = max(TPL_Active);
Min_loss = min(TPL_Active);
percentage_loss = (Average_loss/(1000*124*5*0.6268))*100;

figure();
t = 0:(1/(60)):24;
plot(t, TPL_Active);
xticks([0:2:24]);
xlim([0 24]);
xlabel('Time (hr)','FontName','Times New Roman','FontSize',12)
ylabel('Network loss (W)','FontName','Times New Roman','FontSize',12)


vol= Voltage0([1:4, 5:8, 9:10, 11:13, 14:17, 18:19, 20:24, 25:27, 28:32, 33, 34:36, 37:end],:);
[r, s] = size(vol);
c = zeros(r,s);
for q = 1:s
for p = 1:r
if vol(p,q) >1.05
    c(p,q) = 1;
else
    c(p,q) = 0;
end
end
D(1,q) = sum(c(:,q));
end
figure();
bar(D);
title('Total number of non compliant customers without any control','FontName','Times New Roman');
Non_compliant_customers = max(D);

% maximum voltage
% considering Main_FP
for kk=1:41
maxvol(kk,1) = max(Voltage0(kk,:));
end
%[maxr maxc] = find(ismember(maxvol,max(maxvol(:))));
[max_volatge_all, index_all]= max(maxvol);

% without considering Main_FP
Voltage0(1:2,:) = [];
for k=1:39
maxvol(k,1) = max(Voltage0(k,:));
end
%[maxr maxc] = find(ismember(maxvol,max(maxvol(:))));
[max_volatge, index]= max(maxvol);


figure();
y=1.05;
t=0:(1/(60)):24;
plot(t,Voltage0([1:4, 5:8, 9:10, 11:13, 14:17, 18:19, 20:24, 25:27, 28:32, 33, 34:36, 37:end],:)');
xticks([0:2:24]);
xlim([0 24]);
hold on;
plot([0 24],[y y],'r--');
plot([0 24],[0.95 0.95],'r--');
hold off;
ylim([0.93 1.10]);
xlabel('Time (hr)','FontName','Times New Roman','FontSize',12)
ylabel('Voltage (p.u.)','FontName','Times New Roman','FontSize',12)


fig=figure;
x=0;
y=0;
width=600;
height=500;
set(gcf,'Position',[x,y,width,height]);
t=0:(1/(60)):24;
y=1.1;
% ax=gca
set(fig,'defaultAxesColorOrder',[[0 0 0];[0 0 0]])
% c=ax.Color
% ax.Color='w'
yyaxis left
plot(t,-1*powerP_PV1(20,:),'b-','Linewidth',1.5)
ylabel('Power (kW, kVar)','FontName','Times New Roman','FontSize',13)
ylim([-4 10]);
hold on;
plot(t,-1*powerQ_PV1(20,:),'Color',[0.9290, 0.6940, 0.1250],'Linewidth',1.5)
yyaxis right
plot(t,Voltage0(39,:),'--','Color',[0 0.5 0],'Linewidth',1.5)
ylabel('Voltage (p.u.)','FontName','Times New Roman','FontSize',13)
plot([0 24],[y y],'r:','Linewidth',1.5);
xticks([0:2:24]);
xlim([0 24]);
legend('Active power','Reactive power','Voltage','Upper voltage limit','FontName','Times New Roman','FontSize',12,'NumColumns',2)
xlabel('Time (hr)','FontName','Times New Roman','FontSize',13)
yyaxis left
ylim([-4 10])
yyaxis right
ylim([1.0 1.10])

% Loss

Average_loss = mean(TPL_Active);

% Exporting data
NewValues = [Non_compliant_customers,Average_loss,Max_loss,Min_loss,percentage_loss,max_volatge_all, index_all,max_volatge, index];
% Check if you have created an Excel file previously or not  
checkforfile=exist(strcat(pwd,'\','Results.xls'),'file');
if checkforfile==0 % if not create new one
    header = {'Customers with voltage violations','Average network loss','Max loss','Min loss', 'Average loss(%)','Max voltage-all','node-all','Max voltage','node'};
    xlswrite('Results',header,'Sheet1','A1');
    N=0;
else % if yes, count the number of previous inputs
    N=size(xlsread('Results','Sheet1'),1);
end
% add the new values to the end of Excel file
AA=strcat('A',num2str(N+2));
xlswrite('Results',NewValues,'Sheet1',AA);

%disabling the warning commands
warning('off','MATLAB:xlswrite:Sheet1');
