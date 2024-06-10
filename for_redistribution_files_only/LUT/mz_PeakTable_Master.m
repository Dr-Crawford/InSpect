function [mass, lowerIntegrationLimit, upperIntegrationLimit, Names] = mz_PeakTable_Master(out)

if strcmp(out.instrument,'2R')

    [mass, lowerIntegrationLimit, upperIntegrationLimit, Names] = mz_PeakTable_MR6000;
    
elseif strcmp(out.instrument,'R')

    [mass, lowerIntegrationLimit, upperIntegrationLimit, Names] = mz_PeakTable_MR3000;
    
elseif strcmp(out.instrument,'S2')

    [mass, lowerIntegrationLimit, upperIntegrationLimit, Names] = mz_PeakTable_MR1000;
    
end