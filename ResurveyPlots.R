#R version 4.1.0 (2021-05-18)

library(ggplot2) #ggplot2_3.4.4
library(reshape2) #reshape2_1.4.4
library(patchwork) #patchwork_1.2.0
library(plyr) #plyr_1.8.8
library(dplyr) #dplyr_1.1.2
library(tidyr) #tidyr_1.3.0

setwd("/Users/laurenbuckley/Google Drive/My Drive/Buckley/Work/ASNsymposium/data/")
#setwd("/Volumes/GoogleDrive/My Drive/Buckley/Work/ASNsymposium/data/")

#----
#Monkey flower emergence, etc
#Dickman et al. 2019

dat1<- read.csv("dickman_et_al_2019_emergence.csv")

#mean metric
dat1.m= dat1 %>%
  group_by(elevation_m, emerged, year) %>%
  summarise(timeemer.m= mean(timeemer, na.rm = TRUE), sd= sd(timeemer, na.rm = TRUE), 
            n= n(), se= sd/sqrt(n) )

#rename year
dat1.m$generation <- c("Pre-drought","Drought")[match( dat1.m$year, c(1,2))]
dat1.m$generation <- factor(dat1.m$generation, levels=c("Pre-drought","Drought"), ordered=TRUE )

figa<- ggplot(data=dat1.m[dat1.m$emerged==1,], aes(x=elevation_m, y =timeemer.m, color=generation, group=factor(year)))+geom_smooth(method="lm", se=FALSE)+geom_point(size=3)+theme_classic(base_size = 18)+
  scale_color_manual(values=c("blue","darkorange") )+
  ylab("Mean days to emergence")+xlab("Elevation")+theme(legend.position=c(0.4,0.9))+
  geom_errorbar( aes(x=elevation_m, y=timeemer.m, ymin=timeemer.m-se, ymax=timeemer.m+se) )
#position=position_dodge(width = 100)
  
#----
#Flatworm regeneration
#Clayton and Spicer 2020 
dat1<- read.csv("data_ClaytonSpicer2020.csv")

figb<- ggplot(dat1, aes(x=salinity, y =wound_healing_time_d, color=factor(year) ))+
  geom_point(size=3)+ geom_line()+theme_classic(base_size = 18)+
  scale_color_manual(values=c("blue","darkorange"), name="year" )+
  ylab("Wound healing time (d)")+xlab("Salinity")+
  theme(legend.position=c(0.4,0.9))

#----
#Save figure

setwd("/Users/laurenbuckley/Google Drive/My Drive/Buckley/Work/ASNsymposium/figures/")
#setwd("/Volumes/GoogleDrive/My Drive/Buckley/Work/ASNsymposium/figures/")

pdf("Fig_examples.pdf",height = 4, width = 8)
figa +figb + plot_annotation(tag_levels = 'A')
dev.off()




