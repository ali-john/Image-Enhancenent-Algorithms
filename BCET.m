I = imread('pout.tif'); %READ THE INPUT IMAGE
figure,subplot(121), imshow(I);title('INPUT IMAGE');
x    = double(I); % INPUT IMAGE
Lmin = min(x(:)); % MINIMUM OF INPUT IMAGE
Lmax = max(x(:)); % MAXIMUM OF INPUT IMAGE
Lmean = mean(x(:)); %MEAN OF INPUT IMAGE
LMssum = mean(x(:).^2); %MEAN SQUARE SUM OF INPUT IMAGE

Gmin = 0; %MINIMUM OF OUTPUT IMAGE
Gmax = 255; %MAXIMUM OF OUTPUT IMAGE
Gmean = 110; %MEAN OF OUTPUT IMAGE

bnum = Lmax.^2*(Gmean-Gmin) - LMssum*(Gmax-Gmin) + Lmin.^2*(Gmax-Gmean);
bden = 2*(Lmax*(Gmean-Gmin)-Lmean*(Gmax-Gmin)+Lmin*(Gmax-Gmean));

b = bnum/bden;

a = (Gmax-Gmin)/((Lmax-Lmin)*(Lmax+Lmin-2*b));

c = Gmin - a*(Lmin-b).^2;

y = a*(x-b).^2+c; %PARABOLIC FUNCTION
y = uint8(y);

subplot(122),imshow(y);title('OUTPUT IMAGE');
