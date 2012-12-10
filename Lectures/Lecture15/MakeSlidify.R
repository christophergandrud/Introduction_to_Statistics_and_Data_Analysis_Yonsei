############
# Set up Simple Slidify Slideshow
# Christopher Gandrud
# 10 December 2012
############

# Set working Directory
setwd("/git_repositories/Introduction_to_Statistics_and_Data_Analysis_Yonsei/Lectures/Lecture15/")

# Load Slidify
library(slidify)

# Initialize slide show
author("SlidifyHowTo")

# Set working Directory
setwd("/git_repositories/Introduction_to_Statistics_and_Data_Analysis_Yonsei/Lectures/Lecture15/SlidifyHowTo/")

# Compile Slideshow
slidify("index.Rmd")

# Publish to RPubs
publish('SlidifyHowTo', host = 'dropbox')