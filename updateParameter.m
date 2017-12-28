function [W,b]  = updateParameter(W,b,dW,db,learning_rate)
  W = W - learning_rate*dW;
  b = b - learning_rate*db;
  end