# An Analysis of MechaCar

## Linear Regression to Predict MPG
- The variable or coefficients that provide non random amounts of variance to the mpg in the data set are vehicle length and ground clearance.
- The slope of the linear model here is not zero because the r squared value is .71. This means that roughly 71% of predictions will be accurate using this linear regression model.
- Yes the linear model does a pretty good job of projecting mpg of MechaCar prototypes because the r squared value is .71. Any r sqaured value that is above .70 for a model is considered to be an indicator of a strong correlation. Since this regression model is above .70, it has a strong correlation and therefore can be seen as doing a good job of projecting mpg of MechaCar prototypes. 

## Summary Statistics on Suspension Coils
-  The current manufacturing data does not meet the specification of the variance of the suspension coils not excedding 100 punds per square inch for every lot. As can be seen [here](https://github.com/jmerenstein/MechaCar_Statistical_Analysis/blob/main/lot_summary.png) the variance for Lot 1 and Lot 2 are way below 100, but the variance for Lot 3 is iver 170 punds per square inch and therefore does not meet the manufacturing specifications. 

## T-Tests on Suspension Coils
- When comparing the population mean of 1500 PSI to the mean PSI lot I found that only lot 3 had a significantly different average PSI. Lot 1 and Lot 2 both had p values well above the .05 number that would have made them significantly different from the population mean of 1500. But, as can bee seen [here](https://github.com/jmerenstein/MechaCar_Statistical_Analysis/blob/main/Lot3_Ttest.png) the Lot 3 mean had a p value at .03 which is below the .05 mark needed to be statisticallly significant. Therefore, we can reject the null hypothesis for Lot 3 and state there is a significant difference between the population mean and the Lot 3 mean.


