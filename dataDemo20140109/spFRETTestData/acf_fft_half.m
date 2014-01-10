% calculate ACF by using fft
% lag will be averaged

function acf = acf_fft_half(data)

%Do the fft for data
data_mean = mean(data);
fft_data = fft(data);

%Do not work, for brocken the symmetry.
length_half = ceil(length(fft_data)/2);
fft_data = fft_data(1:length_half);

%Possible save mem method, may or may not work
%fft

acf = ifft(fft_data.*conj(fft_data)/fft_data(1))/data_mean -1 ;