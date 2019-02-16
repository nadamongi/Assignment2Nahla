function J = costlog( x , target ,theta )
m=length(x);
 h=1./ (1+exp(-(x*theta)));
J=(-1/m)*  sum ((target.*log(h))+(ones(m,1)-target).*log(h));

%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


end

