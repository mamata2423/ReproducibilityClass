# loading data in R
datum <- read.csv("MycotoxinData.csv",na.strings = "na")

#loading library for ggplot
library(ggplot2)

#Creating boxplot
ggplot(datum, aes(x=Treatment, y=DON, color=Cultivar)) +
  geom_boxplot() +
  xlab("")+
  ylab("DON (ppm)")

#creating bar chart with standard-error bars
ggplot(datum, aes(x=Treatment, y= DON, color= Cultivar)) +
  stat_summary(fun=mean, geom="bar") +
  stat_summary(fun.data = mean_se, geom = "errorbar") +
  xlab("") +
  ylab("DON (ppm)")

#Adding points to the foreground of boxplot with distribution of points making shape 21 and outline color black
ggplot(datum, aes(x=Treatment, y=DON, color=Cultivar)) +
  geom_boxplot() +
  geom_point(position=position_jitterdodge(dodge.width = 0.9), aes(fill=Cultivar), shape=21, colour="black")+
  xlab("")+
  ylab("DON (ppm)")

#Adding points to the foreground of barchart with distribution of points making shape 21 and outline color black
ggplot(datum, aes(x=Treatment, y= DON, color= Cultivar)) +
  stat_summary(fun=mean, geom="bar") +
  stat_summary(fun.data = mean_se, geom = "errorbar") +
  geom_point(position=position_jitterdodge(dodge.width = 0.9), aes(fill=Cultivar), shape=21, colour="black")+
  xlab("") +
  ylab("DON (ppm)")

#Changing fill color of points and boxplots to match with colorblind pallet
cbbPalette <- c( "#009E73", "#CC79A7")
ggplot(datum, aes(x=Treatment, y=DON, fill=Cultivar)) +
  geom_boxplot() +
  geom_point(position=position_jitterdodge(dodge.width = 0.9), aes(fill=Cultivar), shape=21, colour="black")+
  scale_fill_manual(values = cbbPalette) +  
  scale_color_manual(values = cbbPalette) + 
  xlab("")+
  ylab("DON (ppm)")

#Changing fill color of points and barchart to match with colorblind pallet
ggplot(datum, aes(x=Treatment, y= DON, fill=Cultivar)) +
  stat_summary(fun=mean, geom="bar") +
  stat_summary(fun.data = mean_se, geom = "errorbar") +
  geom_point(position=position_jitterdodge(dodge.width = 0.9), aes(fill=Cultivar), shape=21, colour="black")+
  scale_fill_manual(values = cbbPalette) +  
  scale_color_manual(values = cbbPalette) + 
  xlab("") +
  ylab("DON (ppm)")


#Adding a facet to the boxplot based on cultivar
ggplot(datum, aes(x=Treatment, y=DON, fill=Cultivar)) +
  geom_boxplot() +
  geom_point(position=position_jitterdodge(dodge.width = 0.9), aes(fill=Cultivar), shape=21, colour="black")+
  scale_fill_manual(values = cbbPalette) +  
  scale_color_manual(values = cbbPalette) + 
  xlab("")+
  ylab("DON (ppm)") +
  facet_wrap(~Cultivar)


#Adding a facet to the barchart based on cultivar
ggplot(datum, aes(x=Treatment, y= DON, fill=Cultivar)) +
  stat_summary(fun=mean, geom="bar") +
  stat_summary(fun.data = mean_se, geom = "errorbar") +
  geom_point(position=position_jitterdodge(dodge.width = 0.9), aes(fill=Cultivar), shape=21, colour="black")+
  scale_fill_manual(values = cbbPalette) +  
  scale_color_manual(values = cbbPalette) + 
  xlab("") +
  ylab("DON (ppm)") +
  facet_wrap(~Cultivar)


#Adding transparency to the point to make boxplot in the background visible
ggplot(datum, aes(x=Treatment, y=DON, fill=Cultivar)) +
  geom_boxplot() +
  geom_point(position=position_jitterdodge(dodge.width = 0.9), aes(fill=Cultivar), shape=21, colour="black", alpha=0.5)+
  scale_fill_manual(values = cbbPalette) +  
  scale_color_manual(values = cbbPalette) + 
  xlab("")+
  ylab("DON (ppm)") +
  facet_wrap(~Cultivar)


#Adding transparency to the point to make barchart in the background visible
ggplot(datum, aes(x=Treatment, y= DON,fill=Cultivar)) +
  stat_summary(fun=mean, geom="bar") +
  stat_summary(fun.data = mean_se, geom = "errorbar") +
  geom_point(position=position_jitterdodge(dodge.width = 0.9), aes(fill=Cultivar), shape=21, colour="black", alpha=0.5)+
  scale_fill_manual(values = cbbPalette) +  
  scale_color_manual(values = cbbPalette) + 
  xlab("") +
  ylab("DON (ppm)") +
  facet_wrap(~Cultivar)

#plotting rug plot
ggplot(datum, aes(x=Treatment, y=DON, fill=Cultivar)) +
  geom_rug() +
  geom_point(position=position_jitterdodge(dodge.width = 0.9), aes(fill=Cultivar), shape=21, colour="black", alpha=0.5)+
  scale_fill_manual(values = cbbPalette) +  
  scale_color_manual(values = cbbPalette) + 
  xlab("")+
  ylab("DON (ppm)") +
  facet_wrap(~Cultivar)

