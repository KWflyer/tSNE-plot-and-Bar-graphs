D = 'C:\\Users\\sc\\Desktop\\KULU\\kulu-phd\\pdfcompressor\\UCMerced_LandUse';
%D = 'C:\\Users\\sc\\Desktop\\KULU\\kulu-phd\\pdfcompressor\\BanChauBhatBhat\\';
S = dir(D);
S = S(3:16);
cnt=1;
im = zeros(1400,256,256,3);
for ii = 1:numel(S)
    %E = dir(fullfile(D,S(ii).name,'E*'));
    %for jj = 1:numel(E)
        F = dir(fullfile(D,S(ii).name));
        F = F(3:102);
        for kk = 1:numel(F)
            N = fullfile(D,S(ii).name,F(kk).name);
            image = imread(N);
            [x,y,z] = size(image);
            x = min(x,256);
            y = min(y,256);
            N = zeros(256,256,3);
            N(1:x,1:y,1:z) = image(1:x,1:y,1:3);
            im(cnt,:,:,:) = N;
            cnt = cnt+1
        end
    %end
end

im_ = reshape(im,1400,196608);
%save('UCMpre.mat','im_','-v7.3');

rng default
Y = tsne(im_);
gscatter(Y(:,1),Y(:,2),label)
