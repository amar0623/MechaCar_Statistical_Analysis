library(dplyr)

# 1
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg))
# p-value: 5.35e-11
# r-squared: 0.6825

# 2
sus_coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

total_summary <- sus_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))


# 3
t.test(sus_coil$PSI, mu = 1500)

Lot1 = subset(sus_coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(sus_coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(sus_coil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu = 1500) 
# p-value = 1
t.test(Lot2$PSI, mu = 1500)
# p-value = 0.6072
t.test(Lot3$PSI, mu = 1500)
# p-value = 0.04168