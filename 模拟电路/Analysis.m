x = 0:0.01:4*pi;
y = sin(x);
z = abs(y);
subplot(2,1,1); plot(x,y); ylim([-1.5,1.5]);
subplot(2,1,2); plot(x,z); ylim([-1.5,1.5]);