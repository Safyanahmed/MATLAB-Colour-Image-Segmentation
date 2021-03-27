%creates a function called FindCandy2
function out = FindCandy2(image, candy_type)
%creates an if statment which runs to the next code if it can't detect the
%sweet type.
if strcmp(candy_type, 'Pink Coconut Rolls')
    %channel threshold values
    r1 = 100;
    r2 = 147;
    g1 = 81;
    g2 = 121;
    b1 = 69;
    b2 = 96;
    %size of the strel disk
    mainstrel = 14;
    mainstrel2 = 20;
    
    elseif strcmp(candy_type, 'Yellow Coconut Rolls')
    %channel threshold values
    r1 = 79;
    r2 = 161;
    g1 = 76;
    g2 = 151;
    b1 = 17;
    b2 = 29;
    %size of the strel disk
    mainstrel = 14;
    mainstrel2 = 10;
    
    elseif strcmp(candy_type, 'Chocolate Liquorice')
    %channel threshold values
    r1 = 60;
    r2 = 122;
    g1 = 33;
    g2 = 102;
    b1 = 22;
    b2 = 93;
    %size of the strel disk
    mainstrel = 5;
    mainstrel2 = 9;
   
end
%reads the image
I = imread('2.bmp');
%sets the colour channels
RedChan = I(:,:,1);
GreenChan = I(:,:,2);
BlueChan = I(:,:,3);

%pulls the thershold values from above into the variable names
candy = RedChan < r2 & RedChan > r1 & GreenChan<g2 & GreenChan >g1 & BlueChan<b2 & BlueChan>b1;

%first use the strel function
MyStrel = strel('disk',mainstrel);
MyStrel2 = strel('disk',mainstrel2);
%use imdilate to perform dilation with the strel
MyDilation = imdilate(candy,MyStrel);
%use imerode to perform the erosion with the strel
MyErosion = imerode(MyDilation,MyStrel2);
%detect sweets in image
[L,out] = bwlabel(MyErosion);



imshow(MyErosion);
end
