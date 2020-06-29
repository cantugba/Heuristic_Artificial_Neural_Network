function [YSA] = initYsa(ysaData)
    
    %6 adet aktivasyon fonksiyonu var
    %4 adet birlestirme fonksiyonu var
    %aðýrlýk dizisinin içeriði
    % ilk 20 parametre bir nöronun aktivasyon ve birleþtirme fonksiyon
    % numarasýdýr
        %YSA yý oluþturmaya çýkýþ katmanýndan baþlýyoruz bu durumda
        %agirlik(1) => aktivasyon fonksiyonu.
        %agirlik(11) => birleþtirme fonksiyonudur.
    %ilk 20 parametreden sonra aðýrlýklar gelmektedir.
    
    
    YSA = initYsaStruck();
    [ysaAktivasyonFonk, ysaBirlestirmeFonk, ysaAgirlik] = parseYsaData(YSA, ysaData);
    
    YSA = initYsaAktivasyonFonksiyon(YSA, ysaAktivasyonFonk);
    YSA = initYsaBirlestirmeFonksiyon(YSA, ysaBirlestirmeFonk);
    YSA = initYsaAgirlik(YSA, ysaAgirlik);
    YSA.dataSiniflandir = @dataSiniflandir;

end

function YSA = initYsaStruck()

    global birinciGizliKatman
    global ikinciGizliKatman
    global cikisKatman
    
    YSA.birinciGizliKatman.noronSize = birinciGizliKatman;
    YSA.ikinciGizliKatman.noronSize = ikinciGizliKatman;
    YSA.cikisKatman.noronSize = cikisKatman;
    YSA.toplamNoronSize = YSA.birinciGizliKatman.noronSize + YSA.ikinciGizliKatman.noronSize + YSA.cikisKatman.noronSize;
end



    



    










