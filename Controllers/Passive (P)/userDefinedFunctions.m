%Example of user input MATLAB file for post processing
close all

%Plot waves
waves.plotElevation(simu.rampTime);
try 
    waves.plotSpectrum();
catch
end

%Plot heave response for body 1
output.plotResponse(1,3);

%Plot heave response for body 2
%output.plotResponse(2,3);

%Plot heave forces for body 1
output.plotForces(1,3);

%Plot heave forces for body 2
%output.plotForces(2,3);

%Save waves and response as video
% output.saveViz(simu,body,waves,...
%     'timesPerFrame',5,'axisLimits',[-150 150 -150 150 -50 20],...
%     'startEndTime',[100 125]);

figure()
plot(output.controllers.time,output.controllers.power(:,3))
title('Controller Power')
ylabel('Power (W)')
xlabel('Time (s)')

%last 10 periods
endInd = length(output.controllers.power(:,3));
startTime = output.controllers.power(end,3) - 10*waves.period; % select last 10 periods
[~,startInd] = min(abs(output.controllers.power(:,3) - startTime));
disp('Controller Power:')
mean( mean(output.controllers.power(startInd:endInd,3)))
