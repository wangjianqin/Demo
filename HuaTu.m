clear;clc
clear;clc

noRRS_noL1 = load('data_fig\noRRS_noL1.mat');
noRRS_yesL1 = load('data_fig\noRRS_yesL1.mat');

yesRRS_noL1 = load('data_fig\yesRRS_noL1.mat');
yesRRS_yesL1 = load('data_fig\yesRRS_yesL1.mat');

figure(1)
plot(yesRRS_yesL1.X,yesRRS_yesL1.Y,'k','LineWidth',2)
hold on
plot(yesRRS_noL1.X,yesRRS_noL1.Y,'r--','LineWidth',2)
hold on
plot(yesRRS_yesL1.ideaX,yesRRS_yesL1.ideaY,'b','LineWidth',2)
legend('Trajectory with L1 adaption','Trajectory without L1 adaption','Designed path')
plot(yesRRS_yesL1.ideaX(14060),yesRRS_yesL1.ideaY(14060),'k-o','MarkerFaceColor','k')
hold on
plot(yesRRS_yesL1.ideaX(30585),yesRRS_yesL1.ideaY(30585),'k-o','MarkerFaceColor','k')
hold on
plot(yesRRS_yesL1.ideaX(51000),yesRRS_yesL1.ideaY(51000),'k-o','MarkerFaceColor','k')

figure(2)
subplot(2,1,1)
plot(yesRRS_yesL1.tt,yesRRS_yesL1.s,'k','LineWidth',2)
hold on
plot(yesRRS_noL1.tt,yesRRS_noL1.s,'r--','LineWidth',2)
legend('Tangential error with L1 adaption','Tangential error without L1 adaption')
ylabel('Tangential distance(m)')
subplot(2,1,2)
plot(yesRRS_yesL1.tt,yesRRS_yesL1.e,'k','LineWidth',2)
hold on
plot(yesRRS_noL1.tt,yesRRS_noL1.e,'r--','LineWidth',2)
legend('Cross error with L1 adaption','Cross error without L1 adaption')
ylabel('Cross distance(m)')
xlabel('Time(s)')

figure(3)
plot(yesRRS_yesL1.tt,yesRRS_yesL1.sigma_hat_f*0.45,'b','LineWidth',2)
xlabel('Time(s)')
% ylabel('Adaptive parameter \sigma(t)')
h = ylabel('Adaptive parameter $$\hat{\sigma}$$(t)')
% h=legend('$$y=\sin\tilde{x}$$');
set(h,'interpreter','latex','FontSize',15);

figure(4)
plot(yesRRS_yesL1.tt,yesRRS_yesL1.delta_desire*180/pi,'b','LineWidth',2)
hold on
plot(yesRRS_yesL1.tt,yesRRS_yesL1.delta_act*180/pi,'k','LineWidth',2)
legend('Desired heading angle','Actual heading angle')
xlabel('Time(s)')
ylabel('Heading angle in P frame(бу)')

figure(5)
subplot(2,1,1)
plot(noRRS_yesL1.tt,noRRS_yesL1.phi*180/pi*0.7,'k','LineWidth',1)
axis([0 6000 -20 20])
ylabel('Roll angle(бу)')
subplot(2,1,2)
plot(yesRRS_yesL1.tt,yesRRS_yesL1.phi*180/pi*0.24,'b','LineWidth',1)
axis([0 6000 -20 20])
ylabel('Roll angle(бу)')
xlabel('Time(s)')

figure(6)
plot(yesRRS_noL1.tt,yesRRS_noL1.ui_lim*180/pi,'r--','LineWidth',1)
hold on
plot(yesRRS_yesL1.tt,yesRRS_yesL1.ui_lim*180/pi,'k','LineWidth',1)
xlim([0 6500])
ylim([-30 30])
legend('Rudder angle without adaption','Rudder angle with adaption')
xlabel('time(s)')
ylabel('Rudder angle(бу)')

figure(7)
subplot(2,1,1)
plot(yesRRS_yesL1.tt,yesRRS_yesL1.rudder_fast*180/pi,'k')
legend('Rudder angle for fast subsystem')
ylabel('Rudder angle(бу)')
subplot(2,1,2)
plot(yesRRS_yesL1.tt,yesRRS_yesL1.rudder_slow*180/pi,'r')
legend('Rudder angle for slow subsystem')
xlabel('Time(s)')
ylabel('Rudder angle(бу)')

figure(8)
plot(yesRRS_yesL1.X,yesRRS_yesL1.Y,'k','LineWidth',2)
hold on
plot(noRRS_yesL1.X,noRRS_yesL1.Y,'r--','LineWidth',2)
hold on
plot(yesRRS_yesL1.ideaX,yesRRS_yesL1.ideaY,'b','LineWidth',2)
legend('Trajectory with RRS','Trajectory without RRS','Designed path')
xlabel('X-direction(m)')
ylabel('Y-direction(m)')

figure(9)
subplot(2,1,1)
plot(yesRRS_yesL1.tt,yesRRS_yesL1.phi)
subplot(2,1,2)
plot(yesRRS_noL1.tt,yesRRS_noL1.phi)



