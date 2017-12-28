function [dW,db] = backwardPropagation(y_hat,y,X,activation)
  m = length(y);
    if activation == "sigmoid"
      dZ = (y_hat-y);
    elseif activation == "relu"
      dtemp = ones(1,length(y_hat))
      dtemp(Z<0.0001) == 0.001;
      dZ = (((1-y)./(1-y_hat))-(y./y_hat)).*dtemp;
      end
     db = sum(dZ)/m;
     dW = (X*dZ')/m;  %(n,m)*(m,1) = (n,1)
  end