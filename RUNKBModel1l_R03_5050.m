% Define initial conditions.
t0 = 0;
y0 = [8850000 0 0 100 0 0]'; %2<x<500
% Simulate the differential equation.
tfinal = (0:1:200);
[t,y] = ode45('KBModel1l_R03_5050',tfinal',y0);

%figure(1)
%plot(t,y(:,1), t,y(:,2), t,y(:,3), t,y(:,4), t,y(:,5), t,y(:,6))
%title('Disease Progression')
%h = legend('Susceptible','Exposed','Prodromal','Infectious','Recovered','Death',1); 



figure(2)
subplot(3,2,1)
plot(t,y(:,1))
title('Susceptible')

subplot(3,2,2)
plot(t,y(:,2))
title('Exposed')

subplot(3,2,3)
plot(t,y(:,3))
title('Prodromal')

subplot(3,2,4)
plot(t,y(:,4))
title('Infectious')

subplot(3,2,5)
plot(t,y(:,5))
title('R')

subplot(3,2,6)
plot(t,y(:,6))
title('D')


% R0=3
% beta=R0/(eps/alpha+(1/delta+mu))
% ksi = 1/12;
% alpha= 1/3;
% delta= 1/16;
% mu=0.0268; %death rate
% eps=.3;
% 
% R0= ((1/delta)*y(:,4) + (1/alpha)*eps*y(:,3))/(y(:,4)+y(:,3));
% subplot(4,3,7)
% plot(t,R0)
% title('No. Secondary Cases per Infective')
% 
