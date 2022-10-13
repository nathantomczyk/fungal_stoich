library(dplyr)
library(ggplot2)
library(vegan)
library(reshape2)

## set the working directory to the folder that has the data file


## reading in data (may need to update if you change the file name)
d1<-read.csv("./data/community_comp_DNA.csv")



## making a new column with species names for each band
d1$species<-recode_factor(as.factor(d1$Band.No.),"1"="Articulospora tetracladia",
                          "2"="Hydrocina chaectocladia","3"="Flagellospora sp.","4"="Aquanectria penicilloiides")

## looking at the data quickly
ggplot(d1,aes(x=temperature,y=band_percent,color=species))+geom_point()+theme_classic()+geom_smooth(se=FALSE)

## taking the mean of band percent for each temperature and species
dna.summary<-aggregate(band_percent~temperature+species,data=d1,mean)

## colors, look around online to find ones you like best
cbpallette<-c("#999999", "#E69F00", "#009E73", "#D55E00")

## bargraph

cbp1 <- c("#999999", "#E69F00", "#009E73",
          "#D55E00", "#56B4E9")

community_comp<-ggplot(d1,aes(x=temperature,y=band_percent,fill=species))+geom_bar(position="fill", stat="identity")+
  theme_classic()+ylab("Relative abundance")+xlab(expression("Temperature ("^0*"C)"))+
  theme(text =element_text(size=20))+
  scale_x_continuous(breaks=c(4,8,12,16,20))+
  scale_fill_manual(values=cbpallette,name = expression("Species"),
                    labels = c(expression(italic("A. tetracladia")), 
                               expression(italic("H. chaetocladia")),
                               expression(italic("Flagellospora ")*"sp."),
                               expression(italic("A. penicillioides"))))
community_comp

tiff(filename="./figures/community_composition.tiff",units="in",res=600,width=8,height=6,compression="lzw")
community_comp
dev.off()


####################

library(vegan)


d2<-dcast(d1,temperature+replicate~species,value.var ="band_percent")

species<-d2[,3:6]

adonis(species~d2$temperature, permutations = 999, method = "bray")
