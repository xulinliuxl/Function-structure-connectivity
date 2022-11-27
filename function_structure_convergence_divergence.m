%% Function-structure connectivity convergence and divergence

% X = original functional connectivity (functional connectivity observed)
% cca.XS = significant components in CCA correlating functional connectivity and structural connectivity
% predicted = function-structure connectivity convergence
% aX = function-structure connectivity divergence

% Function-structure connectivity convergence

for i = 1:473;
    FC(:,i) = X(:,i);
    mlr = fitlm(cca.XS,FC(:,i));
    predicted(:,i) = mlr.Fitted;
end

% Function-structure connectivity divergence

Xs = cca.XS;
Ns = 7934 %number of samples
X = X;

R = eye(Ns) - Xs*pinv(Xs); %regress out all significant components from CCA
aX = R*X;

% map onto Yeo networks
% MATLAB functions yeowithin_sub (within network connections) and
% yeobetween_sub (between network connections) are in the same GitHub folder

withinfc= yeowithin_sub(predicted); 
betweenfc = yeobetween_sub(predicted);

withinaX= yeowithin_sub(aX);
betweenaX = yeobetween_sub(aX);

