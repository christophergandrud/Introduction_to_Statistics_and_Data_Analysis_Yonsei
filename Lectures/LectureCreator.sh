##########
# Shell script to create lectures or seminars
# Christopher Gandrud
# Updated 15 September 2012
# Helpful information found in "The Linux Command Line: A Complete Introduction" (Shotts 2012)
##########

#!/bin/bash

read -p "Do you want to make a Lecture or Seminar? -> " l
read -p "Please enter the lecture number you want to compile -> " i

    # Make a new directory in the Lecture Folder
    mkdir /git_repositories/Introduction_to_Statistics_and_Data_Analysis_Yonsei/Lectures/$l$i
    cd /git_repositories/Introduction_to_Statistics_and_Data_Analysis_Yonsei/Lectures/$l$i

    # Copy in style files
    cp -i /git_repositories/Introduction_to_Statistics_and_Data_Analysis_Yonsei/Lectures/Lecture1/beamerouterthemeStats.sty beamerouterthemeStats.sty
    
    cp -i /git_repositories/Introduction_to_Statistics_and_Data_Analysis_Yonsei/Lectures/Lecture1/beamerthemeStats.sty beamerthemeStats.sty 
    
    # Create new beamer slide
    cp -i /git_repositories/Introduction_to_Statistics_and_Data_Analysis_Yonsei/Lectures/CommonFiles/Header.txt  $l$i.Rnw
    
