function [I] = simpson(x,y)
% this function take in to arrays that represent the ex and y values of a set of data then uses simpsons 1/3 rule to find the integral of the data.
fun = @(f0,f1,f2,h) (h/3*(f0+4*f1+f2));%t he simpson 1/3 equation
j = 1;
I = 0;
k =0;
if(length(x)~=length(y) || length(x)< 2)%checks if x and y are the same length
    error('x and y values are not equal sized vectors');
end
if(sum(diff(x))/length(diff(x)) ~= (x(2)-x(1)))%checks that the difference between x values is constant
    error('x must be equally spaced');
end
if (mod(length(x),2)==0)%checks to see if there is an even number of values 
    warning('trap rule was used on the last interval');
    k = 1;
end
h = x(2)-x(1);%calculates h
while(j < length(x))
    if(k == 1 &&  j == (length(x) -1))%if there is an even number of terms the wile loop breaks before the last term
        break
    end
    
    %implementing simpsons 1/3 rule
    f0 = y(j);
    j = j+1;
    f1 = y(j);
    j = j+1;
    f2 = y(j);
    I = I+fun(f0,f1,f2,h);
end

if(k == 1)
 I = I + (h*((y(j)+y(j+1))/2));%last trapazoidal rule if necessary
    end
    
end
