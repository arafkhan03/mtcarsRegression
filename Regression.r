dim(mtcars)
str(mtcars)
head(mtcars)
summary(mtcars)

library(ggplot2)

ggplot(mtcars, aes(x = am, y = mpg, group = 1, col = am)) +
        geom_boxplot() + geom_jitter() +
        geom_point() +
        ggtitle("MPG by Transmission Type") + 
        xlab("Transmission") + 
        ylab("MPG")

fit <- lm(mpg ~ ., data = mtcars)
summary(fit)

str(mtcars)

plot(mtcars$mpg, mtcars$am)

fit2 <- glm(am ~ mpg, data = mtcars, family = 'binomial')
summary(fit2)

fit3 <- glm(am ~ mpg , data = mtcars, family = 'binomial')

exp(fit2$coefficients)

pairs(mtcars)

ggpairs(mtcars, aes(color=am))

plot(fit2)





