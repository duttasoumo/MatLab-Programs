%function [y1]=runge4(x0,y0,h) : Function to calculate value of y1 at x=x1
function [y1]=runge4(x0,y0,h)
k1=h*function_1(x0,y0);
k2=h*function_1(x0+.5*h,y0+.5*k1);
k3=h*function_1(x0+.5*h,y0+.5*k2);
k4=h*function_1(x0+h,y0+k3);
y1=y0+1/6.0*(k1+2*k2+2*k3+k4);
end