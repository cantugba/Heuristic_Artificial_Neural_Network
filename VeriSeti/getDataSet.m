function [data,dataClasses] = getDataSet(file, dataIndex)

%     dataSetCSV = readtable(file);
%     dataSetCsv = dataSetCSV(:,1:attributeIndex);
%     dataClassesCSV =dataSetCSV(:,classIndex);
%     
%     data = table2array(dataSetCsv);
%     dataClasses =table2array(dataClassesCSV);
%     data = normalize(data,'range');
%     data = data(1:2000, :);
%     dataClasses = dataClasses(1:2000, :);

      data =  xlsread(file, 'data');
      dataClasses = xlsread(file, 'class');
      
      data = data(dataIndex, :);
      dataClasses = dataClasses(dataIndex, :);
end

