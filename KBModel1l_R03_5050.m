function yp = KBModel1l_R03_5050(t,y)

%R0=5;
delta = 1/12;
eta= 1/2.5;
alpha= 1/16;
d=0.0268; % bkz. valle
eps=.3;%longini
K=8850000;
%beta=R0/(eps/eta+1/(alpha+d))/K; %3-5-7
beta=0.000001;


yp(1)= -beta*y(1)*(y(4)+eps*y(3)); %S
yp(2)= beta*y(1)*(y(4)+eps*y(3))- (delta)*y(2) ;%E
yp(3)= delta*y(2)- (eta)*y(3); %P
yp(4)= eta*y(3)- (alpha+d)*y(4); %I 
yp(5)= alpha*y(4) ; %R
yp(6)= d*y(4); %D


yp= [yp(1); yp(2); yp(3); yp(4); yp(5); yp(6)];
