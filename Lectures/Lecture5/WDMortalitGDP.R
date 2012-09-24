##################
# Gather World Bank Data on Mortality Rate & GDP per capita for 2009
# Christopher Gandrud
# Updated 24 September 2012
##################

#### Data to gather ####
# Mortality rate, infant (per 1,000 live births): SP.DYN.IMRT.IN
# GDP per capita (current US$): NY.GDP.PCAP.CD

# Load package
library(WDI)
library(countrycode)
library(reshape)

# Download data
MortalityGDP <- WDI(indicator = c("NY.GDP.PCAP.CD", "SP.DYN.IMRT.IN"), start = 2009, end = 2009, extra = TRUE)


#### Clean downloaded data ####
# Keep only countries
MortalityGDP$IMFCode <- countrycode(MortalityGDP$country, origin = "country.name", destination = "imf")

MortalityGDP <- subset(MortalityGDP, !is.na(IMFCode))

# Rename the main variables
MortalityGDP <- rename(MortalityGDP, c(SP.DYN.IMRT.IN = "InfantMortality"))
MortalityGDP <- rename(MortalityGDP, c(NY.GDP.PCAP.CD = "GDPperCapita"))

# Keep country GDPperCapita and InfantMortality variables
MortalityGDP <- MortalityGDP[, c("country", "GDPperCapita", "InfantMortality", "region", "income")]

# Recode region
MortalityGDP$region <- factor(MortalityGDP$region, labels = c("None", "EAP", "EUR", "LA", "ME", "NA", "SA", "SSA"))

# Remove EU
MortalityGDP <- subset(MortalityGDP, region != "None")

MortalityGDP$region <- factor(MortalityGDP$region)

