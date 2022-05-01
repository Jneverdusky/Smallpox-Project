function yp = KBModel2_4(t,y)

delta = 1/12; % E to P
eta= 1/2.5; % P to I
alpha= 1/16; % I to R
d1=0.0268; % bkz. valle
eps=.3;%longini
beta=0.000002; 
K=8850000; 
sigma=1/2; % I to H
gamma=1/5; % P to Q
theta=1/12; % E to Q
chi=1/2; % Q to H
tau=1/14; % H to R
lambda=1/16; % Q to R

yp(1)= -beta*y(1)*(y(5)+eps*y(4)); %S 
yp(2)= beta*y(1)*(y(5)+eps*y(4))-(0.4*delta+0.6*theta)*y(2); %E 
yp(3)= 0.6*theta*y(2)+ 0.5*gamma*y(3)- 0.3*chi*y(3)- 0.7*lambda*y(3); %Q 
yp(4)= 0.4*delta*y(2)- (0.5*eta+0.5*gamma)*y(4); %P 
yp(5)= 0.5*eta*y(4)-(.8*alpha+0.2*sigma)*y(5); %I 
yp(6)= 0.2*sigma*y(5)+0.3*chi*y(3)- tau*y(6); %H 
yp(7)= 0.8*alpha*y(5)+ tau*y(6)+0.7*lambda*y(3); %R 
yp(8)= d1*y(5); %D  


yp= [yp(1); yp(2); yp(3); yp(4); yp(5); yp(6);  yp(7); yp(8)];