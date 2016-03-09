% This script runs the commands on this page of the wiki:
% http://episurg.pbworks.com/w/page/105900198/Overlaying%20Neuroimaging%20Data

%%
cfg=[];
cfg.view='lomni';
cfg.figId=2;
cfg.olayUnits='z';
cfg.pialOverlay='/Users/davidgroppe/GIT/EpiSurg/iELVis/EXAMPLE_NII_FILES/handMotorLH.mgh';
cfgOut=plotPialSurf('PT001',cfg);
% print -f2 -djpeg fmriOlayPial


%%
cfg=[];
cfg.view='omni';
cfg.figId=2;
cfg.elecCoord='n';
cfg.surfType='inflated';
cfg.olayThresh=3;
cfg.olayUnits='z';
cfg.pialOverlay{1}='/Users/davidgroppe/GIT/EpiSurg/iELVis/EXAMPLE_NII_FILES/handMotorLH.mgh';
cfg.pialOverlay{2}='/Users/davidgroppe/GIT/EpiSurg/iELVis/EXAMPLE_NII_FILES/handMotorRH.mgh';
cfgOut=plotPialSurf('PT001',cfg);
%print -f2 -djpeg fmriOlayInflated


%%
disp('testImagingOverlays.m completed completed successfully.');