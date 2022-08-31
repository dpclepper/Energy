# Renewable Energy vs. Fossil Fuel Consumption/Production Analysis (using R)

# 1. Introduction to Datasets

I explored three datasets within this project and analyzed them individually and against each other. The three datasets are: renewable energy consumption, fossil fuel energy consumption, and renewable electricity output. The variables that I considered within each are as follows:
* Country Name
* Year
* Income group: high income, low income, lower middle income, and upper middle income
* Region: region corresponding to the country; East Asia & Pacific, Europe & Central Asia, Latin America & Caribbean, Middle East & North Africa, North America, South Asia, and Sub-Saharan Africa
* Renewable energy consumption (% of total final energy consumption)
* Fossil fuel energy consumption (% of total final energy consumption)
* Renewable electricity output (% of total electricity output)

# 2. Explore Data Analysis
The graphs below show the normal Q-Q plots for the percentages in all three datasets. Figure 1 shows the Q-Q plot for fossil fuel consumption. The graph is fairly linear meaning that the data is approximately normal. Figure 2 represents the Q-Q plot for renewable energy consumption. This graph was a lot less linear than I expected it to be. I thought it would increase linearly like Figure 1 did. Figure 3 is the Q-Q plot for renewable electricity used. Like the fossil fuel graph, the renewable electricity graph is approximately normal. However,  at the end and the beginning the points start to flatten out but the bulk of it is fairly linear.

| ![Figure123.png](Images/Figure123.png?raw=true) | 
|:--:| 
| ***Figures 1, 2, & 3*** |

Below are bar charts that show how the percentages change as year increases. Figure 4 shows the average percentage of fossil fuels used per year. The average percentage of fossil fuels used is about 35% higher than the average percentage of renewable energy shown in Figure 5 and the average percentage of renewable electricity used is shown in Figure 6. The renewable energy chart appears to steadily decrease as the year increases from 1990 to 2014 whereas the fossil fuel chart is more uniform. The renewable electricity graph hovers around 40% which was surprising because I thought it would increase as technology advanced and more things required the use of electricity.

| ![Figure4.png](Images/Figure4.png?raw=true) | ![Figure5.png](Images/Figure5.png?raw=true) | ![Figure6.png](Images/Figure6.png?raw=true) |
|:--:|:--:|:--:| 
| ***Figure 4*** | ***Figure 5*** | ***Figure 6*** |

The boxplots below are a depiction of how the geographical regions correlate to the information provided in each dataset between the years 1990 and 2015. Figure 7 graphs the average consumption of fossil fuels by region and shows us that the distributions in most regions are negatively skewed. It also shows that countries in South Asia/Sub-Saharan Africa use fossil fuels for a far less percentage of their total final energy consumption than countries in other regions. This may be because these regions have less access to resources as they contain the world’s Least Developed Countries. 

| ![Figure78.png](Images/Figure78.png?raw=true) |
|:--:|
| ***Figures 7 & 8*** |

Moreover, Figure 8 plots the average consumption of renewable energy by region and agrees with the information given to us in Figure 7. Contrary to Figure 7, this plot’s distributions are mostly positively skewed outside of South Asia and Sub-Saharan Africa. Countries in the Middle East & North Africa region use the least amount of renewable energy in comparison to its total energy consumption, while those in the Sub-Saharan Africa region use the most. 

| ![Figure9.png](Images/Figure9.png?raw=true) | 
|:--:| 
| ***Figure 9*** |

Furthermore, Figure 8 also matches the information provided in Figure 9, which plots the average output of renewable electricity by region. Like Figure 8, this boxplot shows us that countries in the Sub-Saharan Africa region put out the most amount of renewable electricity in comparison to its total electricity output, while those in the Middle East & North Africa region use the least. Overall, the boxplots show that there may exist a geographical correlation between fossil fuel consumption, renewable energy consumption, and renewable electricity output.

# 3. Regression Analysis

| ![Figure1011.png](Images/Figure1011.png?raw=true) |
|:--:|
| ***Figures 10 & 11*** |

The next step in the analysis was to investigate a linear regression model on the fossil fuel consumption data. I started by plotting the income groups vs. the number of occurrences of that income group in the data (Figure 11), with A, B, C, and D corresponding to high, low, lower middle, and upper middle income, respectively. From this, I gathered that there are a lot more high income countries than low income countries, which may influence the regression model, which I kept in mind for later on. I also did this with regions against occurrences (Figure 10) with 1 through 7 corresponding to East Asia & Pacific, Europe & Central Asia, Latin America & Caribbean, Middle East & North Africa, North America, South Asia, and Sub-Saharan Africa, respectively. From this, I can see that there are a lot of European countries and very few North American and South Asian countries, which is expected.

| ![Figure12.png](Images/Figure12.png?raw=true) |
|:--:|
| ***Figure 12*** |

Next, I decided to plot the percent of Fossil Fuel use that has changed between 1990 and 2014 (Figure 12), which I called “Change.” I did this because there were no other continuous variables to use that would be able to be done so consistently. I plotted this change variable against the index number of the data points to see the scatter. Since I noticed a random scatter, I concluded that the distribution was normal and to continue with the regression investigation. After verifying this, I began to work on the multiple regression model.

| ![Figure13.png](Images/Figure13.png?raw=true) |
|:--:|
| ***Figure 13*** |

For the regression model, I assigned change to the dependent variable, and Income Group and Region to the independent variables. After this, the scatterplot of the variables against each other was created (Figure 13). I mainly did this to look at the two independent variables (region and income group). They are both discrete, so I won’t be able to look for independence or correlation, but I can look to make sure the data is equal. Unfortunately, as you can see, North America and South Asia only have 1 income group. There is a chance of this causing a problem with the R code, so I should keep that in mind.










