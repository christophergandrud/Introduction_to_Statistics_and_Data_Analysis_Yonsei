##################
# Gather World Bank Data on Mortality Rate & GDP per capita for 2009
# Christopher Gandrud
# Updated 25 August 2015
##################

#### Data to gather ####
# Mortality rate, infant (per 1,000 live births): SP.DYN.IMRT.IN
# GDP per capita (current US$): NY.GDP.PCAP.CD

# Load package
library(WDI)
library(countrycode)
library(dplyr)

# Download data
MortalityGDP <- WDI(indicator = c("NY.GDP.PCAP.CD", "SP.DYN.IMRT.IN"), 
                    start = 2009, end = 2009, extra = TRUE)


#### Clean downloaded data ####
# Keep only countries
MortalityGDP$IMFCode <- countrycode(MortalityGDP$country, 
                                    origin = "country.name", destination = "imf")

MortalityGDP <- subset(MortalityGDP, !is.na(IMFCode))

# Rename the main variables
MortalityGDP <- dplyr::rename(MortalityGDP, InfantMortality = SP.DYN.IMRT.IN)
MortalityGDP <- dplyr::rename(MortalityGDP, GDPperCapita = NY.GDP.PCAP.CD)

# Keep country GDPperCapita and InfantMortality variables
MortalityGDP <- MortalityGDP[, c("country", "GDPperCapita", "InfantMortality", 
                                 "region", "income")]

# Recode region
MortalityGDP$region <- factor(MortalityGDP$region, 
                              labels = c("MENA", "S. Asia", "LAC", "EUR", "SSA",
                                         "EA", "NA"))

# Reorder income factor levels
library(gdata)

MortalityGDP$income <- reorder(MortalityGDP$income, new.order = c(
    "Aggregates", "High income: OECD", 
    "High income: nonOECD", "Upper middle income", 
    "Lower middle income", "Low income", 
    "Not classified"))

# Remove EU
MortalityGDP <- subset(MortalityGDP, region != "None")

MortalityGDP$region <- factor(MortalityGDP$region)
