library(ggplot2)
# сначала переведем переменную am в фактор
mtcars$am <- factor(mtcars$am)

# теперь строим график
my_plot <- ggplot(mtcars, aes(x=wt,y=mpg, color=am))+
  geom_smooth(method = 'lm')