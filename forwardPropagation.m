function y_hat = forwardPropagation(X,W,b,activation)
  z = W'*X+b;   %(1,n)*(n,m)+(1,1) = (1,m)
  if activation == "sigmoid"
    y_hat = sigmoid(z);
  elseif activation == "relu"
    y_hat = relu(z);
    end
  end