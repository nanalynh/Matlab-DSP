n1=0:1:13;
x1=cos(2*(pi/3)*n1);
stem(n1,x1)
subplot(2,2,1)
 
n2=1:1:14;
x2=cos(2*(pi/3)*(n2-1));
stem(n2,x2)
subplot(2,2,2)
 
 
n3=2:1:15;
x3=cos(2*(pi/3)*(n3-2));
stem(n3,x3)
subplot(2,2,3)
 
 
n4=2:1:13;
y=cos(2*(pi/3)*n1)+cos(2*(pi/3)*(n2-1))+cos(2*(pi/3)*(n3-2));
stem(n1,y)
subplot(2,2,4)

n = 0:50;
y = cos(2*pi/3*n).*(heaviside(n)-heaviside(n-14));
h = [0 1 2 3];
y_conv = conv(y, h);
y_conv = y_conv(1:length(y));
stem(n, y_conv);
xlabel('n');
ylabel('y_{conv}(n)');