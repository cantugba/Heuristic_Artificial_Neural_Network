    function [cikisKatmanAgirlikSize, ikinciGizliKatmanAgirlikSize, birinciGizliKatmanAgirlikSize] = parsaYsaAgirlikSize(YSA, agirlik)
        [~, agirlikSize] = size(agirlik);
        cikisKatmanAgirlikSize = YSA.cikisKatman.noronSize * YSA.ikinciGizliKatman.noronSize;
        ikinciGizliKatmanAgirlikSize = YSA.ikinciGizliKatman.noronSize * YSA.birinciGizliKatman.noronSize;
        birinciGizliKatmanAgirlikSize = agirlikSize - (cikisKatmanAgirlikSize + ikinciGizliKatmanAgirlikSize);
    end