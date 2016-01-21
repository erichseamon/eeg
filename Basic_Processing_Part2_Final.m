%
%This script takes all of the temp files that you added triggers to and
%combines them back into one file.  Again, you only need to change NSubs
%and ss = 


filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;


for ss = 1:NSubs
    
    [ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
    
    EEG = pop_loadset('filename','BabyEinstein_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','ArmRestraint_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','ArmRestraintRecovery_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','PlayWithToy_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','RemoveToy_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','ToyRecovery_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','LightsChanging_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','PeekABoo_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','PlayBaseline_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','StillFace1_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','PlayResumes1_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','StillFace2_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','PlayResumes2_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','StillFace3_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','PlayResumes3_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','PerceptionOfSounds_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','Witch_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','WitchRecovery_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','OldMan_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','OldManRecovery_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','Vampire_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','VampireRecovery_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','GasMask_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    EEG = pop_loadset('filename','GasMaskRecovery_Trigs.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG, EEG, CURRENTSET] = eeg_store (ALLEEG, EEG, 0);
    
    
    EEG = pop_mergeset(ALLEEG, [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24], 0);
    
    EEG = pop_saveset( EEG,  'filename', 'Baby_EEG_Merged.set', 'filepath', sprintf('%s%i/', filepath,ss));
    [ALLEEG EEG] = eeg_store (ALLEEG, EEG, CURRENTSET);
    
    ALLEEG = pop_delset (ALLEEG, [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25]);
    
    clear EEG;
    clear ALLEEG
    
end


%This script epochs your data into 1-second pieces.  Only change NSubs and
%ss = 

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    %Open file
    EEG = pop_loadset( 'filename', 'Baby_EEG_Merged.set', 'filepath', sprintf('%s%i/',filepath,ss));
    
    EEG = pop_epoch( EEG, {  '1'  '2'  '3'  '4'  '5'  '6'  '7'  '8'  '9'  '10'  '11'  '12'  '13'  '14'}, [0  1], 'newname', 'BDF file resampled epochs', 'epochinfo', 'yes');
    EEG = eeg_checkset( EEG );
    
    %Save
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'Baby_EEG_Epoched.set', 'savemode', 'onefile');
    
    clear eeg;
    
end


%This script eliminates bad channels. Only change NSubs and
%ss = 



filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    %Open file
    EEG = pop_loadset( 'filename', 'Baby_EEG_Epoched.set', 'filepath', sprintf('%s%i/',filepath,ss));
    
    %Reject channels that are 3 or more standard deviations beyond norms
    EEG = pop_rejchan(EEG, 'elec',[1:32] ,'threshold',3,'norm','on','measure','prob');
    EEG = eeg_checkset( EEG );
    
    %Save
    EEG = pop_saveset( EEG,  'filepath',  sprintf('%s%i/', filepath,ss),'filename', 'Baby_EEG_Remove_Bad_Chans.set', 'savemode', 'onefile');
    
    clear eeg;
    
end


%This script eliminates bad/noisy trials. Only change NSubs and
%ss = 



filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs

    EEG = pop_loadset('filename','Baby_EEG_Remove_Bad_Chans.set', 'filepath', sprintf('%s%i/', filepath,ss));
    
    EEG = pop_autorej(EEG,  'nogui', 'on', 'threshold',1000, 'eegplot', 'off');
    EEG = eeg_checkset( EEG );
    EEG = pop_rejepoch( EEG, find(EEG.reject.rejglobal), 0);
    
    EEG = pop_saveset( EEG, 'filename', 'Baby_EEG_Rej_Bad_Trials.set', 'filepath',  sprintf('%s%i/', filepath,ss));
    
    clear eeg;
end


%This script rereferences the data to the average of all electrodes. Only change NSubs and
%ss = 


filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs
    
    EEG = pop_loadset('filename','Baby_EEG_Rej_Bad_Trials.set', 'filepath', sprintf('%s%i/', filepath,ss));

    %Re-reference to average of all electrodes
    EEG = pop_reref( EEG, []);
    EEG = eeg_checkset( EEG );
    
    EEG = pop_saveset( EEG, 'filename', 'Baby_EEG_Reref.set', 'filepath',  sprintf('%s%i/', filepath,ss));
    
    clear eeg;

end

%This script rcomputes the ICA. Only change NSubs and
%ss = .  After running this script, you will them want to open up EEGLab in
%MATLAB and reject bad components or trials. Once that's done, you'll save
%the file as Baby_EEG_ICA_pruned.set.  Then move on to basic processing
%part 3 final


filepath = 'C:\Data\Baby_EEG\S';

alleeg_filename = 'Baby_EEG_Reref.set';

ica_filename = 'Baby_EEG_ICA.set';

NSubs = 1;

for ss = 1:NSubs
    
    EEG_ALL = pop_loadset( 'filename', alleeg_filename, 'filepath', sprintf('%s%i/',filepath,ss));
    EEG_ALL = eeg_checkset( EEG_ALL );
    
    EEG = pop_runica(EEG, 'extended', 1);
    EEG = eeg_checkset( EEG );
    EEG = pop_saveset( EEG,  'filename', ica_filename, 'filepath',sprintf('%s%i/',filepath,ss));
    EEG = eeg_checkset( EEG );
    
    clear EEG
end
clear eeg

