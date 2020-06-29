function sinif = dataSiniflandir(YSA, data)
    
    birinciKatmanCikti = zeros(1, YSA.birinciGizliKatman.noronSize);
    ikinciKatmanCikti = zeros(1, YSA.ikinciGizliKatman.noronSize);
    ciktiKatmanCikti = zeros(1, YSA.cikisKatman.noronSize);
    
    for birinciKatmanNoronIndex = 1 : YSA.birinciGizliKatman.noronSize
        birlestirmeSonuc = YSA.birinciGizliKatman.noron(birinciKatmanNoronIndex).birlestirmeFonk(data, YSA.birinciGizliKatman.noron(birinciKatmanNoronIndex).agirlik);
        aktivasyonSonuc = YSA.birinciGizliKatman.noron(birinciKatmanNoronIndex).aktivasyonFonk(birlestirmeSonuc);
        birinciKatmanCikti(birinciKatmanNoronIndex) = aktivasyonSonuc;
    end

    for ikinciKatmanNoronIndex = 1 : YSA.ikinciGizliKatman.noronSize
        birlestirmeSonuc = YSA.ikinciGizliKatman.noron(ikinciKatmanNoronIndex).birlestirmeFonk(birinciKatmanCikti, YSA.ikinciGizliKatman.noron(ikinciKatmanNoronIndex).agirlik);
        aktivasyonSonuc = YSA.ikinciGizliKatman.noron(ikinciKatmanNoronIndex).aktivasyonFonk(birlestirmeSonuc);
        ikinciKatmanCikti(ikinciKatmanNoronIndex) = aktivasyonSonuc;
    end

     for cikisKatmanNoronIndex = 1 : YSA.cikisKatman.noronSize
        birlestirmeSonuc = YSA.cikisKatman.noron(cikisKatmanNoronIndex).birlestirmeFonk(ikinciKatmanCikti, YSA.cikisKatman.noron(cikisKatmanNoronIndex).agirlik);
        aktivasyonSonuc = YSA.cikisKatman.noron(cikisKatmanNoronIndex).aktivasyonFonk(birlestirmeSonuc);
        ciktiKatmanCikti(cikisKatmanNoronIndex) = aktivasyonSonuc;
     end
     
     sinif = ciktiKatmanCikti;
end