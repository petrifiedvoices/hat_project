
#chronological analysis, subsets data by century, selects only inscriptions that has date certainty index for given century 1, therefore it subsects only the inscriptions that belong to the given century

threebc <- c(HAT_all_inscriptions_9Nov2016_xlsx$`3BC`) #defines the working category

#Dewar A
#threebcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, threebc==1)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

##########################CHANGE ACCORDINGLY########################
#Dewar B
#the selected and the following century dataset
threebcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, threebc<1 & threebc >0.49 & HAT_all_inscriptions_9Nov2016_xlsx$`2BC` >0.49)   #subsets only incriptions with the coeficient<1 AND >0.49, those that are dated to the selected and the following century

#threebcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, threebc==1 | threebc==0.5 & HAT_all_inscriptions_9Nov2016_xlsx$`2BC` >0)
###################################################################

threebcregiontable<- as.data.frame(table(threebcanalysis$`Ancient Site -  Region`))
colnames(threebcregiontable) <- c('Var1','Freq','Percentage')
threebcregiontable$Percentage <-(threebcregiontable / sum (threebcregiontable$Freq) * 100)
sum(threebcregiontable$Freq)
threebcsitetable <-as.data.frame(table(threebcanalysis$`Modern Location`))
colnames(threebcsitetable) <- c('Var1','Freq','Percentage')
threebcsitetable$Percentage <-(threebcsitetable / sum (threebcsitetable$Freq) * 100)

threebcarchcontext <-as.data.frame(table(threebcanalysis$`Archaeological context`))
threebcmaterial <-as.data.frame(table(threebcanalysis$`Material category`))
threebcstone <-as.data.frame(table(threebcanalysis$Stone))
threebcoriginstone <-as.data.frame(table(threebcanalysis$`Origin of stone`))
threebcobject <-as.data.frame(table(threebcanalysis$`Object category`))
threebcdecoration <-as.data.frame(table(threebcanalysis$Decoration))
threebcrelief <-as.data.frame(table(threebcanalysis$`Relief Decoration`))
threebcfigural <-as.data.frame(table(threebcanalysis$`Figural Relief`))
threebcarchitectural <-as.data.frame(table(threebcanalysis$`Architectural Relief`))
threebcdialect <-as.data.frame(table(threebcanalysis$`Dialect`))
threebclatin <-as.data.frame(table(threebcanalysis$`Latin`))
threebcscript <-as.data.frame(table(threebcanalysis$Script))
threebclayout <-as.data.frame(table(threebcanalysis$`Layout`))

threebctype <- as.data.frame(table(threebcanalysis$`Document typology`))
threebcprivate <- as.data.frame(table(threebcanalysis$`Private documents`))
threebcpublic <- as.data.frame(table(threebcanalysis$`Public documents`))
threebcextent <- summary(threebcanalysis$`Extent of lines`)
threebcadmin <-as.data.frame(table(threebcanalysis$`Administrative keywords`))
threebcformulaic <- as.data.frame(table(threebcanalysis$`Formulaic keywords`))
threebchonorific <- as.data.frame(table(threebcanalysis$`Honorific keywords`))
threebcreligious <- as.data.frame(table(threebcanalysis$`Religious keywords`))
threebcepithet <- as.data.frame(table(threebcanalysis$Epithet))
threebcepithetcontext <- as.data.frame(table(threebcanalysis$`Context epithet`))
threebccollectivegroup <-as.data.frame (table(threebcanalysis$`Collective group names`))
threebccollectiveidentitytype <- as.data.frame (table(threebcanalysis$`Collective Identity Type`))
threebccollectiveethnicity <- as.data.frame(table(threebcanalysis$`Collective identity Ethnicity`))
threebcgeo <-as.data.frame(table(threebcanalysis$`Geographic names`))
threebctotalnames <-as.data.frame(table(threebcanalysis$`Total names`))
threebctotalpeople <-as.data.frame(table(threebcanalysis$`Total people`))
threebcpopulation <-sum(threebcanalysis$`Total people`)

threebccommunitycontext <-as.data.frame(table(threebcanalysis$`Community Context`))

threebccommunity <- as.data.frame(table(threebcanalysis$`Context Names`))
colnames(threebccommunity) <- c('Origin of name','Freq','Percentage')
threebccommunity$Percentage <-(threebccommunity / sum (threebccommunity$Freq) * 100)













