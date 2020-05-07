y = [0.131, 0.12,0.06,0.04;0.08,0.10,0.03,0.06;0.21,0.24,0.15,0.12; 0.34, 0.30, 0.32, 0.3;  0.467,0.429,0.362,0.298];
%y = [0.101  0.09 0.06 0.04;0.08 0.10 0.03 0.06;0.21 0.24 0.15 0.12;0.467 0.429 0.362 0.298;  0.467 0.429 0.362 0.298];
x= categorical({'w/o latent','w/o CE','w/o triplet','w/o decoder','Total'});
x= reordercats(x,{'w/o latent','w/o CE','w/o triplet','w/o decoder','Total'});


b = bar(x,y);
hold on;
b(1).FaceColor = [0, 0.4470, 0.7410];
b(2).FaceColor = [0.4660, 0.6740, 0.1880];
b(3).FaceColor = [0.3010, 0.7450, 0.9330];
b(4).FaceColor = 'y';
legend('Sketchy-SBIR','Sketchy-IBRS','TUBerlin-SBIR','TUBerlin-IBSR' );
title('Ablation study of each loss terms ')%for denoting the contribution of each losses in the fixed semantic vector SBIR, latent semantic vector SBIR, and latent semantic vector IBSR');
