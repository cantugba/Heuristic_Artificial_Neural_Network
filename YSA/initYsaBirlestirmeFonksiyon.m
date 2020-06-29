function YSA = initYsaBirlestirmeFonksiyon(YSA, birlestirmeMapKey)
    birlestirmeMap = initBirlestirmeFonksiyon();
    [cikisKatmanBirlestirmeMapKey, ikinciGizliKatmanBirlestirmeMapKey, birinciGizliKatmanBirlestirmeMapKey] = parseNoronMapKey(YSA, birlestirmeMapKey);
    YSA = initCikisKatmanBirlestirmeFonksiyon(YSA, birlestirmeMap, cikisKatmanBirlestirmeMapKey);
    YSA = initIkinciGizliKatmanBirlestirmeFonksiyon(YSA, birlestirmeMap, ikinciGizliKatmanBirlestirmeMapKey);
    YSA = initBirinciGizliKatmanBirlestirmeFonksiyon(YSA, birlestirmeMap, birinciGizliKatmanBirlestirmeMapKey);
end

function YSA = initCikisKatmanBirlestirmeFonksiyon(YSA, aktivasyonMap, aktivasyonMapKey)
    for noronIndex = 1 : YSA.cikisKatman.noronSize
        YSA.cikisKatman.noron(noronIndex).birlestirmeFonk = aktivasyonMap( aktivasyonMapKey(noronIndex) );
    end
end

function YSA = initIkinciGizliKatmanBirlestirmeFonksiyon(YSA, aktivasyonMap, aktivasyonMapKey)
    for noronIndex = 1 : YSA.ikinciGizliKatman.noronSize
        YSA.ikinciGizliKatman.noron(noronIndex).birlestirmeFonk = aktivasyonMap( aktivasyonMapKey(noronIndex) );
    end
end

function YSA = initBirinciGizliKatmanBirlestirmeFonksiyon(YSA, aktivasyonMap, aktivasyonMapKey)
    for noronIndex = 1 : YSA.birinciGizliKatman.noronSize
        YSA.birinciGizliKatman.noron(noronIndex).birlestirmeFonk = aktivasyonMap( aktivasyonMapKey(noronIndex) );
    end
end