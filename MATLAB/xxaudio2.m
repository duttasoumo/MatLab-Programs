%xxaudio2.m : Write a program to input any audio file and increase the size of
% of audio file.play new audio file and also save it
clc;
clear all;
close all;
file1=input('\nEnter input audio file name=','s');
file2=input('Enter Output audio file name=','s');
n=input('Enter how many times you want to copy your audio file=');
[x,fs,nbits]=wavread(file1);
[nx,d]=size(x);
fprintf('nx=%d fs=%d nbits=%d\n',nx,fs,nbits);
j=1;
k=nx;
for i=1:n
    z(j:k)=x(1:nx);
    j=j+nx;
    k=k+nx;
end
plot(z);
sound(z,fs);
wavwrite(z,fs,file2);
%end of program
