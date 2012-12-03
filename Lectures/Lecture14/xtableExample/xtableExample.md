# xtable Package Example
## Yonsei Social Science Data Analysis
### Christopher Gandrud

---

This is a short demostration of how to automatically create tables in R Markdown with the `xtable` package.

For this example, we'll first load World Bank GDP per Capita and Infant Mortality data.


```r
# Load package
library(devtools)

# Gather data using source code at: http://bit.ly/OTWEGS Data is stored in
# a data frame: MortalityGDP
source_url("http://bit.ly/SFf2qz")
```


Now estimate a model with `lm`.


```r
# Estimate constricted model
M1 <- lm(InfantMort ~ GDPperCapita, data = MortalityGDP)
```


Finally create the table.

```r
# Load xtable
library(xtable)

# Create and print table
print(xtable(M1), type = "html")
```

<!-- html table generated in R 2.15.2 by xtable 1.7-0 package -->
<!-- Mon Dec  3 14:15:58 2012 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> Estimate </TH> <TH> Std. Error </TH> <TH> t value </TH> <TH> Pr(&gt |t|) </TH>  </TR>
  <TR> <TD align="right"> (Intercept) </TD> <TD align="right"> 45.1512 </TD> <TD align="right"> 1.1865 </TD> <TD align="right"> 38.05 </TD> <TD align="right"> 0.0000 </TD> </TR>
  <TR> <TD align="right"> GDPperCapita </TD> <TD align="right"> -0.0013 </TD> <TD align="right"> 0.0001 </TD> <TD align="right"> -16.27 </TD> <TD align="right"> 0.0000 </TD> </TR>
   </TABLE>


---

**Note:** This won't work with Zelig estimated models using robust standard errors. You can get around this problem, but it takes some work. See me if you are interested.
