%homework 5
%wesley holmes
%Dr. Bechara MECH 105
function [A] = specialMatrix(n,m)
%This function takes in n and m to determan number of rowes and collums
%then puts out a matrix with those dementions and followes the other
%guidlines of the assignment 
A = zeros(n,m);
msg = 'Error occurred.';

if nargin < 2
    error(msg)
end

for x= 1:n
    
    for y = 1:m
        
        if (x == 1 && y ==1)
        A(x,y) = 1;
        elseif( x == 1)
            z = y-1;
            A(x,y) = A(x,z)+1;
        elseif(y == 1)
           z = x-1;
            A(x,y) = A(z,y)+1;
        else
          A(x,y) = A(x,(y-1)) + A((x-1),y);
            end
            
           %% for b = 1:y
             %    count_collum = count_collum + A(b,y);
           % end
            %A(x,y) =A(x,y) + count_collum; 
       
            
        end
end
end