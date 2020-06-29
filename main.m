clear
clc
Path;

sinifSayi = [6 2];
nitelikSayi = [10 13];

global Data
global DataSinif
global NitelikSize
global ClassSize
global birinciGizliKatman
global ikinciGizliKatman
global cikisKatman

birinciGizliKatman = 3;
ikinciGizliKatman = 4;

algorithms = {'sos'};
dataName = ["avila.xlsx", "Data_for_UCI_named.xlsx"];


for algorithmIndex = 1 : length(algorithms)
    algorithm = str2func(char(algorithms(algorithmIndex)));
    for dataIndex = 1 : 1
        NitelikSize = nitelikSayi(dataIndex);
        ClassSize = sinifSayi(dataIndex);
        cikisKatman = sinifSayi(dataIndex);
       % cikisKatman = 1;
        [Data, DataSinif] = getDataSet(dataName(dataIndex), 1001:2000);
        for runIndex = 1 : 4
              [bestSolution, bestFitness, iter] =  algorithm();
              bestYSA(:, runIndex) = bestSolution;
              bestHata(runIndex) = bestFitness;
              algorithmIter(runIndex) = iter;
        end  
        xlswrite(strcat(func2str(algorithm), '_avila', '.xlsx'), bestHata, "Hata");
        xlswrite(strcat(func2str(algorithm), '_avila', '.xlsx'), algorithmIter, "Iter");
        xlswrite(strcat(func2str(algorithm), '_avila', '.xlsx'), bestYSA, "YSA");
    end
end

    