function [c, lags]= acf_brute(data)

 

data_length = length(data);

 

for i = 0 : data_length -1

    mean1 = mean(data(1:data_length-i)) ;

    mean2 = mean(data(1+i:data_length)) ;

    lags(1+i) = i;

    c(1+i) = sum(data(1:data_length-i).*data(1+i:data_length))/mean1/mean2/(data_length - i) - 1;

end