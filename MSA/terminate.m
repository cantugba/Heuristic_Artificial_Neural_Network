function [globalMin, lowerBand, upperBand, numberDimension, maximumEpoc, population] = terminate()
    global NitelikSize
    global birinciGizliKatman
    global ikinciGizliKatman
    global cikisKatman
    
    population = 50;
    tolerance = 0;
    globalMin = 0;
    
    noronSize = cikisKatman + ikinciGizliKatman + birinciGizliKatman;
    
    
    agirlikSize =  (cikisKatman *  ikinciGizliKatman) + ( ikinciGizliKatman * birinciGizliKatman) + ( birinciGizliKatman * NitelikSize);
    
    lowerBand = [ones(1, 2*(noronSize)), (zeros(1, agirlikSize) - 1)];
    upperBand =[ones(1,noronSize)*6, ones(1,noronSize)*4, ones(1, agirlikSize)];
    numberDimension = 2*(noronSize) + agirlikSize;
    maximumEpoc = (1000*numberDimension) + 80000; 
    globalMin = globalMin + tolerance;
    
end
