a=0:7; % ring 0 to 7
b=dec2bin(a,5);% converting ring 0 t 7 into 5 bit resolution
c=string(b);%converting ring 0 to 7 binary values into string
d=load('Dataset.txt'); %loading patient data from dataset
e=d(:,1);%reading first column
f=d(:,2);%reading second column
g=d(:,3);%reading thid column
h=d(:,4);%reading forth column
i=d(:,5);%reading fifth column
j=d(:,6);%reading sixth column
k=d(:,7);%reading seventh column
l=d(:,8);%reading eigth column

mc=dec2bin(e,11);%converting first column into binary with 11 bit resolution
m=string(mc);%converting first column binary data into string
mm=repmat(c(1,:),11001,1);%repeating first ring value 110001 times
ee=mm+m;%connecting ring value 0 with column1->ring0
es=strlength(ee);

mc2=dec2bin(f,11);%converting second column into binary with 11 bit resolution
m2=string(mc2);%converting second binary data into string
mm1=repmat(c(2,:),11001,1);%repeating second ring value 11001 times
ee1=mm1+m2;%connecting ring value 1 with column2->ring1

mc3=dec2bin(g,11);
m3=string(mc3);
mm2=repmat(c(3,:),11001,1);
ee2=mm2+m3;

mc4=dec2bin(h,11);
m4=string(mc4);
mm3=repmat(c(4,:),11001,1);
ee3=mm3+m4;

mc5=dec2bin(i,11);
m5=string(mc5);
mm4=repmat(c(5,:),11001,1);
ee4=mm4+m5;

mc6=dec2bin(j,11);
m6=string(mc6);
mm5=repmat(c(6,:),11001,1);
ee5=mm5+m6;

mc7=dec2bin(k,11);
m7=string(mc7);
mm6=repmat(c(7,:),11001,1);
ee6=mm6+m7;

mc8=dec2bin(l,11);
m8=string(mc8);
mm7=repmat(c(8,:),11001,1);
ee7=mm7+m8;

word=horzcat(ee,ee1,ee2,ee3,ee4,ee5,ee6,ee7);



