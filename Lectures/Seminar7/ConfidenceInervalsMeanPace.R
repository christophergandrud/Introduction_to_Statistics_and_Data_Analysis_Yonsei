#############
# Compare Confidence Intervals for different sample sizes
# Christopher Gandrud 
# 18 October 2012
#############


## Load Data Cherry Blossom Data from Open Intro
install.packages("openintro")

library(openintro)

data(run10)

# Take a random sample of 100 runners
Run10Samp100 <- run10[sample(1:nrow(run10), 100,
                          replace=FALSE),]

# Take a random sample of 2000 runners
Run10Samp2000 <- run10[sample(1:nrow(run10), 2000,
                          replace=FALSE),]

# Take a random sample of 5000 runners
Run10Samp5000 <- run10[sample(1:nrow(run10), 5000,
                          replace=FALSE),]

# Histograms

# 100
#hist(Run10Samp100$pace)

# 2000
#hist(Run10Samp2000$pace)

# 5000
#hist(Run10Samp5000$pace)

#####
# Population mean of Pace
PopMean <- mean(run10$pace)
#####

# Load plotriz
library(plotrix)

## Sample n = 100 ##
Mean <- mean(Run10Samp100$pace)

# Confidence Interval
Lower <- Mean - 1.96 * std.error(Run10Samp100$pace)

Upper <- Mean + 1.96 * std.error(Run10Samp100$pace)

Sample <- "100"
ConfInterval1 <- data.frame(Sample, Lower, Mean, Upper)

## Sample n = 2000 ##
Mean <- mean(Run10Samp2000$pace)

# Confidence Interval
Lower <- Mean - 1.96 * std.error(Run10Samp2000$pace)

Upper <- Mean + 1.96 * std.error(Run10Samp2000$pace)

Sample <- "2000"
ConfInterval2 <- data.frame(Sample, Lower, Mean, Upper)

## Sample n = 5000 ##
Mean <- mean(Run10Samp5000$pace)

# Confidence Interval
Lower <- Mean - 1.96 * std.error(Run10Samp5000$pace)

Upper <- Mean + 1.96 * std.error(Run10Samp5000$pace)

Sample <- "5000"
ConfInterval3 <- data.frame(Sample, Lower, Mean, Upper)

# Combine
ConfInterval <- rbind(ConfInterval1, ConfInterval2, ConfInterval3)

## Plot Confidence intervals
library(ggplot2)

ggplot(ConfInterval, aes(x = Sample, 
                         y = Mean, 
                         ymin = Lower, 
                         ymax = Upper), colour = Sample) +
        geom_pointrange(size = 3) +
        geom_hline(aes(yintercept = PopMean), linetype = "dashed",
                   colour = "blue") +
        ggtitle("Compare Confidence Intervals for the Sample Mean of Pace\n") +
        theme_bw(base_size = 15)