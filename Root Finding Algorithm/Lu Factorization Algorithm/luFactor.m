function [L, U, P] = luFactor(A)
%takes in an matrix and solves outputting a lower triangular array, an
%upper trianglular array, and a psition array
z = 1;% counter for spacing variables in my L and P matrix
[n,m] = size(A);

%Check if matrix is valid
if (n ~= m)
    error('wrong size matrix');
end

%set variables 
U = A;
d = ones(1,n);
P = diag(d);%sets up a diagnol matrix of 1's
P2 =P;%just to add into my L matrix later
L = zeros(n,m);
y = 1;% counter for collums in my while loop



while(y <= m-1)
    x = 1;%counter for 
    [d,loc]=max(abs(U(y:n,y)));%check for max value in collum
    
    if(y>1)
        loc = loc +z;
        z = z +1;
    end
    
    
%pivot U P & L
hold = U(loc,:);
hold2 =  P(loc,:);
hold3 = L(loc,:);
U(loc,:) = U(y,:);
P(loc,:) = P(y,:);
L(loc,:) = L(y,:);
U(y,:) = hold;
P(y,:) = hold2;
L(y,:) = hold3;


while x<n
   
   if(x+y)>m 
        break
   end
% gauss elimination
A1 = U(x+y,y)/U(y,y); % value of a2/a1
L((x+z),(y)) = A1;
B = U(y,:).*A1; %A1*row#n
U(x+y,:) = (U(x+y,:)-B); %replacing value in U matrix
x = x+1;

end
y =y +1;


end

L = P2+L;%(P*A)/U; %L is a cop-out

end