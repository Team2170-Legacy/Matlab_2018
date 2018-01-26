function y=draw_Cube(x, y)
init_Constants
x = x*ft;
y = y*ft;
halflength = 13/2*in;
%plot(x-halflength,y+halflength,'g*');
%plot(x-halflength, y-halflength, 'g*');
%plot(x+halflength, y+halflength, 'g*');
%plot(x+halflength, y-halflength, 'g*');

plot([x-halflength x-halflength x+halflength x+halflength x-halflength], [y+halflength y-halflength y-halflength y+halflength y+halflength], 'gre-');

