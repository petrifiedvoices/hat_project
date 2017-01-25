
#chronological analysis, subsets data by century, selects only inscriptions that has date certainty index for given century 1, therefore it subsects only the inscriptions that belong to the given century

onebc <- c(HAT_all_inscriptions_9Nov2016_xlsx$`1BC`) #defines the working category

#Dewar A
#onebcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, onebc==1)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

##########################CHANGE ACCORDINGLY########################
#Dewar B
#the selected and the following century dataset
onebcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, onebc<1 & onebc >0.49 & HAT_all_inscriptions_9Nov2016_xlsx$`1AD` >0.49)   #subsets only incriptions with the coeficient<1 AND >0.49, those that are dated to the selected and the following century

#onebcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, onebc==1 | onebc==0.5 & HAT_all_inscriptions_9Nov2016_xlsx$`1AD` >0)
###################################################################

onebcregiontable<- as.data.frame(table(onebcanalysis$`Ancient Site -  Region`))
colnames(onebcregiontable) <- c('Var1','Freq','Percentage')
onebcregiontable$Percentage <-(onebcregiontable / sum (onebcregiontable$Freq) * 100)
sum(onebcregiontable$Freq)
onebcsitetable <-as.data.frame(table(onebcanalysis$`Modern Location`))
colnames(onebcsitetable) <- c('Var1','Freq','Percentage')
onebcsitetable$Percentage <-(onebcsitetable / sum (onebcsitetable$Freq) * 100)

onebcarchcontext <-as.data.frame(table(onebcanalysis$`Archaeological context`))
onebcmaterial <-as.data.frame(table(onebcanalysis$`Material category`))
onebcstone <-as.data.frame(table(onebcanalysis$Stone))
onebcoriginstone <-as.data.frame(table(onebcanalysis$`Origin of stone`))
onebcobject <-as.data.frame(table(onebcanalysis$`Object category`))
onebcdecoration <-as.data.frame(table(onebcanalysis$Decoration))
onebcrelief <-as.data.frame(table(onebcanalysis$`Relief Decoration`))
onebcfigural <-as.data.frame(table(onebcanalysis$`Figural Relief`))
onebcarchitectural <-as.data.frame(table(onebcanalysis$`Architectural Relief`))
onebcdialect <-as.data.frame(table(onebcanalysis$`Dialect`))
onebclatin <-as.data.frame(table(onebcanalysis$`Latin`))
onebcscript <-as.data.frame(table(onebcanalysis$Script))
onebclayout <-as.data.frame(table(onebcanalysis$`Layout`))

onebctype <- as.data.frame(table(onebcanalysis$`Document typology`))
onebcprivate <- as.data.frame(table(onebcanalysis$`Private documents`))
onebcpublic <- as.data.frame(table(onebcanalysis$`Public documents`))
onebcextent <- summary(onebcanalysis$`Extent of lines`)
onebcadmin <-as.data.frame(table(onebcanalysis$`Administrative keywords`))
onebcformulaic <- as.data.frame(table(onebcanalysis$`Formulaic keywords`))
onebchonorific <- as.data.frame(table(onebcanalysis$`Honorific keywords`))
onebcreligious <- as.data.frame(table(onebcanalysis$`Religious keywords`))
onebcepithet <- as.data.frame(table(onebcanalysis$Epithet))
onebcepithetcontext <- as.data.frame(table(onebcanalysis$`Context epithet`))
onebccollectivegroup <-as.data.frame (table(onebcanalysis$`Collective group names`))
onebccollectiveidentitytype <- as.data.frame (table(onebcanalysis$`Collective Identity Type`))
onebccollectiveethnicity <- as.data.frame(table(onebcanalysis$`Collective identity Ethnicity`))
onebcgeo <-as.data.frame(table(onebcanalysis$`Geographic names`))
onebctotalnames <-as.data.frame(table(onebcanalysis$`Total names`))
onebctotalpeople <-as.data.frame(table(onebcanalysis$`Total people`))
onebcpopulation <-sum(onebcanalysis$`Total people`)

onebccommunitycontext <-as.data.frame(table(onebcanalysis$`Community Context`))

onebccommunity <- as.data.frame(table(onebcanalysis$`Context Names`))
colnames(onebccommunity) <- c('Origin of name','Freq','Percentage')
onebccommunity$Percentage <-(onebccommunity / sum (onebccommunity$Freq) * 100)













