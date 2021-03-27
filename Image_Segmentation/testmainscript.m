%% image 1 code
%displays image in subplot
figure, subplot(2,2,1); 
%how many sweets are detected in 'this' image
[numfound1] = FindCandy1(image, 'Pink Spog');
%price of sweet
spogprice = 1; 
%price of sweets times the amount found
total1 = spogprice * numfound1; 
% changes the decimal place to show correct pricing
sprintf('%.2f',total1)
%displays number of sweets found, name of sweet, price of sweet, and total
%price
sweettotalmessage = strcat(num2str(numfound1),' x Pink Spog @ ' ,num2str(spogprice), 'p' ,' = ',num2str(total1), 'p');
%displays the title
title(sweettotalmessage);

subplot(2,2,2); 
[numfound2] = FindCandy1(image, 'Pink Coconut Rolls');
pinkprice = 1.5;
total2 = pinkprice * numfound2;
sprintf('%.2f',total2) %% changes the decimal place to show correct pricing
sweettotalmessage = strcat(num2str(numfound2),' x Pink Coconut Rolls @ ' ,num2str(pinkprice), 'p' ,' = ',num2str(total2), 'p');
title(sweettotalmessage);

subplot(2,2,3); 
[numfound3] = FindCandy1(image, 'Yellow Coconut Rolls');
yellowprice = 1.5;      
total3 = yellowprice * numfound3;
sprintf('%.2f',total3) %% changes the decimal place to show correct pricing
sweettotalmessage = strcat(num2str(numfound3),' x Yellow Coconut Rolls @ ' ,num2str(yellowprice), 'p' ,' = ',num2str(total3), 'p');
title(sweettotalmessage);

%subplot orginal images
subplot(2,2,4), imshow('1.bmp');
%total all amount of sweets
totalall1 = total1+total2+total3;
%display total amount of sweets and total amount of price
allsweets = strcat('Total sweets count = ' ,num2str(numfound1+numfound2+numfound3),', total price = ',num2str(totalall1), 'p');
title(allsweets);



%% image 2 code
figure, subplot(2,2,1); 
[numfound4] = FindCandy2(image, 'Yellow Coconut Rolls');
yellowprice = 1.5;
total4 = yellowprice * numfound4;
sprintf('%.2f',total4) %% changes the decimal place to show correct pricing
sweettotalmessage = strcat(num2str(numfound4),' x Yellow Coconut Rolls @ ' ,num2str(yellowprice), 'p' ,' = ',num2str(total4), 'p');
title(sweettotalmessage);

subplot(2,2,2); 
[numfound5] = FindCandy2(image, 'Chocolate Liquorice');
chocoprice = 1;
total5 = chocoprice * numfound5;
sprintf('%.2f',total5) %% changes the decimal place to show correct pricing
sweettotalmessage = strcat(num2str(numfound5),' x Chocolate Liquorice @ ' ,num2str(chocoprice), 'p' ,' = ',num2str(total5), 'p');
title(sweettotalmessage);


subplot(2,2,3); 
[numfound6] = FindCandy2(image, 'Pink Coconut Rolls');
pinkprice = 1.5;
total6 = pinkprice * numfound6;
sprintf('%.2f',total6) %% changes the decimal place to show correct pricing
sweettotalmessage = strcat(num2str(numfound6),' x Pink Coconut Rolls @ ' ,num2str(pinkprice), 'p' ,' = ',num2str(total6), 'p');
title(sweettotalmessage);

subplot(2,2,4), imshow('2.bmp');
totalall2 = total4+total5+total6;
allsweets = strcat('Total sweets count = ' ,num2str(numfound4+numfound5+numfound6),', total price = ',num2str(totalall2), 'p');
title(allsweets);



%% image 3 code
figure, subplot(3,2,1); 
[numfound7] = FindCandy3(image, 'Pink Spog');
spogprice = 1;
total7 = spogprice * numfound7;
sprintf('%.2f',total7) %% changes the decimal place to show correct pricing
sweettotalmessage = strcat(num2str(numfound7),' x Pink Spog @ ' ,num2str(spogprice), 'p' ,' = ',num2str(total7), 'p');
title(sweettotalmessage);

