N = 30;
Nd = 1;

Tn = 10;
lambda = 2;

param_l = [];
param_names = ["Waiting length","Max queue","Prostoi","Waiting time","Time in system"];
param_label = ["wt","mq","p","wt","tis"];

for interval = 1:1:30
    [wl,mq,p,wt,tis] = model(N,Nd,Tn,Tn+interval,lambda);
    param_l = [ param_l;interval, wl,mq,p,wt,tis]; 
 
end

figure;
grid on;
hold on;

for i=1:1:5  
    subplot(1,5,i);
    grid on;
    hold on;
    title(param_names(i));
    xlabel('interval');
    ylabel(param_label(i));
    
    plot(param_l(:,1),param_l(:,i+1))
end
