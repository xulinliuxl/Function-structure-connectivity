%project to yeo network - withinnetwork - for each subject individually 
function withinnetwork = yeowithin_sub(aX);

addpath(genpath('/rds/user/xl454/hpc-work/external-master'));
load('/rds/user/xl454/hpc-work/Cam-CAN/FC_SC/rawdata/streamlineasSC/yeo/yeonumber.mat');
load('/rds/user/xl454/hpc-work/Cam-CAN/FC_SC/thre050/SCstreamline/CM050mask.mat');
load('/rds/user/xl454/hpc-work/Cam-CAN/FC_SC/rawdata/streamlineasSC/fcyeo1to8.mat');

for b = 1:473;
    matrix(CM050mask) = aX(:,b);
    matrix(1,60516)=0;
    nroi = 246;
    matrix2d = reshape(matrix, nroi, nroi);
     cm1 = matrix2d';
     cmf = matrix2d + cm1;
     cmf(cmf==0)=nan;
     cmf(:,247)=yeonumber;
     cmf = sortrows(cmf,247,'ascend');
     cmf(:,247) = [];
     cmy = cmf';
     cmy(:,247)=yeonumber;
     cmy = sortrows(cmy,247,'ascend');
     cmy(:,247) = [];
     cmyeo = cmy';

fcyeo = triu(cmyeo);
fcyeo(fcyeo==0)=nan;

for k = 1:30;
v(k,:) = nanmean(fcyeo(k,(1:30)));
end
v(v==0)=nan;
vmean(b,1) = nanmean(v);

for k = 31:62;
sm(k,:) = nanmean(fcyeo(k,(31:62)));
end
sm(sm==0)=nan;
smmean(b,1) = nanmean(sm);

for k = 63:86;
da(k,:) = nanmean(fcyeo(k,(63:86)));
end
da(da==0)=nan;
damean(b,1) = nanmean(da);

for k = 87:118;
va(k,:) = nanmean(fcyeo(k,(87:118)));
end
va(va==0)=nan;
vamean(b,1) = nanmean(va);

for k = 119:146;
lim(k,:) = nanmean(fcyeo(k,(119:146)));
end
lim(lim==0)=nan;
limmean(b,1) = nanmean(lim);

for k = 147:176;
fp(k,:) = nanmean(fcyeo(k,(147:176)));
end
fp(fp==0)=nan;
fpmean(b,1) = nanmean(fp);

for k = 177:210;
dm(k,:) = nanmean(fcyeo(k,(177:210)));
end
dm(dm==0)=nan;
dmmean(b,1) = nanmean(dm);

for k = 211:246;
sc(k,:) = nanmean(fcyeo(k,(211:246)));
end
sc(sc==0)=nan;
scmean(b,1) = nanmean(sc);
end

withinnetwork(:,1)= vmean;
withinnetwork(:,2)= smmean;
withinnetwork(:,3)= damean;
withinnetwork(:,4)= vamean;
withinnetwork(:,5)= limmean;
withinnetwork(:,6)= fpmean;
withinnetwork(:,7)= dmmean;
withinnetwork(:,8)= scmean;

withinnetwork = array2table(withinnetwork);
withinnetwork.Properties.VariableNames{1} = 'visual';
withinnetwork.Properties.VariableNames{2} = 'somatomotor';
withinnetwork.Properties.VariableNames{3} = 'dattention';
withinnetwork.Properties.VariableNames{4} = 'vattention';
withinnetwork.Properties.VariableNames{5} = 'limbic';
withinnetwork.Properties.VariableNames{6} = 'frontoparietal';
withinnetwork.Properties.VariableNames{7} = 'defaultmode';
withinnetwork.Properties.VariableNames{8} = 'subcortical';