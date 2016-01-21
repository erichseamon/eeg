

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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    filename = 'BabyEinstein_Temp.set'
    EEG = pop_loadset('filename','BabyEinstein_Temp.set', 'filepath', sprintf('%s', filepath,filename));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'BabyEinstein_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','ArmRestraint_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'ArmRestraint_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','ArmRestraintRecovery_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'ArmRestraintRecovery_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','PlayWithToy_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'PlayWithToy_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','RemoveToy_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'RemoveToy_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','ToyRecovery_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'ToyRecovery_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','LightsChanging_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'LightsChanging_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','PeekABoo_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'PeekABoo_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','PlayBaseline_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'PlayBaseline_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','StillFace1_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'StillFace1_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','PlayResumes1_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'PlayResumes1_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','StillFace2_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'StillFace2_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','PlayResumes2_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'PlayResumes2_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','StillFace3_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'StillFace3_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','PlayResumes3_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'PlayResumes3_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','PerceptionOfSounds_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'PerceptionOfSounds_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','Witch_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'Witch_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','WitchRecovery_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'WitchRecovery_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','OldMan_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'OldMan_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','OldManRecovery_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'OldManRecovery_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','Vampire_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'Vampire_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','VampireRecovery_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'VampireRecovery_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','GasMask_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'GasMask_Trigs.set', 'savemode', 'onefile');
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

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    
    EEG = pop_loadset('filename','GasMaskRecovery_Temp.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    % the following loop will populate the list with required information
    for k = 2:round((EEG.xmax-dur)/dur) % the loop runs until the end of the loaded dataset
        newEvent = cat(1, newEvent, {name newEvent{k-1,2}+dur dur}); %specs of one event are added on each run of the loop
    end
    EEG = pop_importevent( EEG, 'event',newEvent,'fields',{'type' 'latency' 'duration'},'timeunit',1,'optimalign','off'); % import the created event list to the loaded dataset
    
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'Recovery_Trigs.set', 'savemode', 'onefile');
end