%% generation of functional connectivity and structural connectivity matrices

%generate structural connectivity matrix (number of streamlines)
c2 = T.s_connectome_sl;

CM2 = [];
cmat2 = [];
nroi =  246;
for k2 = 1:numel(c2);
    cm2 = readtable(fullfile(c2{k2}));
    cm2 = table2array(cm2);
    CM2(:,:,k2) = cm2;
    cmat2(:,k2) = cm2(CM050mask); %CM050mask = thresholding mask (e.g., 50%)
end

%generate functional connectivity matrix
c1 = T.f_connectome;
CM = [];
cmat = [];
nroi =  246;
for k = 1:numel(c1);
    load(fullfile(c1{k}));
    cm = .5*(X.Zmat + X.Zmat');
     CM(:,:,k) = cm;
     cm =triu(cm);
    cmat(:,k) = cm(CM050mask); 
end
