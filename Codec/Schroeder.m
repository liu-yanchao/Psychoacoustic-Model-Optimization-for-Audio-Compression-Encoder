function New_mask = Schroeder(Fs,N,freq,spl,center, fft_frame)
% Calculate the Schroeder masking spectrum for a given frequency and SPL

f_Hz = 1:Fs/N:Fs/2;

% Schroeder Spreading Function
dz = bark(freq)-bark(f_Hz);
mask = 15.81 + 7.5*(dz+0.474) - 17.5*sqrt(1 + (dz+0.474).^2);

% Slope
% BW = (25 + 75*(1+1.4*(freq/1000)^2)^0.69) / N;
% i = min(5*abs(fft_frame(center))*BW, 2.0);
% disp(i);
% mask = (15.81 - i) + 7.5*(dz+0.474) - (17.5 - i) * sqrt(1 + (dz+0.474).^2);

if freq < 2500
    downshift = 42.5 - bark(center*Fs/N);
else
    downshift = 14.5 + bark(center*Fs/N);
end
New_mask = (mask + spl - downshift);