# Automatic Tables in R Markdown
## Christopher Gandrud
## Updated 27 September 2012

---

To automatically include a table in an R Markdown document use the `xtable` package with the `print` command.

For example, let's gather some data from the internet:


```r
# Load package
library(devtools)

# Gather data using source code at: http://bit.ly/OTWEGS Data is stored in
# a data frame: MortalityGDP
source_url("http://bit.ly/OTWEGS")

names(MortalityGDP)
```

```
## [1] "country"         "GDPperCapita"    "InfantMortality" "region"         
## [5] "income"
```


Now lets summarise the variable `GDPperCapita` in the `MoralityGDP` data frame.

To do this we use the `summary` command.


```r
# Sumarise MortalityGDP$GDPperCapita
Sum <- summary(MortalityGDP$GDPperCapita)

# Show contents of Sum
Sum
```

```
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
##     175    1160    4470   12200   14300  104000      12
```


For `summaryDefault` objects we have to change them into a data frame, like this:


```r
# First change to a matrix
SummaryValues <- as.matrix(Sum)

# Second change matrix to data frame
SummaryValues <- data.frame(SummaryValues)
```


Now we can use `xtable` and `print` to create an HTML table from this summary, We set the `print` argument `type = "html"` We use *knitr* to insert the table into our presentation document. To do this we need to use the *knitr* option `results='asis':


```r
# Load xtable
library(xtable)

# Create table
print(xtable(SummaryValues), type = "html")
```

<!-- html table generated in R 2.15.1 by xtable 1.7-0 package -->
<!-- Thu Sep 27 10:31:48 2012 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> SummaryValues </TH>  </TR>
  <TR> <TD align="right"> Min. </TD> <TD align="right"> 175.00 </TD> </TR>
  <TR> <TD align="right"> 1st Qu. </TD> <TD align="right"> 1160.00 </TD> </TR>
  <TR> <TD align="right"> Median </TD> <TD align="right"> 4470.00 </TD> </TR>
  <TR> <TD align="right"> Mean </TD> <TD align="right"> 12200.00 </TD> </TR>
  <TR> <TD align="right"> 3rd Qu. </TD> <TD align="right"> 14300.00 </TD> </TR>
  <TR> <TD align="right"> Max. </TD> <TD align="right"> 104000.00 </TD> </TR>
  <TR> <TD align="right"> NA's </TD> <TD align="right"> 12.00 </TD> </TR>
   </TABLE>

