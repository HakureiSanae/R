#1.示例
manager <- c(1, 2, 3, 4, 5)
date <- c("10/24/08", "10/28/08", "10/1/08", "10/12/08", "5/1/09")
country <- c("US", "US", "UK", "UK", "UK")
gender <- c("M", "F", "F", "M", "F")
age <- c(32, 45, 25, 39, 99)
q1 <- c(5, 3, 3, 3, 2)
q2 <- c(4, 5, 5, 3, 2)
q3 <- c(5, 2, 5, 4, 1)
q4 <- c(5, 5, 5, NA, 2)
q5 <- c(5, 5, 2, NA, 1)
leadership <- data.frame(manager, date, country, gender, age,
                         q1, q2, q3, q4, q5, stringsAsFactors = FALSE)


#2.创建新变量
#方法1
mydata <- data.frame(x1 = c(2, 2, 6, 4), x2 = c(3, 4, 2, 8))
mydata$sumx <- mydata$x1 + mydata$x2
mydata$meanx <- (mydata$x1 + mydata$x2)/2

#方法2
attach(mydata)
  mydata$sumx <- x1 + x2
  mydata$meanx <- (x1 + x2) / 2
detach(mydata)
  
#方法3
mydata <- transform(mydata,
                   sumx = x1 + x2,
                   meanx = (x1 + x2) / 2 )

#变量的重编码
#方法1
leadership$age[leadership$age == 99] <- NA
leadership$agecat[leadership$age > 75] <- "Elder"
leadership$agecat[leadership$age >= 55 &
                  leadership$age <= 75] <- "Middle Aged"
leadership$agecat[leadership$age < 55] <- "Young"

#方法2
leadership <- within(leadership, {
                     agecat <- NA
                     agecat[age > 75 ] <- "Elder"
                     agecat[age >= 55 & age <= 75] <- "Middle Aged"
                     agecat[age < 55] <- "Young"})

#变量的重命名
#方法1交互式
fix(leadership)
#方法2
names(leadership)[2] <- "testData"
#方法3
library(plyr)
leadership <- rename(leadership, c(manager = "managerID", data = "testDate"))

#缺失值的处理
y <- c(1, 2, 3, NA)
is.na(y)
is.na(leadership[, 6:10])
#1.重编码值某些为缺失值
leadership$age[leadership == 99] <- NA
#2.在分析中排除缺失值
x <- c(1, 2, NA, 3)
y <- x[1] + x[2] + x[3] + x[4]
z <- sum(x)
y <- sum(x, na.rm = TRUE)

#日期值
                     
