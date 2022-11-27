%project to yeo network - betweennetwork - for each subject individually 
function between = yeobetween_sub(aX);

for b = 1:473;
    matrix(CM050mask) = aX(:,b);%residuals
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

%visual network
for k = 1:30;
vsm(k,:) = nanmean(fcyeo(k,(31:62)));
end
vsm(vsm==0)=nan;
visual(b,2) = nanmean(vsm);
for k = 1:30;
vda(k,:) = nanmean(fcyeo(k,(63:86)));
end
vda(vda==0)=nan;
visual(b,3) = nanmean(vda);
for k = 1:30;
vva(k,:) = nanmean(fcyeo(k,(87:118)));
end
vva(vva==0)=nan;
visual(b,4) = nanmean(vva);
for k = 1:30;
vli(k,:) = nanmean(fcyeo(k,(119:146)));
end
vli(vli==0)=nan;
visual(b,5) = nanmean(vli);
for k = 1:30;
vfp(k,:) = nanmean(fcyeo(k,(147:176)));
end
vfp(vfp==0)=nan;
visual(b,6) = nanmean(vfp);
for k = 1:30;
vdm(k,:) = nanmean(fcyeo(k,(177:210)));
end
vdm(vdm==0)=nan;
visual(b,7) = nanmean(vdm);
for k = 1:30;
vsc(k,:) = nanmean(fcyeo(k,(211:246)));
end
vsc(vsc==0)=nan;
visual(b,8) = nanmean(vsc);

visualbetween = array2table(visual);
visualbetween.Properties.VariableNames{1} = 'v_v';
visualbetween.Properties.VariableNames{2} = 'v_sm';
visualbetween.Properties.VariableNames{3} = 'v_da';
visualbetween.Properties.VariableNames{4} = 'v_va';
visualbetween.Properties.VariableNames{5} = 'v_lim';
visualbetween.Properties.VariableNames{6} = 'v_fp';
visualbetween.Properties.VariableNames{7} = 'v_dm';
visualbetween.Properties.VariableNames{8} = 'v_sub';

%somatomotor
for k = 31:62;
smda(k,:) = nanmean(fcyeo(k,(63:86)));
end
smda(smda==0)=nan;
somatomotor(b,3) = nanmean(smda);
for k = 31:62;
smva(k,:) = nanmean(fcyeo(k,(87:118)));
end
smva(smva==0)=nan;
somatomotor(b,4) = nanmean(smva);
for k = 31:62;
smli(k,:) = nanmean(fcyeo(k,(119:146)));
end
smli(smli==0)=nan;
somatomotor(b,5) = nanmean(smli);
for k = 31:62;
smfp(k,:) = nanmean(fcyeo(k,(147:176)));
end
smfp(smfp==0)=nan;
somatomotor(b,6) = nanmean(smfp);
for k = 31:62;
smdm(k,:) = nanmean(fcyeo(k,(177:210)));
end
smdm(smdm==0)=nan;
somatomotor(b,7) = nanmean(smdm);
for k = 31:62;
smsc(k,:) = nanmean(fcyeo(k,(211:246)));
end
smsc(smsc==0)=nan;
somatomotor(b,8) = nanmean(smsc);

somatomotorbetween = array2table(somatomotor);
somatomotorbetween.Properties.VariableNames{1} = 'sm_v';
somatomotorbetween.Properties.VariableNames{2} = 'sm_sm';
somatomotorbetween.Properties.VariableNames{3} = 'sm_da';
somatomotorbetween.Properties.VariableNames{4} = 'sm_va';
somatomotorbetween.Properties.VariableNames{5} = 'sm_lim';
somatomotorbetween.Properties.VariableNames{6} = 'sm_fp';
somatomotorbetween.Properties.VariableNames{7} = 'sm_dm';
somatomotorbetween.Properties.VariableNames{8} = 'sm_sub';

%dorsal attention
for k = 63:86;
dava(k,:) = nanmean(fcyeo(k,(87:118)));
end
dava(dava==0)=nan;
dattention(b,4) = nanmean(dava);
for k = 63:86;
dali(k,:) = nanmean(fcyeo(k,(119:146)));
end
dali(dali==0)=nan;
dattention(b,5) = nanmean(dali);
for k = 63:86;
dafp(k,:) = nanmean(fcyeo(k,(147:176)));
end
dafp(dafp==0)=nan;
dattention(b,6) = nanmean(dafp);
for k = 63:86;
dadm(k,:) = nanmean(fcyeo(k,(177:210)));
end
dadm(dadm==0)=nan;
dattention(b,7) = nanmean(dadm);
for k = 63:86;
dasc(k,:) = nanmean(fcyeo(k,(211:246)));
end
dasc(dasc==0)=nan;
dattention(b,8) = nanmean(dasc);

