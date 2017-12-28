function y_hat = predict(X,W,b,activation="sigmoid")
  z = W'*X+b;
  y_hat = sigmoid(z);
  y_hat >= 0.5;
  end