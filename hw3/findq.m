function q=findq(a,n,tol,maxit)
% q=findq(a,n,tol)
% find q such that 1+q+q^2 +...+q^(n-1)=a with difference at most tol
% by at most maxit iterations of fixed point method
% in:
%   a,n,tol,maxit size (1,1), must have a>n and tol>0
% out:
%   q size (1,1)
if a>n & tol > 0,

    g =@(q) (1+q*a-a).^(1/n); % function g
    q(1) = 1.1;
    
    for i = 1:maxit  
        q(i+1) = g(q(i));
        if abs(q(i) - a) < tol
            q = q(i+1)
            break
        end
    end
    q = q(i+1);   

else
    a,tol,error('must have a>n and tol>0')
end
