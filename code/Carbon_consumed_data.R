library(ggplot2)

### DOC concentrations remaining in flasks at end of experiment

DOC<-read.csv("./data/DOC_liquid_media.csv")


### volumes of liquid filtered - used to correct for evaporation
filter<-read.csv("./data/liquid_media_filter_volumes.csv")



#### Total volumes remaining differed by temperature - this matters for growth and CUE calcs across temperatures
#### because biomass of species D was low, the total volume was filtered at each temperature. Using this to
#### correct volumes of all treatments

total.volume<-filter[filter$Species=="D",]
total.volume$total.vol<-total.volume$CN.volume.filtered..mL.+total.volume$P.volume.filtered..mL.

final.flask.volumes<-aggregate(total.vol~Temperature,data=total.volume,mean)

DOC.v<-merge(DOC,final.flask.volumes,by="Temperature")

##################### dilution factor for DOC based on measurements

dilution<-read.csv("./data/DOC_dilutions_data.csv")

diltuion.factor<-mean(dilution$sample.mL,na.rm=TRUE)/(mean(dilution$DI.water.mL,na.rm=TRUE)+mean(dilution$sample.mL,na.rm=TRUE))

####################### correcting for dilution and converting to mass based on the total flask volume

DOC.v$dilution.corrected.DOC<-DOC.v$doc.ppm/diltuion.factor

DOC.v$total.DOC.mg<-DOC.v$dilution.corrected.DOC*(DOC.v$total.vol/1000)


######################## Initial DOC concentrations in flasks based on measurements of unincubated media

start.DOC<-read.csv("./data/stock_LME_concentrations.csv")

start.DOC$dillution.corrected.DOC<-start.DOC$doc.ppm/diltuion.factor
start.DOC$inital.mass.DOC<-start.DOC$dillution.corrected.DOC*0.09 ## 90ml of stock added to each flask

inital.mass.DOC<-aggregate(inital.mass.DOC~stock.bottle.number,start.DOC,mean)

####################  merging in initial masses and calculating DOC consumption

DOC.v.init<-merge(DOC.v,inital.mass.DOC,by="stock.bottle.number")

DOC.v.init$DOC.consumed.mg<-DOC.v.init$inital.mass.DOC-DOC.v.init$total.DOC.mg

################# loss in the blanks
blanks<-DOC.v.init[DOC.v.init$Species=="Control",]

mass.loss.in.blanks<-mean(blanks$DOC.consumed.mg)

################## Correcting for consumption in the blanks

DOC.v.init$blank.corrected.DOC.consumed.mg<-DOC.v.init$DOC.consumed.mg-mass.loss.in.blanks

ggplot(DOC.v.init[DOC.v.init$Species!="Control",],aes(x=Temperature,y=blank.corrected.DOC.consumed.mg,color=Species))+geom_point()

## writing out the cleaned data file
clean.data.frame<-data.frame(ID.number=DOC.v.init$ID.number,DOC.consumed.mg=DOC.v.init$blank.corrected.DOC.consumed.mg)

write.csv(file="./data/processed_DOC_consumed.csv",clean.data.frame)
