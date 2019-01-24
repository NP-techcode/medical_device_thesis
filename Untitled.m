clc;
clear all;
close all;
x=load('data.txt'); %load data file
f=dec2bin(x,11); %converting dec to bin in (11bit format data values for 32 channel) and (10 bit for 64 channel)
data=string(f); %converting char to string 

x1=0:31; %32 channel=0:31 and 64=0:63
d1=dec2bin(x1); %convert dec to bin
e=string(d1); %convet char to string 
data1=repmat(e,344,1); % 11000 data values divide by 32 = 344

q=data1+data;
