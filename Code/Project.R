setwd("~/Documents/312/Project/Final Project with Data") #choose your own directory path

FFData = subset(read.csv('Fossil Fuel Data.csv', header=TRUE), select = -X)
FFClasses = subset(read.csv('Fossil Fuel Classes.csv', header=TRUE), select = -X)

REnergyData = subset(read.csv('Renewable Energy Data.csv', header=TRUE), select = -X)
REnergyClasses = subset(read.csv('Renewable Energy Classes.csv', header=TRUE), select = -X)

RElectriciyData = subset(read.csv('Renewable Electricity Data.csv', header=TRUE), select = -X)
RElectriciyClasses = subset(read.csv('Renewable Electricity Classes.csv', header=TRUE), select = -X)


FFData = FFData[complete.cases(FFData),]
REnergyData = REnergyData[complete.cases(REnergyData),]
RElectriciyData = RElectriciyData[complete.cases(RElectriciyData),]

FFData['Change'] = FFData$X2014-FFData$X1990
FFData$X1990 = NULL 
FFData$X2014 = NULL 
REnergyData['Change'] = REnergyData$X2014-REnergyData$X1990
REnergyData$X1990 = NULL 
REnergyData$X2014 = NULL 
RElectriciyData['Change'] = RElectriciyData$X2014-RElectriciyData$X1990
RElectriciyData$X1990 = NULL 
RElectriciyData$X2014 = NULL 

#FFData
#FFClasses
#REnergyData
#REnergyClasses
#RElectriciyData
#RElectriciyClasses

FFDataCombined = merge(FFData,FFClasses,by="Country.Code")
str(FFDataCombined)
FFDataCombined$TableName = NULL

REnergyDataCombined = merge(REnergyData,REnergyClasses,by="Country.Code")
str(FFDataCombined)
FFDataCombined$TableName = NULL

RElectriciyDataCombined = merge(RElectriciyData,RElectriciyClasses,by="Country.Code")
str(FFDataCombined)
FFDataCombined$TableName = NULL

unique(FFDataCombined$Region) 
length(FFDataCombined$Region[FFDataCombined$Region == "East Asia & Pacific"])
length(FFDataCombined$Region[FFDataCombined$Region == "Europe & Central Asia"])
length(FFDataCombined$Region[FFDataCombined$Region == "Latin America & Caribbean"])
length(FFDataCombined$Region[FFDataCombined$Region == "Middle East & North Africa"])
length(FFDataCombined$Region[FFDataCombined$Region == "North America"])
length(FFDataCombined$Region[FFDataCombined$Region == "South Asia"])
length(FFDataCombined$Region[FFDataCombined$Region == "Sub-Saharan Africa"])
unique(FFDataCombined$IncomeGroup)
length(FFDataCombined$IncomeGroup[FFDataCombined$IncomeGroup == "High income"])
length(FFDataCombined$IncomeGroup[FFDataCombined$IncomeGroup == "Low income"])
length(FFDataCombined$IncomeGroup[FFDataCombined$IncomeGroup == "Lower middle income"])
length(FFDataCombined$IncomeGroup[FFDataCombined$IncomeGroup == "Upper middle income"])

> barplot(colMeans(renewable[35:59], na.rm=TRUE), xlab="Year", ylab="average percentage of renewable energy used",ylim=c(0, 75),main="Avg. Percentage Renewable Energy Used Per Year")
> renewable=read.csv("/Users/juliakeegan/Downloads/Renewable Energy Data.csv")
> barplot(colMeans(renewable[35:59], na.rm=TRUE), xlab="Year", ylab="average percentage of renewable energy used",ylim=c(0, 75),main="Avg. Percentage Renewable Energy Used Per Year")
> colNames = c("CountryName", "CountryCode", substring(names(renewable[3:length(names(renewable))]), 2))
> names(renewable) = colNames
> barplot(colMeans(renewable[35:59], na.rm=TRUE), xlab="Year", ylab="average percentage of renewable energy used",ylim=c(0, 75),main="Avg. Percentage Renewable Energy Used Per Year")
> renewable=read.csv("/Users/juliakeegan/Downloads/Renewable Energy Data.csv")
> colNames = c("CountryName", "CountryCode", substring(names(renewable[3:length(names(renewable))]), 2))
> names(renewable) = colNames
> barplot(colMeans(renewable[35:59], na.rm=TRUE), xlab="Year", ylab="average percentage of renewable energy used",ylim=c(0, 75),main="Avg. Percentage Renewable Energy Used Per Year")

