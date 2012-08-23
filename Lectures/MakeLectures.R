########
# Simple Script to slidify lectures
# Christopher Gandrud
#######


library(slidify)

setwd("/git_repositories/Introduction_to_Statistics_and_Data_Analysis_Yonsei/Lectures")

create_deck("Lecture1")

setwd("/git_repositories/Introduction_to_Statistics_and_Data_Analysis_Yonsei/Lectures/Lecture1")

slidify("index.Rmd")