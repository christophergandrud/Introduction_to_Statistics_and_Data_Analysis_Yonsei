# Using GoogleVis for Maps
## Christopher Gandrud
## Week 6: Visualisation

---




# Infant Mortality Map


```r
# Load library
library(googleVis)

# Create infant mortality map
MortMap <- gvisGeoMap(data = MortalityGDP,
                        locationvar = "country",
                        numvar = "InfantMortality",
                      options = list(colors = "[0xEDDD00, 0xED6700, 0xA04400]")
                      )

print(MortMap, "chart")
```

<!-- GeoMap generated in R 2.15.1 by googleVis 0.2.17 package -->
<!-- Tue Oct  2 20:09:53 2012 -->


<!-- jsHeader -->
<script type="text/javascript" src="http://www.google.com/jsapi">
</script>
<script type="text/javascript">
 
// jsData 
function gvisDataGeoMapID789e3e3bbf1 ()
{
  var data = new google.visualization.DataTable();
  var datajson =
[
 [
 "United Arab Emirates",
        6.3 
],
[
 "Afghanistan",
       76.2 
],
[
 "Antigua and Barbuda",
        7.2 
],
[
 "Albania",
       14.1 
],
[
 "Armenia",
       17.2 
],
[
 "Angola",
      100.1 
],
[
 "Argentina",
       13.4 
],
[
 "American Samoa",
null 
],
[
 "Austria",
        3.6 
],
[
 "Australia",
        4.3 
],
[
 "Aruba",
null 
],
[
 "Azerbaijan",
       41.9 
],
[
 "Bosnia and Herzegovina",
        7.1 
],
[
 "Barbados",
       16.9 
],
[
 "Bangladesh",
       40.5 
],
[
 "Belgium",
        3.7 
],
[
 "Burkina Faso",
       83.6 
],
[
 "Bulgaria",
       11.5 
],
[
 "Bahrain",
        8.9 
],
[
 "Burundi",
         89 
],
[
 "Benin",
       71.1 
],
[
 "Bermuda",
null 
],
[
 "Brunei Darussalam",
        5.9 
],
[
 "Bolivia",
       42.4 
],
[
 "Brazil",
       16.2 
],
[
 "Bahamas, The",
         14 
],
[
 "Bhutan",
       45.7 
],
[
 "Botswana",
       22.4 
],
[
 "Belarus",
        4.8 
],
[
 "Belize",
       15.8 
],
[
 "Canada",
          5 
],
[
 "Congo, Dem. Rep.",
      112.8 
],
[
 "Central African Republic",
      109.3 
],
[
 "Congo, Rep.",
       64.8 
],
[
 "Switzerland",
        4.1 
],
[
 "Cote d'Ivoire",
       83.3 
],
[
 "Chile",
        7.7 
],
[
 "Cameroon",
       81.1 
],
[
 "China",
       14.9 
],
[
 "Colombia",
       16.2 
],
[
 "Costa Rica",
        8.8 
],
[
 "Cuba",
        4.8 
],
[
 "Cape Verde",
       20.1 
],
[
 "Cyprus",
          3 
],
[
 "Czech Republic",
        3.6 
],
[
 "Germany",
        3.5 
],
[
 "Djibouti",
       74.2 
],
[
 "Denmark",
        3.5 
],
[
 "Dominica",
         11 
],
[
 "Dominican Republic",
       22.5 
],
[
 "Algeria",
       27.6 
],
[
 "Ecuador",
         21 
],
[
 "Estonia",
        3.6 
],
[
 "Egypt, Arab Rep.",
       20.4 
],
[
 "Eritrea",
       48.8 
],
[
 "Spain",
        3.9 
],
[
 "Ethiopia",
       56.5 
],
[
 "Finland",
        2.5 
],
[
 "Fiji",
       14.9 
],
[
 "Micronesia, Fed. Sts.",
       34.4 
],
[
 "Faeroe Islands",
null 
],
[
 "France",
        3.5 
],
[
 "Gabon",
       51.5 
],
[
 "United Kingdom",
        4.6 
],
[
 "Grenada",
       10.8 
],
[
 "Georgia",
       19.9 
],
[
 "Ghana",
       53.7 
],
[
 "Greenland",
null 
],
[
 "Gambia, The",
       59.2 
],
[
 "Guinea",
       83.1 
],
[
 "Equatorial Guinea",
       82.6 
],
[
 "Greece",
          4 
],
[
 "Guatemala",
       26.1 
],
[
 "Guam",
null 
],
[
 "Guinea-Bissau",
      100.1 
],
[
 "Guyana",
       31.2 
],
[
 "Hong Kong SAR, China",
null 
],
[
 "Honduras",
       19.8 
],
[
 "Croatia",
        4.8 
],
[
 "Haiti",
       55.9 
],
[
 "Hungary",
          6 
],
[
 "Indonesia",
       26.8 
],
[
 "Ireland",
        3.6 
],
[
 "Israel",
        3.8 
],
[
 "India",
         50 
],
[
 "Iraq",
       31.6 
],
[
 "Iran, Islamic Rep.",
       22.9 
],
[
 "Iceland",
        1.8 
],
[
 "Italy",
        3.4 
],
[
 "Jamaica",
       16.8 
],
[
 "Jordan",
       18.9 
],
[
 "Japan",
        2.4 
],
[
 "Kenya",
       51.9 
],
[
 "Kyrgyz Republic",
       29.2 
],
[
 "Cambodia",
       41.9 
],
[
 "Kiribati",
       39.5 
],
[
 "Comoros",
       61.4 
],
[
 "St. Kitts and Nevis",
        6.8 
],
[
 "Korea, Dem. Rep.",
       26.4 
],
[
 "Korea, Rep.",
        4.2 
],
[
 "Kuwait",
        9.5 
],
[
 "Cayman Islands",
null 
],
[
 "Kazakhstan",
       26.5 
],
[
 "Lao PDR",
       37.4 
],
[
 "Lebanon",
        9.1 
],
[
 "St. Lucia",
         14 
],
[
 "Sri Lanka",
       11.4 
],
[
 "Liberia",
       65.1 
],
[
 "Lesotho",
       68.3 
],
[
 "Lithuania",
        5.5 
],
[
 "Luxembourg",
        2.6 
],
[
 "Latvia",
        8.2 
],
[
 "Libya",
         14 
],
[
 "Morocco",
       30.6 
],
[
 "Moldova",
       14.4 
],
[
 "Montenegro",
        7.2 
],
[
 "Madagascar",
       45.9 
],
[
 "Marshall Islands",
       23.6 
],
[
 "Macedonia, FYR",
        9.7 
],
[
 "Mali",
      100.8 
],
[
 "Myanmar",
       50.5 
],
[
 "Mongolia",
       28.7 
],
[
 "Macao SAR, China",
null 
],
[
 "Mauritania",
       76.1 
],
[
 "Malta",
        5.2 
],
[
 "Mauritius",
       13.1 
],
[
 "Maldives",
       12.1 
],
[
 "Malawi",
       59.9 
],
[
 "Mexico",
       14.8 
],
[
 "Malaysia",
        6.1 
],
[
 "Mozambique",
       78.2 
],
[
 "New Caledonia",
null 
],
[
 "Niger",
       70.7 
],
[
 "Nigeria",
       83.4 
],
[
 "Nicaragua",
       23.6 
],
[
 "Netherlands",
        3.7 
],
[
 "Norway",
        2.8 
],
[
 "Nepal",
       42.4 
],
[
 "New Zealand",
        4.9 
],
[
 "Oman",
        8.5 
],
[
 "Panama",
       17.5 
],
[
 "Peru",
       16.2 
],
[
 "French Polynesia",
null 
],
[
 "Papua New Guinea",
       46.1 
],
[
 "Philippines",
       21.7 
],
[
 "Pakistan",
       61.9 
],
[
 "Poland",
        5.4 
],
[
 "Portugal",
          3 
],
[
 "Palau",
       15.2 
],
[
 "Paraguay",
       20.6 
],
[
 "Qatar",
          7 
],
[
 "Romania",
       12.8 
],
[
 "Serbia",
        6.7 
],
[
 "Russian Federation",
       10.9 
],
[
 "Rwanda",
       45.6 
],
[
 "Saudi Arabia",
        9.2 
],
[
 "Solomon Islands",
       19.7 
],
[
 "Seychelles",
       11.8 
],
[
 "Sudan",
       58.3 
],
[
 "Sweden",
        2.4 
],
[
 "Singapore",
        2.1 
],
[
 "Slovenia",
        2.5 
],
[
 "Slovak Republic",
        7.1 
],
[
 "Sierra Leone",
      123.3 
],
[
 "San Marino",
        1.9 
],
[
 "Senegal",
       49.3 
],
[
 "Somalia",
      108.3 
],
[
 "Suriname",
       27.2 
],
[
 "South Sudan",
       79.7 
],
[
 "Sao Tome and Principe",
       58.3 
],
[
 "El Salvador",
       15.1 
],
[
 "Syrian Arab Republic",
       14.1 
],
[
 "Swaziland",
         74 
],
[
 "Chad",
       98.5 
],
[
 "Togo",
       73.8 
],
[
 "Thailand",
       11.5 
],
[
 "Tajikistan",
       56.4 
],
[
 "Timor-Leste",
         51 
],
[
 "Turkmenistan",
       46.8 
],
[
 "Tunisia",
       15.5 
],
[
 "Tonga",
       13.8 
],
[
 "Turkey",
       13.6 
],
[
 "Trinidad and Tobago",
         25 
],
[
 "Tanzania",
       50.5 
],
[
 "Ukraine",
        9.8 
],
[
 "Uganda",
       62.5 
],
[
 "United States",
        6.5 
],
[
 "Uruguay",
        9.6 
],
[
 "Uzbekistan",
       43.1 
],
[
 "St. Vincent and the Grenadines",
       19.4 
],
[
 "Venezuela, RB",
       13.8 
],
[
 "Vietnam",
       18.8 
],
[
 "Vanuatu",
       12.6 
],
[
 "Samoa",
       16.5 
],
[
 "Yemen, Rep.",
       59.4 
],
[
 "South Africa",
       41.4 
],
[
 "Zambia",
       60.5 
],
[
 "Zimbabwe",
       48.1 
] 
];
data.addColumn('string','country');
data.addColumn('number','InfantMortality');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartGeoMapID789e3e3bbf1() {
  var data = gvisDataGeoMapID789e3e3bbf1();
  var options = {};
options["dataMode"] = "regions";
options["width"] =    556;
options["height"] =    347;
options["colors"] = [0xEDDD00, 0xED6700, 0xA04400];

     var chart = new google.visualization.GeoMap(
       document.getElementById('GeoMapID789e3e3bbf1')
     );
     chart.draw(data,options);
    

}
  
 
// jsDisplayChart 
function displayChartGeoMapID789e3e3bbf1()
{
  google.load("visualization", "1", { packages:["geomap"] }); 
  google.setOnLoadCallback(drawChartGeoMapID789e3e3bbf1);
}
 
// jsChart 
displayChartGeoMapID789e3e3bbf1()
 
<!-- jsFooter -->  
//-->
</script>
 
<!-- divChart -->
  
<div id="GeoMapID789e3e3bbf1"
  style="width: 556px; height: 347px;">
</div>


### Notes

- The results probably won't show up in the RStudio Preview window. You will need to open the HTML file in your web browser.

- To include in R Markdown you need to set the chunk option `results='asis`.

- Also it is important to `print` the map and use the argument `"chart"`.

- I probably need to change the name of "Russia",
