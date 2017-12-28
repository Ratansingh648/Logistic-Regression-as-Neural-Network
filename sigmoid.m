function y = sigmoid(z)
  temp = 1+exp(-z);
  y = 1./temp;
  end