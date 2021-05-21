%audio1.m: Write a program to input any audio file. Play and save the same file.
clc;
close all
clear all;
file1=input('\nEnter input audio file name=','s');
file2=input('Enter output audio file name=','s');
[x,fs,nb]=wavread(file1);
[nx,d]=size(x);
fprintf('nx=%d d=%d fs=%d nb=%d\n',nx,d,fs,nb);
sound(x,fs); % To play audio file
wavwrite(x,fs,file2);
%end of file


