% clear;
% n1=1:6;
% x10=[0.1,0.2,0.3,0.4,0.5,0.6];
% n2=2:8;
% x20=[0.2,0.3,0.4,0.5,0.6,0.7,0.8];
% n=1:8;
% x1=[x10,zeros(1,8-length(n1))];
% x2=[zeros(1,8-length(n2)),x20];
% x=x1+x2;
% subplot(3,1,1); stem(n,x1,'.k');
% subplot(3,1,2); stem(n,x2,'.k');
% subplot(3,1,3); stem(n,x,'.k');




% clear;
% figure;
% omega = 0:0.01:2*pi;

% sign = sin(omega);  
% background = sin(8*omega);
% signal = sign + background;

% subplot(3,1,1); plot(omega, sign, 'k');
% title('Sign Signal');

% subplot(3,1,2); plot(omega, background, 'k');
% title('Background Signal');

% subplot(3,1,3); plot(omega, signal, 'k');
% title('Combined Signal');


% clear;
% figure;
% omega = 0:0.01:4*pi;
% original = sin(omega)
% AmplitudeScaled = 2*original
% shifted = original + 1
% Resampled = original(1:2:end)
% subplot(2,2,1); plot(omega, original, 'k');
% title('Original Signal');
% subplot(2,2,2); plot(omega, AmplitudeScaled, 'k');
% title('Amplitude Scaled Signal');
% subplot(2,2,3); plot(omega, shifted, 'k');
% title('Shifted Signal');
% subplot(2,2,4); plot(omega(1:length(Resampled)), Resampled, 'k');
% title('Resampled Signal');

% n = -5:1:9;  
% x = [0,0,0,0.5,0,0,1.5,-1,0,1,0,0.75,0,0,0];  

% figure;

% subplot(2,2,1);
% stem(n, x, 'k'); 
% title('x[n]');
% xlabel('n'); ylabel('x[n]');
% grid on;

% n2 = -n;  
% x2 = x;

% subplot(2,2,2);
% stem(n2, x2, 'k'); 
% title('x[-n]'); 
% xlabel('n'); ylabel('x[-n]');
% grid on;

% n3 = -0.5 * n;
% x3 = x;

% subplot(2,2,3);
% stem(n3, x3, 'k'); 
% title('x[-2n]'); 
% xlabel('n'); ylabel('x[-2n]');
% grid on;

% n4 = -0.5 * n + 1.5;
% x4 = x;

% subplot(2,2,4);
% stem(n4, x4, 'k'); 
% title('x[-2(n-1.5)]'); 
% xlabel('n'); ylabel('x[-2n+3]');
% grid on;

% clear;
% n = 0:1:1000;
% n_d = decimate(n, 50);

% Convolution
% x = 0.5:0.5:1.5;
% y = ones(1, 3);
% z = conv(x, y);
% n = 1:1:5;
% subplot(3,1,1); stem(1:length(x), x, 'k');
% subplot(3,1,2); stem(1:length(y), y, 'k');
% subplot(3,1,3); stem(1:length(z), z, 'k');

% x = ones(1, 3);
% h = ones(1, 3);
% y= conv(x,h)

% x = 1:1:9;
% x1 = [zeros(1, 3), x, zeros(1, 3)];
% x2 = [zeros(1, 2), x, zeros(1, 4)];
% rxx=xcorr(x1)
% rxx1=xcorr(x1,x2)
% rxx2=xcorr(x2)
% subplot(5,1,1); stem(1:length(x1), x1, 'k');
% subplot(5,1,2); stem(1:length(x2), x2, 'k');
% subplot(5,1,3); stem(1:length(rxx), rxx, 'k');
% subplot(5,1,4); stem(1:length(rxx1), rxx1, 'k');
% subplot(5,1,5); stem(1:length(rxx2), rxx2, 'k');