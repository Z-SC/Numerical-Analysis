function q=findq(a,n,tol,maxit)
% q=findq(a,n,tol)
% find q such that 1+q+q^2 +...+q^(n-1)=a with difference at most tol
% by at most maxit iterations of fixed point method
% in:
%   a,n,tol,maxit size (1,1), must have a>n and tol>0
% out:
%   q size (1,1)
if a>n & tol > 0,

      g =@(a) (1+a*a-a).^(1/n); % function g
    a(1) = 1.1;
    

    for i = 1:maxit  
        a(i+1) = g(a(i));
        if abs(a(i) - a) < tol
            a = a(i+1)
            break
        end
    end
    a = a(i+1);

else
    a,tol,error('must have a>n and tol>0')
end
