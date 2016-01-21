

%first clear the memory and the MATLAB workspace
%This portion of the script simply opens up the raw file, downsamples it to
%256 Hz, inserts the channel locations, filters the data, and saves it as a
%set file.  The only thing you should ever have to change is "NSubs" and
%the number after the "ss = "
%
%
%NSubs = the total number of babies you have in the study.  Right now you
%have 1, then 2, 3, etc.  Everytime you run a new baby you also need to
%change the loop number.  Think of NSubs as the total number of babies in
%the study, and the number after "ss = " as the subject number that you are
%starting at.  So, lets say you want to analyze data on 5 babies (so far), but you're starting with baby number 1.
%You would set NSubs  = 5, and ss = 1.  Then, let's say you add three more
%babies.  NSubs would now be 8 (5 previous babies that you already analyzed
%, plus 3 new ones), and ss = 6 (because you're starting with the 6th baby.
% After you've run this script, move on to Create_Temp_Conditions_Final.m


clc;
clear;

pathname = 'C:\Users\erichs\Dropbox\Baby_EEG.bdf';
NSubs = 1;


%EEG = pop_readbdf('C:\Users\erichs\Dropbox\Baby_EEG.bdf',0 1000)

for ss = 1:NSubs
    
    %Load BDF
    EEG = pop_biosig(sprintf('%s%i',pathname));
    EEG = eeg_checkset( EEG );
    
    %Resample to 256 Hz
    EEG = pop_resample(EEG, 256);
    EEG = eeg_checkset(EEG);
    
    %Assign Channel Locations
    EEG = pop_chanedit(EEG, 'load',{'C:\\Data\\Baby_EEG\\BioSemCords.ced' 'filetype' 'autodetect'});
    EEG = eeg_checkset( EEG );
    
    %Filter at 1 and 50 Hz
    EEG = pop_eegfiltnew(EEG, [], 1, 846, true, [], 0);
    EEG = eeg_checkset( EEG );
    EEG = pop_eegfiltnew(EEG, [], 100, 68, 0, [], 0);
    EEG = eeg_checkset( EEG );

    
    %Save
    EEG = pop_saveset( EEG,  'Baby_EEG_Basic_Processing.set',  sprintf('%s%i/', pathname,ss),'filename', 'Day1_Basic_Processing.set', 'savemode', 'onefile');
    EEG = eeg_checkset( EEG );
    
end