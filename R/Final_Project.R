

## Final Project:

install.packages("here")

here::here()

here::here("Data", "healthy_lifestyle_city_2021.csv")
data <- read.csv(here::here("Data", "healthy_lifestyle_city_2021.csv"))
data

#1. Create a {gtsummary} table of descriptive statistics about your data
#install required packages:
(install.packages("gtsummary", dependencies = TRUE))
library(gtsummary)

# descriptive table:
names(data)
tbl_summary(
	data,
	include=
		c(City, Rank, Happiness_levels, Outdoor_activities,
						  YLE))

#2. Fit a regression and present well-formatted results from the regression
tbl_uvregression(
	data,
	y = Rank,
	include = c(Happiness_levels, Outdoor_activities,YLE
	),
	method = lm)

	#3. Create a figure:
install.packages("ggplot2")
library(ggplot2)
hist(data$Happiness_levels)
ggplot(data= {data},
			 aes(x= {YLE},
			 		fill= YLE)) +
	geom_bar()+
	labs(x= "Year_Life_Expectancy")

#4. Write and use a function that does something with the data:

summarize_var_bad <- function(data, variable) {
	data |>
		summarise(mean = mean({{variable}}, na.rm = TRUE))
}
summarize_var_bad(data, YLE)

plot_hist <- function(data, variable) {
	ggplot(data, aes(x = {{ variable }})) +
		geom_histogram(bins = 20) +
		theme_minimal()
}
plot_hist(data, YLE)
plot_hist(data, Happiness_levels)

#5. Create and render a quarto document that includes at least:



