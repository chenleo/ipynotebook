function c0 = acf_0(data)

 

l = length(data);

mean_d = mean(data);

data_var = data - mean_d;

 

delta_2_mean = sum(data_var.^2)/l;

c0 = delta_2_mean/mean_d.^2;

