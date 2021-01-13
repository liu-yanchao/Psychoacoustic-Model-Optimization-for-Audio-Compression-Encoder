clear; clc; 
fileList = dir('sounds/test_case/*.wav');
encoded_file_dir = 'sounds/encoded/';
odg_ref = [-2.03082976917243; -2.69613069552760; -1.72526227097227; -2.41158865446883];
odg_list = zeros(size(fileList));
for i =1:size(fileList, 1)
    file_name = fileList(i).name;
    encoded_file_name = strrep(file_name,'.wav','_64k.wav');
    file_dir = fileList(i).folder;
    file_path = strcat(file_dir,'/', file_name);
    encoded_file_path =strcat(encoded_file_dir, encoded_file_name);
    ref = file_path;
    test =  encoded_file_path;
    disp(ref);
    disp(test);
    [odg_list(i), movb] = PQevalAudio_fn(ref, test, 0, 9);
end

 overall = mean(odg_list - odg_ref);