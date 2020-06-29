function [hashFunction] = initBirlestirmeFonksiyon()

     functionsData = {@toplamFunction, @carpimFunction, @maxFunction...
         @minFunction};
     
     [~, sutun] = size(functionsData);
     keySet = 1:sutun;
     
     hashFunction = containers.Map(keySet,functionsData);
end

function toplam = toplamFunction(data, ysaAgirlik)
    toplam = sum(data .* ysaAgirlik);
end

function carpim = carpimFunction(data, ysaAgirlik)
    carpim = prod(data .* ysaAgirlik);
end

function maxVal = maxFunction(data, ysaAgirlik)
    maxVal = max(data .* ysaAgirlik);
end

function minVal = minFunction(data, ysaAgirlik)
    minVal = min(data .* ysaAgirlik);
end