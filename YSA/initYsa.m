function [YSA] = initYsa(ysaData)
    
    %6 adet aktivasyon fonksiyonu var
    %4 adet birlestirme fonksiyonu var
    %a��rl�k dizisinin i�eri�i
    % ilk 20 parametre bir n�ronun aktivasyon ve birle�tirme fonksiyon
    % numaras�d�r
        %YSA y� olu�turmaya ��k�� katman�ndan ba�l�yoruz bu durumda
        %agirlik(1) => aktivasyon fonksiyonu.
        %agirlik(11) => birle�tirme fonksiyonudur.
    %ilk 20 parametreden sonra a��rl�klar gelmektedir.
    
    
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



    



    










