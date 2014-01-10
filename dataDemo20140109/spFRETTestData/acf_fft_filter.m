% filter out the ratio of frequency out of the center ratio (in frequency domain)
% ratio should belong to (0,1]

not yet finished.
function acf = acf_fft_filter(data, ratio)
if ratio > 1 || ratio <=0
    acf = nan;
    error('please use ratio in (0,1]');
end
%length of data:
length_data = length(data);

%Caculate mean
data_mean = mean(data);

%Do the fft for data
fft_data = fft(data);

%filter signal according to ratio
%fft

acf = ifft(fft_data.*conj(fft_data)/fft_data(1))/data_mean -1 ;