clear all

%�摜��ǂݍ���
img = imread('img1.jpg');

%�]������菜��
[h,w,~] = size(img);
c = 37;
img = imcrop(img,[c 0 w-c*2-3 h]);
imshow(img)

%�摜a�Ɖ摜b�ɕ�������
[h,w,~] = size(img);
img_a = imcrop(img,[0 0 w/2-2 h]);
img_b = imcrop(img,[w/2+1 0 w/2-3 h]);

%�`�̍��ق����߂�
%figure;imshowpair(img_a,img_b)
figure;imshowpair(img_a,img_b,'diff')

%�摜a�Ɖ摜b��RGB�l�Ƌ��߂�
a_r = img_g_a(:,:,1);
a_g = img_g_a(:,:,2);
a_b = img_g_a(:,:,3);
b_r = img_g_b(:,:,1);
b_g = img_g_b(:,:,2);
b_b = img_g_b(:,:,3);

%�F�̍��ق����߂�
img_d = (a_r==b_r & a_g==b_g & a_b==b_b);
figure;imshow(img_d)