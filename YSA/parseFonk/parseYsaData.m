    function [ysaAktivasyonFonk, ysaBirlestirmeFonk, ysaAgirlik] = parseYsaData(YSA, ysaData)
        [~, ysaDataSutun] = size(ysaData);
        ysaAktivasyonFonk = ysaData(1:YSA.toplamNoronSize);
        ysaBirlestirmeFonk = ysaData( (YSA.toplamNoronSize + 1) : (2 * YSA.toplamNoronSize ) );
        ysaAgirlik = ysaData( ( (2 * YSA.toplamNoronSize ) + 1 ) :ysaDataSutun);
    end