# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
![image](https://user-images.githubusercontent.com/96644316/175821215-7d5b64d2-8da3-496a-a741-8bed192b7f63.png)

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
   * Intercept, ground clearance, and vehicle length gave a non-random amount of variance to the mpg values.
* Is the slope of the linear model considered to be zero? Why or why not?
   * With the significance being 0.05, we are able to reject the null hypothesis because of the small p-value. The null hypothesis of a linear regression states that the slope (β1) is equal to 0. However, if we reject the null hypthesis, we're stating that alternative (β1 ≠ 0) is true. Thus, proving that the slope is not 0.
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
   * The adjusted R-square value of 0.6825 suggests that this linear model does predict mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils
Lot Summary:  
![image](https://user-images.githubusercontent.com/96644316/175821350-4475a852-deed-4c35-b6af-e800f02f79a1.png)  
Total Summary:  
![image](https://user-images.githubusercontent.com/96644316/175821363-ccdd29bc-99dc-40f4-bdb0-f497cf9a258f.png)

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  * For the lots, the third lot has a significant difference in the amount of variance. This could indicate that up to a third of the lot exceeds 100 pounds per square inch. The total summary of variance has a value of 62, which would indicate that overall the current manufacturing data does meet the 100 pounds per square inch limitation.

## T-Tests on Suspension Coils
T-Test on entire lot:  
![image](https://user-images.githubusercontent.com/96644316/175821464-b934d481-737e-4604-9158-8da40f6c5954.png)  
T-Test on smaller lots:  
![image](https://user-images.githubusercontent.com/96644316/175821473-a8139c00-2bf3-49f6-9a36-63e7044d4eb3.png)  
We are unable to reject the null hypothesis for our tests on the entire lot, lot 1, and lot 2 because the p-values are higher than 0.05. The only test we are able to reject the null hypothesis for is lot 3 due to it's p-value of 0.04. 

## Study Design: MechaCar vs Competition
* What metric or metrics are you going to test?
  * We could test city and highway fuel effieciency.
* What is the null hypothesis or alternative hypothesis?
  * If a person commutes more than 10 miles per day, there will be no difference between city or highway fuel efficiency.
* What statistical test would you use to test the hypothesis? And why?
  * A multiple linear regression model would be best to account for different variables that could effect our study.
* What data is needed to run the statistical test?
  * Important data for our testing could include (but not be limited to) distance travelled per day, horsepower of vehicle, climate/terrain of environment, speed limits of areas, and MPG used.
