clear all
close all
clc
img=imread('download.jpg');
figure
imshow(img)
img=rgb2gray(img);
img=imresize(img,[1024,1024]);
figure
imshow(img)
img=imbinarize(img);
figure
imshow(img)
magn_fac=zeros(9,1);
count=zeros(9,1);
[width,height]=size(img);
fprintf('Scaling factor  \t Black Pixel Count \n')
for i=1:10
    factor_s=2^i;
    boxes=factor_s^2;
    box_width=width/factor_s;
    box_height=height/factor_s;
    num_black=0;
    for b_n=0:boxes-1
        present_x=idivide(int32(b_n),int32(factor_s));
        present_y = rem(b_n,factor_s);
        start_x = present_x*box_width +1;
        last_x= start_x + box_width-1;
        start_y = present_y*box_height+1;
        last_y = start_y+ box_height -1;
        box= img([start_x:last_x],[start_y:last_y]);
        if (min(box(:))==0)
            num_black=num_black+1;
        end
    end
    fprintf('%d \t\t -> \t\t %d\n',factor_s,num_black);
    magn_fac(i)=factor_s;
    count(i)=num_black;
end
p = polyfit(log(count),-log(magn_fac),1);
plot(p)
D = polyfit(log(magn_fac),log(count),1)