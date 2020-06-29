    function [cikisKatmanNoronMapKey, ikinciGizliKatmanNoronMapKey, birinciGizliKatmanNoronMapKey] = parseNoronMapKey(YSA, aktivasyonMapKey)
        cikisKatmanNoronMapKey = aktivasyonMapKey(1 : YSA.cikisKatman.noronSize);
        ikinciGizliKatmanNoronMapKey = aktivasyonMapKey( (YSA.cikisKatman.noronSize + 1) : ( YSA.cikisKatman.noronSize + YSA.ikinciGizliKatman.noronSize ));
        birinciGizliKatmanNoronMapKey = aktivasyonMapKey( (YSA.toplamNoronSize - YSA.birinciGizliKatman.noronSize + 1) : YSA.toplamNoronSize);
    end