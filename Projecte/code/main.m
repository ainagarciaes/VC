%% Minicodi per veure les diferents posicions de cada color

imGranate = imread('granate.png');
imatgeGranate = double(imGranate);
histoGranate = NormalitzaRGB(imatgeGranate); hold on;
histoGranate = Histo2D(histoGranate);
histoGranate = imgaussfilt(histoGranate, 2);

imGroc = imread('groc.png');
imatgeGroc = double(imGroc);
histoGroc = NormalitzaRGB(imatgeGroc); hold on;
histoGroc = Histo2D(histoGroc);
histoGroc = imgaussfilt(histoGroc, 2);

imBlanc = imread('blanc.png');
imatgeBlanc = double(imBlanc);
histoBlanc = NormalitzaRGB(imatgeBlanc); hold on;
histoBlanc = Histo2D(histoBlanc);
histoBlanc = imgaussfilt(histoBlanc, 2);

imLila = imread('lila.png');
imatgeLila = double(imLila);
histoLila = NormalitzaRGB(imatgeLila); hold on;
histoLila = Histo2D(histoLila);
histoLila = imgaussfilt(histoLila, 2);

imTaronja = imread('taronja.png');
imatgeTaronja = double(imTaronja);
histoTaronja = NormalitzaRGB(imatgeTaronja); hold on;
histoTaronja = Histo2D(histoTaronja);
histoTaronja = imgaussfilt(histoTaronja, 2);

subplot(2,3,1)
surf(histoGranate), title('surf del color Granate');
grid on
xlabel('x')
ylabel('y')
zlabel('z')
view(0,90)

subplot(2,3,2)
surf(histoTaronja), title('surf del color Taronja');
grid on
xlabel('x')
ylabel('y')
zlabel('z')
view(0,90)

subplot(2,3,3)
surf(histoGroc), title('surf del color Groc');
grid on
xlabel('x')
ylabel('y')
zlabel('z')
view(0,90)

subplot(2,3,4)
surf(histoBlanc), title('surf del color Blanc');
grid on
xlabel('x')
ylabel('y')
zlabel('z')
view(0,90)

subplot(2,3,5)
surf(histoLila), title('surf del color Lila');
grid on
xlabel('x')
ylabel('y')
zlabel('z')
view(0,90)



