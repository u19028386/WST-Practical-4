# Practical 4

# Name:

# Student Number:

#Packages:

library(fivethirtyeight)
library(ggplot2)
library(readr)

# Data:

# The first dataset of interest is:

summary(college_all_ages)
?college_all_ages

# The second dataset of interest is:

Penguin <- read.table('penguins.txt', header=TRUE, sep='\t')

# The third dataset of interest is:

Influenza <- read_csv('appendicitis_influenza.csv')

# Question 1a: 
q1a <- ggplot(
  data = college_all_ages,
  mapping = aes(
    x = total,
    y = median )) + geom_point()

plot(q1a)


# Question 1b
q1b <- ggplot(
  data = college_all_ages,
  mapping = aes(
    x = total,
    y = median, color = major_category  )) + geom_point()

plot(q1b)


# Question 1c:
q1c <- q1b +  
       labs(title = "Total vs Median" ,x = "Total",y = "Median") +
       theme(plot.title = element_text(hjust = 0.5))  + 
       guides(guide_legend) + 
       scale_x_continuous(labels = function(x) format(x, scientific = FALSE))

plot(q1c)

# Question 2a:
q2a <- ggplot(
  data = Penguin,
  mapping = aes(
    x = Bird,
    y = Dive.Heart.Rate ))  + geom_boxplot()

plot(q2a)

# Question 2b:
q2b <- ggplot(
  data = Penguin,
  mapping = aes(
    x = Bird,
    y = Dive.Heart.Rate ))  + geom_boxplot(fill = "blue", color = "red",alpha = 0.2)

plot(q2b)

# Question 2c:
q2c <- q2b + 
       labs(title = "Spread of Dive heart rates by bird species",x = "Bird",y = "Dive Heart Rate")




# Question 3a: 
q3a <- ggplot(
  data = Influenza,
  mapping = aes(x=Year)) + 
  geom_line(aes(y= Influenza),color="red") + 
  geom_line(aes(y= Appendicitis),color="blue")


# Question 3b:
q3b <- q3a + 
       geom_area(mapping=aes(y=Appendicitis),fill="blue",alpha=0.6) + 
       geom_area(mapping=aes(y=Influenza),fill="red")



# Question 3c:
q3c <- q3b + 
      labs(title = "Number Of Influenza And Appendicitis Case From 1970 to 2005", x = "Year",y= "Number Of Cases")




### DO NOT CHANGE THE VARIABLE BELOW
Syntax <- 1
