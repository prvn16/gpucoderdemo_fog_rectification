%% Generate CUDA code and MEX function
% Setup the input for code generation and create a configuration for GPU code
% generation.
inputImage = imread('foggyInput.png');

%% Run Code Generation

rr= RoboNouMiChiClass(1,2);
genCodeOnlyValue = true;
rr.genCode('lib','fog_rectification','embed','normal',genCodeOnlyValue, "{inputImage}");

