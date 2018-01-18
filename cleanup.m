if isempty(currentFigures), currentFigures = []; end;
close(setdiff(findall(0, 'type', 'figure'), currentFigures))
clear mex
delete *.mexw64
[~,~,~] = rmdir('C:\Sumpurn\gpucoderdemo_fog_rectification\codegen','s');
clear C:\Sumpurn\gpucoderdemo_fog_rectification\fog_rectification.m
delete C:\Sumpurn\gpucoderdemo_fog_rectification\fog_rectification.m
delete C:\Sumpurn\gpucoderdemo_fog_rectification\foggyInput.png
clear
load old_workspace
delete old_workspace.mat
delete C:\Sumpurn\gpucoderdemo_fog_rectification\cleanup.m
cd C:\Sumpurn
rmdir('C:\Sumpurn\gpucoderdemo_fog_rectification','s');
