# Load openintro package
library(openintro)

# Load Data
data(census)

# Step-wise model
M1 <- lm(totalPersonalIncome ~ sex, data = census)

M2 <- lm(totalPersonalIncome ~ age, data = census)

M3 <- lm(totalPersonalIncome ~ maritalStatus, data = census)

M4 <- lm(totalPersonalIncome ~ raceGeneral, data = census)

#### Recode raceGeneral ####
census$raceCombined[census$raceGeneral == "Chinese"] <- "Asian"
census$raceCombined[census$raceGeneral == "Japanese"] <- "Asian"
census$raceCombined[census$raceGeneral == 
                      "Other Asian or Pacific Islander"] <- "Asian"
census$raceCombined[census$raceGeneral == "White"] <- "White"
census$raceCombined[census$raceGeneral == "Black"] <- "Black"
census$raceCombined[census$raceGeneral == "Other"] <- "Other"
census$raceCombined[census$raceGeneral == "Two major races"] <- "Other"
census$raceCombined[census$raceGeneral == 
                      "American Indian or Alaska Native"] <- "Other"
census$raceCombined <- as.factor(census$raceCombined)














M5 <- lm(totalPersonalIncome ~ raceCombined, data = census)

# Create Garbage Can Model
MGarbage <- lm(totalPersonalIncome ~ age + sex + raceCombined + maritalStatus, data = census)

# Garbage Can -Marital Status
MSmallGarbage <- lm(totalPersonalIncome ~ age + sex + raceCombined, data = census)


#### Simulate Values for a Range of Ages ####
library(Zelig)

# Run model 
MOut <- zelig(totalPersonalIncome ~ age + sex + raceCombined + maritalStatus, data = census, model = "normal", cite = FALSE)

# Set fitted values
AgeRange <- c(20:60)

XOut <- setx(MOut, age = AgeRange)

ZSim <- sim(MOut,x = XOut)

plot(ZSim)