dattentionbetween = array2table(dattention);
dattentionbetween.Properties.VariableNames{1} = 'da_v';
dattentionbetween.Properties.VariableNames{2} = 'da_sm';
dattentionbetween.Properties.VariableNames{3} = 'da_da';
dattentionbetween.Properties.VariableNames{4} = 'da_va';
dattentionbetween.Properties.VariableNames{5} = 'da_lim';
dattentionbetween.Properties.VariableNames{6} = 'da_fp';
dattentionbetween.Properties.VariableNames{7} = 'da_dm';
dattentionbetween.Properties.VariableNames{8} = 'da_sub';

%ventral attention
for k = 87:118;
vali(k,:) = nanmean(fcyeo(k,(119:146)));
end
vali(vali==0)=nan;
vattention(b,5) = nanmean(vali);
for k = 87:118;
vafp(k,:) = nanmean(fcyeo(k,(147:176)));
end
vafp(vafp==0)=nan;
vattention(b,6) = nanmean(vafp);
for k = 87:118;
vadm(k,:) = nanmean(fcyeo(k,(177:210)));
end
vadm(vadm==0)=nan;
vattention(b,7) = nanmean(vadm);
for k = 87:118;
vasc(k,:) = nanmean(fcyeo(k,(211:246)));
end
vasc(vasc==0)=nan;
vattention(b,8) = nanmean(vasc);

vattentionbetween = array2table(vattention);
vattentionbetween.Properties.VariableNames{1} = 'va_v';
vattentionbetween.Properties.VariableNames{2} = 'va_sm';
vattentionbetween.Properties.VariableNames{3} = 'va_da';
vattentionbetween.Properties.VariableNames{4} = 'va_va';
vattentionbetween.Properties.VariableNames{5} = 'va_lim';
vattentionbetween.Properties.VariableNames{6} = 'va_fp';
vattentionbetween.Properties.VariableNames{7} = 'va_dm';
vattentionbetween.Properties.VariableNames{8} = 'va_sub';

%limbic
for k = 119:146;
lifp(k,:) = nanmean(fcyeo(k,(147:176)));
end
lifp(lifp==0)=nan;
limbic(b,6) = nanmean(lifp);
for k = 119:146;
lidm(k,:) = nanmean(fcyeo(k,(177:210)));
end
lidm(lidm==0)=nan;
limbic(b,7) = nanmean(lidm);
for k = 119:146;
lisc(k,:) = nanmean(fcyeo(k,(211:246)));
end
lisc(lisc==0)=nan;
limbic(b,8) = nanmean(lisc);

limbicbetween = array2table(limbic);
limbicbetween.Properties.VariableNames{1} = 'li_v';
limbicbetween.Properties.VariableNames{2} = 'li_sm';
limbicbetween.Properties.VariableNames{3} = 'li_da';
limbicbetween.Properties.VariableNames{4} = 'li_va';
limbicbetween.Properties.VariableNames{5} = 'li_lim';
limbicbetween.Properties.VariableNames{6} = 'li_fp';
limbicbetween.Properties.VariableNames{7} = 'li_dm';
limbicbetween.Properties.VariableNames{8} = 'li_sub';

%frontoparietal
for k = 147:176;
fpdm(k,:) = nanmean(fcyeo(k,(177:210)));
end
fpdm(fpdm==0)=nan;
frontoparietal(b,7) = nanmean(fpdm);
for k = 147:176;
fpsc(k,:) = nanmean(fcyeo(k,(211:246)));
end
fpsc(fpsc==0)=nan;
frontoparietal(b,8) = nanmean(fpsc);

frontoparietalbetween = array2table(frontoparietal);
frontoparietalbetween.Properties.VariableNames{1} = 'fp_v';
frontoparietalbetween.Properties.VariableNames{2} = 'fp_sm';
frontoparietalbetween.Properties.VariableNames{3} = 'fp_da';
frontoparietalbetween.Properties.VariableNames{4} = 'fp_va';
frontoparietalbetween.Properties.VariableNames{5} = 'fp_lim';
frontoparietalbetween.Properties.VariableNames{6} = 'fp_fp';
frontoparietalbetween.Properties.VariableNames{7} = 'fp_dm';
frontoparietalbetween.Properties.VariableNames{8} = 'fp_sub';

%default mode
for k = 177:210;
dmsc(k,:) = nanmean(fcyeo(k,(211:246)));
end
dmsc(dmsc==0)=nan;
defaultmode(b,8) = nanmean(dmsc);

defaultmodebetween = array2table(defaultmode);
defaultmodebetween.Properties.VariableNames{1} = 'dm_v';
defaultmodebetween.Properties.VariableNames{2} = 'dm_sm';
defaultmodebetween.Properties.VariableNames{3} = 'dm_da';
defaultmodebetween.Properties.VariableNames{4} = 'dm_va';
defaultmodebetween.Properties.VariableNames{5} = 'dm_lim';
defaultmodebetween.Properties.VariableNames{6} = 'dm_fp';
defaultmodebetween.Properties.VariableNames{7} = 'dm_dm';
defaultmodebetween.Properties.VariableNames{8} = 'dm_sub';
end

between = [visualbetween somatomotorbetween dattentionbetween vattentionbetween limbicbetween frontoparietalbetween defaultmodebetween];
