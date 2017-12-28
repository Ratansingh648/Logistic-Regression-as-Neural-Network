function J = computeCost(y_hat,y)
  m = length(y);
  J = -(sum(y.*log10(y_hat+0.000001)+(1-y).*log10(1.000001-y_hat)))/m;
  end