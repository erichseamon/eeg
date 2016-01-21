

%Here is a piece of code that adds 1-second event-markers to a loaded
%EEGLAB dataset.  This will cycle through each of your temporary conditions
%and insert a trigger at every second.  As before, you only need to change
%NSubs and ss = .  Unlike the Create_Temp_Conditions_Final.m script, you
%can run maultiple subjects at once using this script.  Notice that you
%will need to change NSubs and ss = for every trigger.  There are 14.  Once
%they are assigned, they are forever.  Here's the list:
%
%1 = Baby Einstein
%2 = Arm Restraint
%3 = Arm Restraint Recovery
%4 = Play with toy
%5 = Remove toy
%6 = Toy recovery
%7 = Lights changing
%8 = Peek A Boo
%9 = Still face baseline
%10 = Still face
%11 = Play resumes
%12 = Perception of sounds
%13 = Masks
%14 = Masks recovery
%
%
%Once you're done with this script, move to Basic_Processing_Part2_Final.m


dur = 1; % the required duration of the new events
name = '1'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\';

NSubs = 1;

for ss = 1:NSubs
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'BabyEinstein_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    trigname = 'BabyEinstein_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '2'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'ArmRestraint_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
    
    % EEG = pop_loadset('filename','ArmRestraint_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'ArmRestraint_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '3'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'ArmRestraintRecovery_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'ArmRestraintRecovery_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '4'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'PlayWithToy_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'PlayWithToy_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '5'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'RemoveToy_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'RemoveToy_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '6'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'ToyRecovery_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'ToyRecovery_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '7'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'LightsChanging_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'LightsChanging_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '8'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'PeekABoo_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'PeekABoo_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '9'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'PlayBaseline_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'PlayBaseline_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '10'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'StillFace1_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'StillFace1_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '11'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'PlayResumes1_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'PlayResumes1_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end


%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '10'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'StillFace2_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'StillFace2_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '11'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'PlayResumes2_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'PlayResumes2_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '10'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'StillFace3_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'StillFace3_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '11'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'PlayResumes3_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'PlayResumes3_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end




%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '12'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'PerceptionOfSounds_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'PerceptionOfSounds_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '13'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'Witch_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'Witch_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '14'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'WitchRecovery_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'WitchRecovery_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '13'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'OldMan_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'OldMan_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '14'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'OldManRecovery_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'OldManRecovery_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end


%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '13'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'Vampire_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'Vampire_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '14'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'VampireRecovery_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'VampireRecovery_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end


%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '13'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'GasMask_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'GasMask_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

clear all;
clc;

dur = 1; % the required duration of the new events
name = '14'; % name of the new events that appears in EEGLAB scroll plot
newEvent = {name 0 dur}; % initiate the new event list (see help pop_importevent for details)

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG\conditions\'; 

NSubs = 1;

for ss = 1:NSubs
    
    filepath2 = 'C:\Users\erichs\Dropbox\ES Research\EEG\triggers\';
    filename = 'GasMaskRecovery_Temp.set';
    EEG = pop_loadset(sprintf('%s', filepath,filename));
        
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    trigname = 'GasMaskRecovery_Trigs.set'
    EEG = pop_saveset(EEG, sprintf('%s', filepath2,trigname));
end