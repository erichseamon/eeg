%This script Interpolates bad Electrodes.  Change NSubs and ss = 

clc;
clear;

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;

for ss = 1:NSubs

[ALLEEG EEG CURRENTSET ALLCOM] = eeglab;
EEG = pop_loadset('filename','Baby_EEG_Basic_Processing.set','filepath','C:\Data\Baby_EEG\S1\');
[ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
EEG = pop_loadset('filename','Baby_EEG_ICA_pruned.set','filepath', sprintf('%s%i/',filepath,ss));
[ALLEEG, EEG, CURRENTSET] = eeg_store( ALLEEG, EEG, 0 );
EEG = eeg_checkset( EEG );
EEG = pop_interp(EEG, ALLEEG(1).chanlocs, 'spherical');
[ALLEEG EEG CURRENTSET] = pop_newset(ALLEEG, EEG, 2,'gui','off'); 
EEG = eeg_checkset( EEG );
EEG = pop_saveset( EEG, 'filename','Baby_EEG_Interpolate.set','filepath', sprintf('%s%i/',filepath,ss));
[ALLEEG EEG] = eeg_store(ALLEEG, EEG, CURRENTSET);
ALLEEG = pop_delset( ALLEEG, [1  2  3] );

end


%This script extracts your final conditions.  Change NSubs and ss = 

clc;
clear;

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;


CondName = {'BabyEinstein_Final', 'ArmRestraint_Final', 'ArmRestraintRecovery_Final', 'PlayWithToy_Final', 'RemoveToy_Final', 'ToyRecovery_Final', 'LightsChanging_Final',...
    'PeekABoo_Final', 'PlayBaseline_Final', 'StillFace_Final', 'PlayResumes_Final', 'PerceptionOfSounds_Final', 'Masks_Final', 'MasksRecovery_Final'};

Epoch_trigger = {'1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14'};


    for ss = 1:NSubs

       
        EEG1 = pop_loadset('filename','Baby_EEG_Interpolate.set', 'filepath', sprintf('%s%i/', filepath,ss));
        
        for ii = 1:length(CondName)

            EEG = pop_epoch( EEG1, Epoch_trigger(ii), [0 1], 'newname', CondName{ii}, 'epochinfo', 'yes');
            EEG = eeg_checkset( EEG );

            EEG = pop_saveset( EEG,  'filename', [CondName{ii},'.set'], 'filepath', sprintf('%s%i/', filepath,ss));
            EEG = eeg_checkset( EEG );
            
            clear EEG;

        end

        clear EEG1
    end 
    
    
    
%This script calculates asymmetry for each condition between F3/F4 and P3/P4.  
%It saves your data in a text file named Asymmetry.txt.  It saves the data
%in the order of CondName.  There will be two rows for each CondName.  The
%first row will be the values for F3/F4 for frequencies 4 through 7, and
%the second row will be for P3/P4
    

clc;
clear;

filepath = 'C:\Data\Baby_EEG\S';

NSubs = 1;


CondName = {'BabyEinstein_Final', 'ArmRestraint_Final', 'ArmRestraintRecovery_Final', 'PlayWithToy_Final', 'RemoveToy_Final', 'ToyRecovery_Final', 'LightsChanging_Final',...
    'PeekABoo_Final', 'PlayBaseline_Final', 'StillFace_Final', 'PlayResumes_Final', 'PerceptionOfSounds_Final', 'Masks_Final', 'MasksRecovery_Final'};


for ss = 1:NSubs
    
    
    
    
    for ii = 1:length(CondName)
        
        EEG = pop_loadset('filename',[CondName{ii},'.set'], 'filepath', sprintf('%s%i/', filepath,ss));
        
        left= 4;
        right = 27;
        [spec_4 freqs ] = spectopo(EEG.data(right,:), 256, 256, 'plot', 'off', 'overlap', 128);
        [spec_27 freqs ] = spectopo(EEG.data(left,:), 256, 256, 'plot', 'off', 'overlap', 128);
        [tmp minind] = find(freqs>3.5 & freqs<7.5);
        asymmetry1 = (mean(spec_4(tmp))) - (mean(spec_27(tmp)));
        dlmwrite('Asymmetry.txt', asymmetry1, 'delimiter','\t','precision', 3, 'newline', 'pc', '-append');
        
        
        left= 12;
        right = 19;
        [spec_12 freqs ] = spectopo(EEG.data(right,:), 256, 256, 'plot', 'off', 'overlap', 128);
        [spec_19 freqs ] = spectopo(EEG.data(left,:), 256, 256, 'plot', 'off', 'overlap', 128);
        [tmp minind] = find(freqs>3.5 & freqs<7.5);
        asymmetry1 = (mean(spec_12(tmp))) - (mean(spec_19(tmp)));
        dlmwrite('Asymmetry.txt', asymmetry1,'delimiter','\t','precision', 3, 'newline', 'pc', '-append');
        
    end
    
    clear EEG;
    
end
    