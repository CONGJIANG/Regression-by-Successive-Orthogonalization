x=input('Enter input X from training data : ');
y=input('Enter input Y from training data : ');

x=[ones(size(x,1),1) x]  % add x0 into x
p=size(x,1);

z= zeros(size(x)); 
z(:,1) = 1           % actually is z0  
for j = 2:p+1
    y = zeros(1,j)
    for l = 1:j
    y(l,j) = dot(z(:,l),x(:,j))/dot(z(:,l),z(:,l))
    sum_y = y(l,j)*z(:,l)
    z(:,j) = x(:,j) + sum_y
    end   
end


