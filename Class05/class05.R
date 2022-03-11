#class 5 Data Visualization 

plot(1:5)



#That was base R plot - quick and not very nice!
#We will use an add-on package called ggplot2

# install.packages("ggplot2")

library(ggplot2)
#Before I can use any functions from this package
# I need to load it whith the library() call! 
#Install: you do it only once on your computer
#library call you do every time you use it!

plot(cars)

#Every ggplot has at least 3 layers
#data + aesthetics + geometry


p<-ggplot(data=cars) +
  aes(x=speed, y=dist) +
  geom_point()

p + geom_line()

p + geom_smooth(method="lm")

p + labs (title = "cars plot")
p + xlab ("speed (MPH)") + 
ylab ("distance (ft)")

#RNA-Seq plot

url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

p <- ggplot(genes) + 
  aes(x=Condition1, y=Condition2,col=State) +
  geom_point() +
  theme_bw()

p


ggplot(mtcars, aes(mpg, disp)) + geom_point()
ggplot(mtcars) + aes(x=mpg, y=disp) + geom_point()
