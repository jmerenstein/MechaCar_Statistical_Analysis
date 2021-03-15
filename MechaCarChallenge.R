#Deliverable 1

library(dplyr) # load in dplyr library

MechaCar <- read.csv('MechaCar_mpg.csv') #import dataset

View(MechaCar)

lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)) #generate summary statistics

#Deliverable 2

Suspeniosn_Coil <- read.csv('Suspension_Coil.csv') #import dataset

total_summary <- Suspeniosn_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- Suspeniosn_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),  .groups = 'keep') #create summary table

#Deliverable 3

#Part 1

t.test(log10(Suspeniosn_Coil$PSI),mu=mean(log10(1500))) #compare sample versus population means

# Part2
Lot1 <- subset(Suspeniosn_Coil, Manufacturing_Lot == "Lot1") #Lot 1 subset

Lot2 <- subset(Suspeniosn_Coil, Manufacturing_Lot == "Lot2") #Lot 2 subset

Lot3 <- subset(Suspeniosn_Coil, Manufacturing_Lot == "Lot3") #Lot 3 subset

t.test(log10(Lot1$PSI),mu=mean(log10(1500))) #compare Lot 1 versus population means

t.test(log10(Lot2$PSI),mu=mean(log10(1500))) #compare Lot 2 versus population means

t.test(log10(Lot3$PSI),mu=mean(log10(1500))) #compare Lot 3 versus population means


