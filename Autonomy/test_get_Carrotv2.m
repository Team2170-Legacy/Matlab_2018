test.x = [0,1,2,3];
test.y = [1,2,3,4];
figure
hold on
plot(test.x,test.y, 'c-');
for j=0:100
    disp(j)
    carrot = get_Carrot(j,test);
  
    
    plot(carrot.x, carrot.y, 'r*');
end
    
