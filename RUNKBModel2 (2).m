% Define initial conditions.
t0 = 0;
y0 = [8850000 0 0 0 100 0 0 0]'; %2<x<500
% Simulate the differential equation.
tfinal = (0:1:150);
[t,y] = ode23s('KBModel2_4',tfinal',y0);

figure(2)
plot(t,y(:,1), t,y(:,2), t,y(:,3), t,y(:,4), t,y(:,5), t,y(:,6), t,y(:,7), t,y(:,8))
title('Disease Progression')
h = legend('Susceptible','Exposed','Quarantined','Prodromal','Infectious','Hospitalized','Recovered','Death'); 


figure(1)
subplot(3,3,1)
plot(t,y(:,1))
title('Susceptible, S(t)')

subplot(3,3,2)
plot(t,y(:,2))
title('Exposed, E(t)')

subplot(3,3,3)
plot(t,y(:,3))
title('Quarantined, Q(t)')

subplot(3,3,4)
plot(t,y(:,4))
title('Prodromal, P(t)')

subplot(3,3,5)
plot(t,y(:,5))
title('Infectious, I(t)')

subplot(3,3,6)
plot(t,y(:,6))
title('Hospitalized, H(t)')

subplot(3,3,7)
plot(t,y(:,7))
title('Recovered')

subplot(3,3,8)
plot(t,y(:,8))
title('Dead')
% R0=5
% beta=R0/(eps/alpha+(1/delta+mu))
% ksi = 1/12;
% alpha= 1/2.5;
% delta= 1/16;
% d=0.0268; %death rate
% eps=.3;
% 
% R0= ((1/delta)*y(:,4) + (1/alpha)*eps*y(:,3))/(y(:,4)+y(:,3));
% subplot(4,3,7)
% plot(t,R0)
% title('No. Secondary Cases per Infective')
% 