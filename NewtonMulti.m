clc;
%% initial conditions
x = 1;
y = 2;

%% partial derivatives
f_x = -y^2*sin(x*y);
g_x = y*cos(x*y)+1;
g_y = x*cos(x*y)-1;
f_y = cos(x*y)-x*y*sin(x*y);
%% functions 
f = y*cos(x*y)+1;
g = sin(x*y)+x-y;
%% jacobian
mat = [f_x,f_y;g_x,g_y];
j = det(mat);
mat1 = [f,f_y;g,g_y];
mat2 = [f_x,f;g_x,g];
%% for x1
d_x1 = det(mat1);
%% For y1
d_y1 = det(mat2);
%% finding x1
x1 = x - (d_x1/j);
y1 = y - (d_y1/j);
%% number of iterations
n = input("How many Iterations? : ");
i = 1;
%% loop
while i<= n
  a = [x,y];
  disp(a);
  disp(i);
 if abs(x-x1)<0.0001 && abs(y-y1) <0.0001
     b = [x1,y1];
     disp(b);
     break;
 else
     i = i+1;
     x = x1;
     y = y1;
     
 end
 
end

 
     


