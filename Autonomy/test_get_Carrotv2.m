test1.x = [0,1,2,3];
test1.y = [1,2,3,4];

test2.x     = [3    6   4   1];
test2.y     = [-2   -1  2   5];

test = test2;

figure
hold on
plot(test.x,test.y, 'c-');
for j=0:100
    %disp(j)
    carrot = get_Carrot(j,test);
  
    
    plot(carrot.x, carrot.y, 'r*');
end
    
