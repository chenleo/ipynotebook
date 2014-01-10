% calculate acf value for specific tau:
function c_tau = acf_brute_tau(data,tau)

data_length = length(data);

mean1 = mean(data(1:data_length-tau));
mean2 = mean(data(1+tau:data_length));

c_tau = sum(data(1:data_length-tau).*data(1+tau:data_length))/mean1/mean2/(data_length - tau) - 1;