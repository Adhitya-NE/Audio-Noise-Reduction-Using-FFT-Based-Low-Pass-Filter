audioasli = 'audioasli.wav';
[y, Fs] = audioread(audioasli);

t = seconds(0:1/Fs:(size(y,1)-1)/Fs);
figure(1);
plot(t, y);
ylim([-0.3 0.2])
title('Plot Sinyal Audio Asli');
xlabel('Durasi Audio');
ylabel('Amplitudo');

noisy = y + 0.01 * randn(length(y), 1);
audionoise = 'audiowithnoise.wav';
audiowrite(audiowithnoise, noisy, Fs);

figure(2)
plot(t, noisy);
ylim([-0.3 0.3]);
title('Plot Sinyal Audio Terkontaminasi Noise');
xlabel('Durasi Audio');
ylabel('Amplitudo');

n = length(t);
fhat1 = fft(noisy, n);
PSD = abs(fhat1);
PSD = PSD(:);
freq = (0:n-1)' * Fs / n;
L = 1:floor(n/2);
figure(3)
plot(freq(L), PSD(L));
title('Plot PSD Hasil FFT');
xlabel('Frekuensi');
ylabel('PSD');

threshold = 1500;
index = freq < threshold;
PSD_clean = PSD.*index;
figure(4)
plot(freq(L), PSD_clean(L));
title('Plot PSD Hasil Low-Pass Filter');
xlabel('Frekuensi');
ylabel('PSD');

fhat2 = fhat1.*index;
f_filtered = real(ifft(fhat2));
figure(5)
plot(t, f_filtered);
ylim([-0.15 0.15]);
title('Plot Sinyal Hasil Filter');
xlabel('Durasi Audio');
ylabel('Amplitudo');

audiofilter = 'audiofiltered.wav';
audiowrite(audiofiltered, f_filtered, Fs);
