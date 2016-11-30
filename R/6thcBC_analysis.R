
#chronological analysis, subsets data by century, selects only inscriptions that has date certainty index for given century 1, therefore it subsects only the inscriptions that belong to the given century

sixbc <- c(HAT_all_inscriptions_9Nov2016_xlsx$`6BC`) #defines the working category, this time inscriptions that are dated to the 5th c BC

#Dewar A
sixbcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, sixbc==1 | sixbc==0.5 & HAT_all_inscriptions_9Nov2016_xlsx$`5BC` >0.33)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

##########################CHANGE ACCORDINGLY########################
#Dewar B
#the selected and the following century dataset
#sixbcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, sixbc==1 | sixbc==0.5 & HAT_all_inscriptions_9Nov2016_xlsx$`5BC` >0)   #subsets only incriptions with the coeficient<1 AND >0.49, those that are dated to the sixth and the fifth century

#Dewar C
#the selected and the  preceeding century dataset
#sixbcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, sixbc<1 & sixbc >0.5)  #subsets only incriptions with the coeficient<1 AND >0.5, those that are dated to the sixth and the seventh century
###################################################################

sixbcregiontable<- as.data.frame(table(sixbcanalysis$`Ancient Site -  Region`))
colnames(sixbcregiontable) <- c('Var1','Freq','Percentage')
sixbcregiontable$Percentage <-(sixbcregiontable / sum (sixbcregiontable$Freq) * 100)
sum(sixbcregiontable$Freq)
sixbcsitetable <-as.data.frame(table(sixbcanalysis$`Modern Location`))
colnames(sixbcsitetable) <- c('Var1','Freq','Percentage')
sixbcsitetable$Percentage <-(sixbcsitetable / sum (sixbcsitetable$Freq) * 100)

sixbcarchcontext <-as.data.frame(table(sixbcanalysis$`Archaeological context`))
sixbcmaterial <-as.data.frame(table(sixbcanalysis$`Material category`))
sixbcstone <-as.data.frame(table(sixbcanalysis$Stone))
sixbcoriginstone <-as.data.frame(table(sixbcanalysis$`Origin of stone`))
sixbcobject <-as.data.frame(table(sixbcanalysis$`Object category`))
sixbcdecoration <-as.data.frame(table(sixbcanalysis$Decoration))
sixbcrelief <-as.data.frame(table(sixbcanalysis$`Relief Decoration`))
sixbcfigural <-as.data.frame(table(sixbcanalysis$`Figural Relief`))
sixbcarchitectural <-as.data.frame(table(sixbcanalysis$`Architectural Relief`))
sixbcdialect <-as.data.frame(table(sixbcanalysis$`Dialect`))
sixbclatin <-as.data.frame(table(sixbcanalysis$`Latin`))
sixbcscript <-as.data.frame(table(sixbcanalysis$Script))
sixbclayout <-as.data.frame(table(sixbcanalysis$`Layout`))

sixbctype <- as.data.frame(table(sixbcanalysis$`Document typology`))
sixbcprivate <- as.data.frame(table(sixbcanalysis$`Private documents`))
sixbcpublic <- as.data.frame(table(sixbcanalysis$`Public documents`))
sixbcextent <- summary(sixbcanalysis$`Extent of lines`)
sixbcadmin <-as.data.frame(table(sixbcanalysis$`Administrative keywords`))
sixbcformulaic <- as.data.frame(table(sixbcanalysis$`Formulaic keywords`))
sixbchonorific <- as.data.frame(table(sixbcanalysis$`Honorific keywords`))
sixbcreligious <- as.data.frame(table(sixbcanalysis$`Religious keywords`))
sixbcepithet <- as.data.frame(table(sixbcanalysis$Epithet))
sixbcepithetcontext <- as.data.frame(table(sixbcanalysis$`Context epithet`))
sixbccollectivegroup <-as.data.frame (table(sixbcanalysis$`Collective group names`))
sixbccollectiveidentitytype <- as.data.frame (table(sixbcanalysis$`Collective Identity Type`))
sixbccollectiveethnicity <- as.data.frame(table(sixbcanalysis$`Collective identity Ethnicity`))
sixbcgeo <-as.data.frame(table(sixbcanalysis$`Geographic names`))
sixbctotalnames <-as.data.frame(table(sixbcanalysis$`Total names`))
sixbctotalpeople <-as.data.frame(table(sixbcanalysis$`Total people`))
sixbcpopulation <-sum(sixbcanalysis$`Total people`)

sixbccommunitycontext <-as.data.frame(table(sixbcanalysis$`Community Context`))

sixbccommunity <- as.data.frame(table(sixbcanalysis$`Context Names`))
colnames(sixbccommunity) <- c('Origin of name','Freq','Percentage')
sixbccommunity$Percentage <-(sixbccommunity / sum (sixbccommunity$Freq) * 100)













