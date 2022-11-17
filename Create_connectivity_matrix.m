%% generation of functional connectivity and structural connectivity matrices
%generate functional connectivity matrix
c1 = T.f_connectome;

CM = [];
cmat = [];
nroi =  246;
cm_mask = logical(triu(ones(nroi),1));
for k = 1:numel(c1);
    load(fullfile(c1{k}));
    cm = .5*(X.Zmat + X.Zmat');
     CM(:,:,k) = cm;
     cm =triu(cm);
    cmat(:,k) = cm(cm_mask);
end

%generate structural connectivity matrix (number of streamlines)
c2 = T.s_connectome_sl;

CM2 = [];
cmat2 = [];
nroi =  246;
cm_mask2 = logical(triu(ones(nroi),1));
for k2 = 1:numel(c2);
    cm2 = readtable(fullfile(c2{k2}));
    cm2 = table2array(cm2);
    CM2(:,:,k2) = cm2;
     cm2 =triu(cm2);
    cmat2(:,k2) = cm2(cm_mask2);
end
