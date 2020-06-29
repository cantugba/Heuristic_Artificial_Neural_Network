function [YSA] = createYsa(ysaData)
    global birinciGizliKatman
    global ikinciGizliKatman
    global cikisKatman

    noronSize = (cikisKatman + birinciGizliKatman + ikinciGizliKatman) * 2;
    [~, sutun] = size(ysaData);
    [YSA] = initYsa([ round(ysaData(1:noronSize)),  ysaData((noronSize+1):sutun)]);
end