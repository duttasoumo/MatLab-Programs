%xxaudio1.m : Write a program to input any audio file and play that file
clc;
clear all;
close all;
file1=input('\nEnter input audio file name=','s');
[y,fs,nbits]=wavread(file1);
[nx,d]=size(y);
fprintf('nx=%d fs=%d nbits=%d\n',nx,fs,nbits);
sound(y,fs);
%end of program
