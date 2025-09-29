clear
clc
current_path = pwd;
addpath(genpath(pwd));

%% JAFFE dataset. NMI: Mean(0.9813), Std(0.0057); RI: Mean(0.9945), Std(0.0022); Purity: Mean(0.9854), Std(0.0052).
load ./data/JAFFE_32x32.mat
load ./best_param/best_param_JAFFE.mat
dataset.fea = fea; 
dataset.gnd = gnd; 
[NMI, RI, Purity] = UMFNN(dataset, param);

%% ORL dataset. NMI: Mean(0.899), Std(0.0029); RI: Mean(0.9841), Std(0.0004); Purity: Mean(0.8371), Std(0.0042).
% load ./data/ORL_32x32.mat
% load ./best_param/best_param_ORL.mat
% dataset.fea = fea; 
% dataset.gnd = gnd; 
% [NMI, RI, Purity] = UMFNN(dataset, param);

%% UMIST dataset. NMI: Mean(0.8371), Std(0.0026); RI: Mean(0.9627), Std(0.0007); Purity: Mean(0.7717), Std(0.0049).
% load ./data/UMIST_32x32.mat
% load ./best_param/best_param_UMIST.mat
% dataset.fea = fea; 
% dataset.gnd = gnd; 
% [NMI, RI, Purity] = UMFNN(dataset, param);

%% Yale dataset. NMI: Mean(0.7519), Std(0); RI: Mean(0.9447), Std(0); Purity: Mean(0.8061), Std(0).
% load ./data/Yale_32x32.mat
% load ./best_param/best_param_Yale.mat
% dataset.fea = fea; 
% dataset.gnd = gnd; 
% [NMI, RI, Purity] = UMFNN(dataset, param);

%% CASIA-FaceV5 dataset. NMI: Mean(0.8506), Std(0); RI: Mean(0.9964), Std(0); Purity: Mean(0.6432), Std(0).
% load ./data/CASIA_32x32.mat
% load ./best_param/best_param_CASIA.mat
% dataset.fea = fea; 
% dataset.gnd = gnd; 
% [NMI, RI, Purity] = UMFNN(dataset, param);

%% COIL100 dataset. NMI: Mean(0.8767), Std(0.0005); RI: Mean(0.9916), Std(0.0001); Purity: Mean(0.7651), Std(0.0003).
% load ./data/COIL100_32x32.mat
% load ./best_param/best_param_COIL100.mat
% dataset.fea = fea; 
% dataset.gnd = gnd; 
% [NMI, RI, Purity] = UMFNN(dataset, param);

%% MNIST05 dataset. NMI: Mean(0.7707), Std(0.0125); RI: Mean(0.9385), Std(0.0059); Purity: Mean(0.0.8791), Std(0.0133).
% load ./data/MNIST05_28x28.mat
% load ./best_param/best_param_MNIST05.mat
% dataset.fea = fea; 
% dataset.gnd = gnd; 
% [NMI, RI, Purity] = UMFNN(dataset, param);

%% FMNIST5 dataset. NMI: Mean(0.8146), Std(0.0085); RI: Mean(0.9424), Std(0.0091); Purity: Mean(0.9228), Std(0.0076).
% load ./data/FMNIST5_28x28.mat
% load ./best_param/best_param_FMNIST5.mat
% dataset.fea = fea; 
% dataset.gnd = gnd; 
% [NMI, RI, Purity] = UMFNN(dataset, param);




