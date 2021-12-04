function [ root, fx, ea, iter ] = falsePosition( func,xl,xu,es,maxit,varargin)
%   Detailed explanation goes here
test = func(xl)*func(xu);

if nargin < 3
    error('at least 3 arguments required');
end
if test > 0, error('no sign change')
end
if nargin < 4 
     es= 0.0001;
end 
if nargin < 5 
     maxit= 200;
end
iter = 0; root = xl; ea = 100;
while(1)
   oldRoot = root;
   root = xu - (func(xu)*(xl-xu))/(func(xl)-func(xu));
   iter = iter + 1;
   if root < 0 || root < 0, ea = abs((root-oldRoot)/root)*100;
   
   end
test = func(xl)*func(root);
if test < 0 
    xu = root;
 
elseif test > 0 
    xl = root;
else
    ea = 0;
end
if ea <= es || iter == maxit 
    break 
end

end
 root = root;
 fx = func(root);
 ea = ea
iter = iter;
end

