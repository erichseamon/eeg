

%This piece of script creates temporary conditions.  Just like above, you
%need to make sure your NSubs, and ss = , is correct.  The only thing you
%will ever need to change in this portion of the script are the times.
%Each time epoch for each condition is in its own bracket.  The first time
%is the start time and the second time is the end time (e.g. [350 (start
%time) 430 (end time)].  The time order matches the order of each temp
%condition found under CondName.  So, for example, [350 430] corresponds to
%BabyEinstein_Temp.  [499 589] corresponds to AremRestraint_Temp, etc.  
%Since times will be different for each participant, you will have to run this script
% one participant at a time.  When you're done running this script, move on
% to Create_Triggers_Final.m

clc;
clear;

pathname = 'C:\Users\erichs\Dropbox\ES Research\EEG\ES EEG.set';

NSubs = 1;

CondName = {'BabyEinstein_Temp', 'ArmRestraint_Temp', 'ArmRestraintRecovery_Temp', 'PlayWithToy_Temp', 'RemoveToy_Temp', 'ToyRecovery_Temp', 'LightsChanging_Temp',...
    'PeekABoo_Temp', 'PlayBaseline_Temp', 'StillFace1_Temp', 'PlayResumes1_Temp', 'StillFace2_Temp', 'PlayResumes2_Temp', 'StillFace3_Temp', 'PlayResumes3_Temp',...
    'PerceptionOfSounds_Temp', 'Witch_Temp', 'WitchRecovery_Temp', 'OldMan_Temp', 'OldManRecovery_Temp', 'Vampire_Temp', 'VampireRecovery_Temp', 'GasMask_Temp', 'GasMaskRecovery_Temp'};


%Only change the times here.  Do not touch anything else.
Time = {[350 430], [499 589], [590 720], [752 842], [842 908], [908 938], [1002 1053],...
    [1207 1277], [1342 1472], [1472 1600], [1600 1725], [1725 1855], [1855 1955], [1955 2107], [2107 2150],...
    [2177 2242], [2642 2652], [2652 2666], [2666 2676], [2676 2689], [2689 2700], [2700 2712], [2712 2726], [2726 2736]};

filepath = 'C:\Users\erichs\Dropbox\ES Research\EEG';

for ss = 1:NSubs
    
    
    EEG1 = pop_loadset(sprintf('%s%i',pathname));
    
    for ii = 1:length(CondName)
        
        EEG = pop_select( EEG1,'time',[Time{ii}] );
        EEG = eeg_checkset( EEG );
        filename = [CondName{ii},'.set'];
        EEG = pop_saveset( EEG, sprintf('%s', filepath, filename));
        EEG = eeg_checkset( EEG );
        
        clear EEG;
        
    end
    clear EEG1;
end
