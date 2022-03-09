%% Example of Visualization with an animation in a MATLAB .fig 

%% Plot waves
waves.plotElevation(simu.rampTime);
try 
    waves.plotSpectrum();
catch
end

%% Plot response

% Plot heave response for body 1
output.plotResponse(1,3);

% Plot heave response for body 2
output.plotResponse(2,3);

% Plot heave forces for body 1
output.plotForces(1,3);

% Plot heave forces for body 2
output.plotForces(2,3);
