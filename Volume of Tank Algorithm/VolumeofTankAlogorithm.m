clc;clear all; close all;
h = 20
%h = 19
%h = 47
%h = -1
diameter_cyl = 25;
r_cyl = diameter_cyl /2;
r_cone = 46;
%volume_cyl = pi * r_cyl^2*h;
if(h<=19 && h >= 0)
    v = pi * r_cyl^2*h;
    fprintf('the volume of water is %.3f \n', v);
elseif (h >19 && h < 34)
        h = h -19;
        r_cone = (h*tan(0.6435) )+ r_cyl
    v = (pi * r_cyl^2 * 19) + ((pi/3)*(r_cyl^2+ r_cyl * r_cone + r_cone^2) * h);
 
    fprintf('the volume of water is %.3f \n', v);
    
else
        fprintf('error');
end 
