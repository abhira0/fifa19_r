fifa = read.csv("1_cleaned_data.csv")
library(ggplot2)
theme_set(theme_classic())
options(scipen = 999)

# BOXPLOT OF AGE VS POSITION
print(ggplot(fifa, aes(Position, Age)) + geom_boxplot(varwidth=T, fill="plum") + labs(title="Box plot", 
       subtitle="Age"))
# BOXPLOT OF AGE VS PREFERRED FOOT
print(ggplot(fifa, aes(Preferred.Foot, Age)) + geom_boxplot(varwidth=T, fill="plum") + labs(title="Box plot",subtitle="Age"))

# FREQUENCY GRAPH FOR PREFFERED FOOT
library("ggpubr")
print(ggplot(fifa, aes(Preferred.Foot)) +geom_bar(fill = "#0073C2FF") +theme_pubclean())

# FREQUENCY GRAPH FOR POSITION
print(ggplot(fifa, aes(Position)) +geom_bar(fill = "#0073C2FF") +theme_pubclean())

# HISTOGRAM ON JERSEY NUMBER
ggplot(fifa, aes(x=Overall)) + geom_histogram(binwidth=1, color="black", fill="white")

# DENSITY PLOT OF AGE
print(ggplot(fifa, aes(x=Age)) + geom_density()+geom_vline(aes(xintercept = mean(Age)),color="blue", linetype="dashed", size=1))

#SCATTER PLOT FOR HEIGHT VS WEIGHT
print(ggplot(fifa, aes(x=Height, y =Weight)) + geom_point() + geom_smooth(method = lm))
print(ggplot(fifa, aes(x=Height, y =Weight)) + geom_bin2d()+geom_smooth(method = lm))


#SCATTER PLOT FOR OVERALL VS WAGE
print(ggplot(fifa, aes(x=Overall, y =Wage)) + geom_jitter()+geom_smooth()) +theme_cleveland()


