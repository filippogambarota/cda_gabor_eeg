% Reading Images

filepath = fileparts(which('crop_image.m'));
[images,  ~, imnames] = read_all_images(filepath, 'tiff', 1);

for im = 1:size(images, 1)
    temp = imcrop(images{im},[885  465 150 150]);
    imwrite(temp, fullfile("final", imnames{im}))
end