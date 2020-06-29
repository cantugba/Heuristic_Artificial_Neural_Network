    function [cikisKatmanAgirlikData, ikinciGizliKatmanAgirlikData, birinciGizliKatmanAgirlikData] = parseYsaAgirlikData(YSA, agirlik)
    
        [cikisKatmanAgirlikSize, ikinciGizliKatmanAgirlikSize, birinciGizliKatmanAgirlikSize] = parsaYsaAgirlikSize(YSA, agirlik);
        cikisKatmanAgirlikData = agirlik(1 : cikisKatmanAgirlikSize);
        ikinciGizliKatmanAgirlikData = agirlik(cikisKatmanAgirlikSize + 1 :  (ikinciGizliKatmanAgirlikSize + cikisKatmanAgirlikSize));
        birinciGizliKatmanAgirlikData = agirlik((ikinciGizliKatmanAgirlikSize + cikisKatmanAgirlikSize + 1) : (birinciGizliKatmanAgirlikSize + ikinciGizliKatmanAgirlikSize + cikisKatmanAgirlikSize));

    end