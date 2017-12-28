clc;
clear all;
close all;

pkg load io

DATA = xlsread("data.csv");
X = DATA(2:300,3:end)';  %(n,m)
y = DATA(2:300,1)';      %(1,m)
X_cv = DATA(301:400,3:end)';
y_cv = DATA(301:400,1)'; 
X_test = DATA(401:569,3:end)';
y_test = DATA(401:569,1)'; 
iterations = 1000;


learning_rate = 0.0001
[n,m] = size(X);
[W,b] = randomWeights(n);

for i = 1:iterations

y_hat = forwardPropagation(X,W,b,"sigmoid");
y_hat_cv = forwardPropagation(X_cv,W,b,"sigmoid");
J(i) = computeCost(y_hat,y);
J_cv(i) = computeCost(y_hat_cv,y_cv);
[dW,db] = backwardPropagation(y_hat,y,X,"sigmoid");
[W,b] = updateParameter(W,b,dW,db,learning_rate);
end
 
y_pred_train = predict(X,W,b,"sigmoid");
disp((1-mean(abs(y_pred_train-y)))*100);

y_pred = predict(X_test,W,b,"sigmoid");
disp((1-mean(abs(y_pred-y_test)))*100);
plot(1:iterations,J,'color','r');
hold on;
plot(1:iterations,J_cv,'color','b')