> qqnorm(colMeans(renewable[35:59], na.rm=TRUE))
> barplot(colMeans(renewable[35:59], na.rm=TRUE), xlab="Year", ylab="average percentage of renewable energy used",ylim=c(0, 75),main="Avg. Percentage Renewable Energy Used Per Year")
> barplot(colMeans(fossil[35:59], na.rm=TRUE), xlab="Year", ylab="average percentage of fossil fuels used",ylim=c(0, 75),main="Avg. Percentage Fossil Fuels used per year")
> barplot(colMeans(fossil[35:59], na.rm=TRUE), xlab="Year", ylab="average percentage of fossil fuels used",ylim=c(0, 90),main="Avg. Percentage Fossil Fuels used per year")
> barplot(colMeans(fossil[35:59], na.rm=TRUE), xlab="Year", ylab="average percentage of fossil fuels used",ylim=c(0, 100),main="Avg. Percentage Fossil Fuels used per year")
> fossil=read.csv("/Users/juliakeegan/Downloads/Fossil Fuel Data.csv")
> barplot(colMeans(fossil[35:59], na.rm=TRUE), xlab="Year", ylab="average percentage of fossil fuels used",ylim=c(0, 100),main="Avg. Percentage Fossil Fuels used per year")
> barplot(colMeans(fossil[35:59], na.rm=TRUE), xlab="Year", ylab="average percentage of fossil fuels used",ylim=c(0, 80),main="Avg. Percentage Fossil Fuels used per year")
> colNames = c("CountryName", "CountryCode", substring(names(renewable[3:length(names(renewable))]), 2))
> names(renewable) = colNames
> barplot(colMeans(fossil[35:59], na.rm=TRUE), xlab="Year", ylab="average percentage of fossil fuels used",ylim=c(0, 80),main="Avg. Percentage Fossil Fuels used per year")
> colNames = c("CountryName", "CountryCode", substring(names(fossil[3:length(names(fossil))]), 2))
> names(fossil) = colNames
> barplot(colMeans(fossil[35:59], na.rm=TRUE), xlab="Year", ylab="average percentage of fossil fuels used",ylim=c(0, 80),main="Avg. Percentage Fossil Fuels used per year")
> qqnorm(colMeans(fossil[35:59], na.rm=TRUE)
+ qqnorm(colMeans(fossil[35:59], na.rm=TRUE))
Error: unexpected symbol in:
"qqnorm(colMeans(fossil[35:59], na.rm=TRUE)
qqnorm"
> qqnorm(colMeans(fossil[35:59], na.rm=TRUE))
> qqline(colMeans(fossil[35:59], na.rm=TRUE))


xReg = unique(FFDataCombined$Region) 
yReg = c(14, 44, 21, 16, 2, 5, 19)
xInc = c('A', 'B', 'C', 'D')
yInc = c(48, 9, 28, 36)

#FFDataCombined$Change = factor(FFDataCombined$Change)
FFDataCombined$Region = factor(FFDataCombined$Region)
FFDataCombined$IncomeGroup = factor(FFDataCombined$IncomeGroup)
prop.model = lm(Change~Region+IncomeGroup, data = FFDataCombined)
pairs(~FFDataCombined$Change+FFDataCombined$Region+FFDataCombined$IncomeGroup,main="Simple Scatterplot Matrix")

plot(FFDataCombined$Change)
barplot(height = yReg, names.arg = c(1, 2, 3, 4, 5, 6, 7))
barplot(height = yInc, names.arg = xInc)

yhat = prop.model$fitted.values
res = prop.model$residuals
studRes = rstudent(prop.model)
yhat
res
plot(yhat, res, ylab = "residuals", xlab = "Fitted Value", main = "Residuals vs. Fitted")
abline(0,0)
plot(yhat, studRes, ylab = "Student Residuals", xlab = "Fitted Value", main = "Student Residuals vs. Fitted")
abline(0,0)

qqnorm(res, ylab = "Residuals", xlab = "Normal Score", main = "Residual Q-Q Plot")
qqline(res)
qqnorm(studRes, ylab = "Student Residuals", xlab = "Normal Score", main = "Student Residual Q-Q Plot")
qqline(studRes)

anova(prop.model)
summary(prop.model)

# Prediction
newdata=data.frame(Region='Europe & Central Asia',IncomeGroup='Low income') #Prediction of a new observation 
predict(prop.model, newdata)   
predict(prop.model, newdata, interval="predict") #Prediction with 95% C.I.


infPoints = cooks.distance(prop.model)
infPoints>1

#ANOVA table
anova(prop.model) #create an ANOVA table for a given model


# Residual Plots
yhat<-prop.model$fitted.values #Extract fitted values
res <- prop.model$residuals #Extract residuals
t<-rstudent(prop.model)    #Extract externally studentized residuals
stdres <- rstandard(prop.model) #Extract standardized residuals

#Normal Probability Plot
par(mfrow=c(1,2)) #Put different graphs into one screen - 1 col 2 rows

qqnorm(res, ylab="Residuals", xlab="Normal Scores",main="Residual Q-Q Plot") 
qqline(res)
qqnorm(t, ylab="Studentized Residuals", xlab="Normal Scores",main="Studentized Residual Q-Q Plot") 
qqline(t)

plot(yhat, res, ylab="Residuals", xlab="Fitted Value", main="Residual vs Fitted") #plot residuals against fitted values.
abline(0, 0)    #plot the 0 horizontal reference line

plot(yhat, t, ylab="Studentized", xlab="Fitted Value", main="Studentized Residual vs Fitted") #plot studentized residuals against fitted values.
abline(0, 0)    #plot the 0 horizontal reference line


#Compute Press residuals
pr <- res/(1 - lm.influence(prop.model)$hat)


#Compute Press Stat
require("MPV")
PRESS(prop.model) 
sum(pr^2)


#Show all built-in Influence measures
print(influence.measures(prop.model))


