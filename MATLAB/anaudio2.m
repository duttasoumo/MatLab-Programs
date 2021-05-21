%anaudio3.m : Write a program to input any audio file. play reverse sound
%data and play it.
clc;
close all;
clear all;
file1=input('\nEnter input audio file name=','s');
file2=input('Enter output audio file name=','s');
[y,fs,nbits]=wavread(file1);
n=size(y);
z(1:n)=y(n:-1:1);
fprintf('fs=%d nbits=%d n=%d\n',fs,nbits,n);
sound(10*z,fs);
wavwrite(z,fs,file2);
