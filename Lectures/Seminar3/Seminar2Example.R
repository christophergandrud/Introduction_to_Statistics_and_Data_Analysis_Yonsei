##########
# Seminar 3
# Christopher Gandrud
##########

# Numberic
Numbers <- c(7, 12, 14)

# Character 
Char <- c("House", "cat", "dog")

# Factor
Factor <- c(1, 0, 1)

# Create data frame
Data <- data.frame(Numbers, Char, Factor, options(stringsAsFactors = FALSE))

# Remove stringsAsFactors variable
Data <- Data[, 1:3]

# Set factor levels
# 0 = Happy 
# 1 = Sad
Data$Factor <- factor(Data$Factor, labels = c("Happy", "Sad"))
