library("ggplot2")

obj <- ggplot(data = ToothGrowth, aes(supp, len, fill=factor(dose)))+
  geom_boxplot()