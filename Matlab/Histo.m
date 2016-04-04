function [vectHistoR,vectHistoG,vectHistoB] = Histo( mat )
    vectHistoR=zeros(1,256);
    vectHistoG=zeros(1,256);
    vectHistoB=zeros(1,256);
    [x,y,z]=size(mat);
    for i = 1:x
        for j = 1:y
           vectHistoR(1,mat(i,j,1)+1)=vectHistoR(1,mat(i,j,1)+1)+1;
           vectHistoG(1,mat(i,j,2)+1)=vectHistoG(1,mat(i,j,2)+1)+1;
           vectHistoB(1,mat(i,j,3)+1)=vectHistoB(1,mat(i,j,3)+1)+1;
        end
    end
    figure(1)
    title('Histogramme Rouge')
    bar(vectHistoR);
    figure(2)
    title('Histogramme Vert')
    bar(vectHistoG);
    figure(3)
    title('Histogramme Bleu')
    bar(vectHistoB);

end

