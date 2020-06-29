function [hashFunction] = initAktivasyonFonksiyon()
    
     functionsData = {@sigmoidFunction, @hiperbolikTanFunction, @sinusFunction...
         @esikDegerFunction, @reluFunction, @leakyReluFunction};
     
     [~, sutun] = size(functionsData);
     keySet = 1:sutun;
     
     hashFunction = containers.Map(keySet,functionsData);
    
end

function sigmoid = sigmoidFunction(val)
    pay = 1;
    payda = 1 + exp(1)^(-1 * val);
    sigmoid = pay / payda;
end

function hiperbolik = hiperbolikTanFunction(val)
    pay = exp(1)^(2*val) - 1;
    payda = exp(1)^(2*val) + 1;
    hiperbolik = pay/payda;
end

function sinus = sinusFunction(val)
    sinus = sin(val);
end

function esikDeger = esikDegerFunction(val)
    if val <= 0
        esikDeger = 0;
    elseif 0 < val && val < 1
        esikDeger = val;
    else
        esikDeger = 1;
    end
end

function  relu = reluFunction(val)
    if val < 0
        relu = 0;
    else
        relu = val;
    end
end

function  leakyRelu = leakyReluFunction(val)
    if val < 0
        leakyRelu = 0.01;
    else
        leakyRelu = val;
    end
end
