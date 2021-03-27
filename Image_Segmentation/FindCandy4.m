%creates a function called FindCandy4
function out = FindCandy4(image, candy_type)
%creates an if statment which runs to the next code if it can't detect the
%sweet type.
if strcmp(candy_type, 'Pink Coconut Rolls')
   %channel threshold values
    r1 = 140;
    r2 = 174;
    g1 = 126;
    g2 = 149;
    b1 = 90;
    b2 = 148;
    %size of the strel disk
    mainstrel = 17;
    mainstrel2 = 30;
    
    elseif strcmp(candy_type, 'Pink Spog')
    %channel threshold values
    r1 = 82;
    r2 = 138;
    g1 = 23;
    g2 = 90;
    b1 = 43;
    b2 = 105;
    %size of the strel disk
    mainstrel = 2;
    mainstrel2 = 10;
    
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
    
    elseif strcmp(candy_type, 'Liquorice Roll') 
    %channel threshold values
    r1 = 12;
    r2 = 57;
    g1 = 4;
    g2 = 57;
    b1 = 11;
    b2 = 59;
    
    mainstrel = 8;
    mainstrel2 = 19;
end
%reads the image
I = imread('4.bmp');
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