subplot(3,2,2); 
[numfound8] = FindCandy3(image, 'Pink Coconut Rolls');
pinkcoconutprice = 1.5;
total8 = pinkcoconutprice * numfound8;
sprintf('%.2f',total8) %% changes the decimal place to show correct pricing
sweettotalmessage = strcat(num2str(numfound8),' x Pink Coconut Rolls @ ' ,num2str(pinkcoconutprice), 'p' ,' = ',num2str(total8), 'p');
title(sweettotalmessage);

subplot(3,2,3); 
[numfound9] = FindCandy3(image, 'Yellow Coconut Rolls');
yellowcoconutprice = 1.5;
total9 = yellowcoconutprice * numfound9;
sprintf('%.2f',total9) %% changes the decimal place to show correct pricing
sweettotalmessage = strcat(num2str(numfound9),' x Yellow Coconut Rolls @ ' ,num2str(yellowcoconutprice), 'p' ,' = ',num2str(total9), 'p');
title(sweettotalmessage);

subplot(3,2,4); 
[numfound10] = FindCandy3(image, 'Liquorice Roll');
liquoriceprice = 1;
total10 = liquoriceprice * numfound10;
sprintf('%.2f',total10)
sweettotalmessage = strcat(num2str(numfound10),' x Liquorice Roll @ ' ,num2str(liquoriceprice), 'p' ,' = ',num2str(total10), 'p'); 
title(sweettotalmessage);

subplot(3,2,[5 6]), imshow('3.bmp');
totalall3 = total7+total8+total9+total10;
allsweets = strcat('Total sweets count = ' ,num2str(numfound7+numfound8+numfound9+numfound10),', total price = ',num2str(totalall3), 'p');
title(allsweets);



%% image 4 code
figure, subplot(3,2,1); 
[numfound11] = FindCandy4(image, 'Pink Coconut Rolls');
pinkcoconutprice = 1.5;
total11 = pinkcoconutprice * numfound11;
sprintf('%.2f',total11) %% changes the decimal place to show correct pricing
sweettotalmessage = strcat(num2str(numfound11),' x Pink Coconut Rolls @ ' ,num2str(pinkcoconutprice), 'p' ,' = ',num2str(total11), 'p');
title(sweettotalmessage);


subplot(3,2,2); 
[numfound12] = FindCandy4(image, 'Yellow Coconut Rolls');
yellowcoconutprice = 1.5;
total12 = yellowcoconutprice * numfound12;
sprintf('%.2f',total12) %% changes the decimal place to show correct pricing
sweettotalmessage = strcat(num2str(numfound12),' x Yellow Coconut Rolls @ ' ,num2str(yellowcoconutprice), 'p' ,' = ',num2str(total12), 'p');
title(sweettotalmessage);

subplot(3,2,3); 
[numfound13] = FindCandy4(image, 'Pink Spog');
spogprice = 1;
total13 = spogprice * numfound13;
sprintf('%.2f',total13) %% changes the decimal place to show correct pricing
sweettotalmessage = strcat(num2str(numfound13),' x Pink Spog @ ' ,num2str(spogprice), 'p' ,' = ',num2str(total13), 'p');
title(sweettotalmessage);


subplot(3,2,4); 
[numfound14] = FindCandy4(image, 'Liquorice Roll');
liquoriceprice = 1;
total14 = liquoriceprice * numfound14;
sprintf('%.2f',total14)
sweettotalmessage = strcat(num2str(numfound14),' x Liquorice Roll @ ' ,num2str(liquoriceprice), 'p' ,' = ',num2str(total14), 'p'); 
title(sweettotalmessage);




subplot(3,2,[5 6]), imshow('4.bmp');
totalall4 = total11+total12+total13+total14;
allsweets = strcat('Total sweets count = ' ,num2str(numfound11+numfound12+numfound13+numfound14),', total price = ',num2str(totalall4), 'p');
title(allsweets);

