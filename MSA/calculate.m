function [ hataDegeri ] = calculate( ysaData )

    global Data
    global DataSinif
    global ClassSize
    
    [YSA] = createYsa(ysaData);
    hataDegeri = 0;
    
    [dataSatir, ~] = size(Data);

    for dataIndex = 1 : dataSatir
        
        ysaCikti = YSA.dataSiniflandir(YSA, Data(dataIndex,:));
        ysaTuru = size(ysaCikti, 2); % 1 tek çýkýþlý demek
        
        if ysaTuru == 1
            
            ysaSinifTahmin = round(ysaCikti * ClassSize) ;
            if ( DataSinif(dataIndex ) ~= ysaSinifTahmin), hataDegeri = hataDegeri + 1; end
            if ( ysaSinifTahmin < 0 ), hataDegeri = hataDegeri + 100; end
            
            
        else
            
            ysaSinifTahmin = round(ysaCikti) ;
            index =  find(ysaSinifTahmin == 1, 1);
            if isempty(index)
                hataDegeri = hataDegeri + 1000;
            else
                 if ( index ~= DataSinif(dataIndex) ), hataDegeri = hataDegeri + 1; end
            end
           

            
        end
        
    end
end