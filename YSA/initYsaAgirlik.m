function YSA = initYsaAgirlik(YSA, agirlik)
%agirlikYsa = [1 2 2 2 2 3 3 3 3 3 1 2 2 2 2 3 3 3 3 3,ones(1,4)*10, ones(1, 20)*20, ones(1, 20)*30];
       
       [cikisKatmanAgirlikData, ikinciGizliKatmanAgirlikData, birinciGizliKatmanAgirlikData] = parseYsaAgirlikData(YSA, agirlik);
       YSA = initCikisKatmanAgirlik(YSA, cikisKatmanAgirlikData);
       YSA = initIkinciGizliKatmanAgirlik(YSA, ikinciGizliKatmanAgirlikData);
       YSA = initBirinciGizliKatman(YSA, birinciGizliKatmanAgirlikData);
end

function YSA = initCikisKatmanAgirlik(YSA, agirlik)
    [~, agirlikSutun] = size(agirlik);
    bagimsizDegiskenSize = agirlikSutun / YSA.cikisKatman.noronSize;
    
    for noronIndex = 1 : YSA.cikisKatman.noronSize
        YSA.cikisKatman.noron(noronIndex).agirlik = agirlik( (bagimsizDegiskenSize*(noronIndex) - (bagimsizDegiskenSize - 1)) : (bagimsizDegiskenSize*(noronIndex)) );
    end
end

function YSA = initIkinciGizliKatmanAgirlik(YSA, agirlik)
    [~, agirlikSutun] = size(agirlik);
    bagimsizDegiskenSize = agirlikSutun / YSA.ikinciGizliKatman.noronSize;
    
    for noronIndex = 1 : YSA.ikinciGizliKatman.noronSize
        YSA.ikinciGizliKatman.noron(noronIndex).agirlik = agirlik( (bagimsizDegiskenSize*(noronIndex) - (bagimsizDegiskenSize - 1)) : (bagimsizDegiskenSize*(noronIndex)) );
    end
end

function YSA = initBirinciGizliKatman(YSA, agirlik)
    [~, agirlikSutun] = size(agirlik);
    bagimsizDegiskenSize = agirlikSutun / YSA.birinciGizliKatman.noronSize;
    
    for noronIndex = 1 : YSA.birinciGizliKatman.noronSize
        YSA.birinciGizliKatman.noron(noronIndex).agirlik = agirlik( (bagimsizDegiskenSize*(noronIndex) - (bagimsizDegiskenSize - 1)) : (bagimsizDegiskenSize*(noronIndex)) );
    end

end