function YSA = initYsaAktivasyonFonksiyon(YSA, aktivasyonMapKey)
    aktivasyonMap = initAktivasyonFonksiyon();
    [cikisKatmanAktivasyonMapKey, ikinciGizliKatmanAktivasyonMapKey, birinciGizliKatmanAktivasyonMapKey] = parseNoronMapKey(YSA, aktivasyonMapKey);
    YSA = initCikisKatmanAktivasyonFonksiyon(YSA, aktivasyonMap, cikisKatmanAktivasyonMapKey);
    YSA = initIkinciGizliKatmanAktivasyonFonksiyon(YSA, aktivasyonMap, ikinciGizliKatmanAktivasyonMapKey);
    YSA = initBirinciGizliKatmanAktivasyonFonksiyon(YSA, aktivasyonMap, birinciGizliKatmanAktivasyonMapKey);
end

function YSA = initCikisKatmanAktivasyonFonksiyon(YSA, aktivasyonMap, aktivasyonMapKey)
    for noronIndex = 1 : YSA.cikisKatman.noronSize
        YSA.cikisKatman.noron(noronIndex).aktivasyonFonk = aktivasyonMap( aktivasyonMapKey(noronIndex) );
    end
end

function YSA = initIkinciGizliKatmanAktivasyonFonksiyon(YSA, aktivasyonMap, aktivasyonMapKey)
    for noronIndex = 1 : YSA.ikinciGizliKatman.noronSize
        YSA.ikinciGizliKatman.noron(noronIndex).aktivasyonFonk = aktivasyonMap( aktivasyonMapKey(noronIndex) );
    end
end

function YSA = initBirinciGizliKatmanAktivasyonFonksiyon(YSA, aktivasyonMap, aktivasyonMapKey)
    for noronIndex = 1 : YSA.birinciGizliKatman.noronSize
        YSA.birinciGizliKatman.noron(noronIndex).aktivasyonFonk = aktivasyonMap( aktivasyonMapKey(noronIndex) );
    end
end