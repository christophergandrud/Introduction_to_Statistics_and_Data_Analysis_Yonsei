##################
# Gather World Bank Data on Mortality Rate & GDP per capita for all years
# Christopher Gandrud
# Updated 3 December 2012
##################

#### Data to gather ####
# Mortality rate, infant (per 1,000 live births): SP.DYN.IMRT.IN
# GDP per capita (current US$): NY.GDP.PCAP.CD

# Load package
library(WDI)
library(countrycode)
library(reshape)

# Download data
MortalityGDP <- WDI(indicator = c("NY.GDP.PCAP.CD", "SP.DYN.IMRT.IN"))


#### Clean downloaded data ####
# Keep only countries
MortalityGDP$IMFCode <- countrycode(MortalityGDP$country, origin = "country.name", destination = "imf")

MortalityGDP <- subset(MortalityGDP, !is.na(IMFCode))

# Rename the main variables
MortalityGDP <- rename(MortalityGDP, c(SP.DYN.IMRT.IN = "InfantMortality"))
MortalityGDP <- rename(MortalityGDP, c(NY.GDP.PCAP.CD = "GDPperCapita"))

# Keep country GDPperCapita and InfantMortality variables
MortalityGDP <- MortalityGDP[, c("country", "year", "GDPperCapita", "InfantMortality")]

# Reorder the data
MortalityGDP <- MortalityGDP[order(MortalityGDP$country, MortalityGDP$year),]