library(tidyverse)
choco <- read.csv("https://ds202-at-isu.github.io/labs/data/choco.csv")
head(choco)
str(choco)
colnames(choco) #"Company", "Specific.Bean.Origin", "REF", "Review.Date", "Cocoa.Pct"           
#"Company.Location", "Rating", "Bean.Type","Broad.Bean.Origin" 

summary(choco) 

#Question set 1
tail(choco) #1852 total ratings
ggplot(choco, aes(x=as.factor(Review.Date))) + geom_bar() +
  ggtitle("Reviews by year")  +xlab("Year") + ylab("Number of Reviews")


ggplot(choco, aes(x=as.factor(Review.Date))) + geom_bar() +
  ggtitle("Reviews by year")  +xlab("Year") + ylab("Number of Reviews")

CountryChoco = dplyr::filter(choco, Company.Location %in% c("U.S.A.", "France", "Canada"))
