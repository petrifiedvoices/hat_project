
#chronological analysis, subsets data by century, selects only inscriptions that has date certainty index for given century 1, therefore it subsects only the inscriptions that belong to the given century

threead <- c(HAT_all_inscriptions_9Nov2016_xlsx$`3AD`) #defines the working category

#Dewar A
#threeadanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, threead==1)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

##########################CHANGE ACCORDINGLY########################
#Dewar B
#the selected and the following century dataset
threeadanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, threead<1 & threead >0.49 & HAT_all_inscriptions_9Nov2016_xlsx$`4AD` >0.49)   #subsets only incriptions with the coeficient<1 AND >0.49, those that are dated to the selected and the following century

#threeadanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, threead==1 | threead==0.5 & HAT_all_inscriptions_9Nov2016_xlsx$`4AD` >0)
###################################################################

threeadregiontable<- as.data.frame(table(threeadanalysis$`Ancient Site -  Region`))
colnames(threeadregiontable) <- c('Var1','Freq','Percentage')
threeadregiontable$Percentage <-(threeadregiontable / sum (threeadregiontable$Freq) * 100)
sum(threeadregiontable$Freq)
threeadsitetable <-as.data.frame(table(threeadanalysis$`Modern Location`))
colnames(threeadsitetable) <- c('Var1','Freq','Percentage')
threeadsitetable$Percentage <-(threeadsitetable / sum (threeadsitetable$Freq) * 100)

threeadarchcontext <-as.data.frame(table(threeadanalysis$`Archaeological context`))
threeadmaterial <-as.data.frame(table(threeadanalysis$`Material category`))
threeadstone <-as.data.frame(table(threeadanalysis$Stone))
threeadoriginstone <-as.data.frame(table(threeadanalysis$`Origin of stone`))
threeadobject <-as.data.frame(table(threeadanalysis$`Object category`))
threeaddecoration <-as.data.frame(table(threeadanalysis$Decoration))
threeadrelief <-as.data.frame(table(threeadanalysis$`Relief Decoration`))
threeadfigural <-as.data.frame(table(threeadanalysis$`Figural Relief`))
threeadarchitectural <-as.data.frame(table(threeadanalysis$`Architectural Relief`))
threeaddialect <-as.data.frame(table(threeadanalysis$`Dialect`))
threeadlatin <-as.data.frame(table(threeadanalysis$`Latin`))
threeadscript <-as.data.frame(table(threeadanalysis$Script))
threeadlayout <-as.data.frame(table(threeadanalysis$`Layout`))

threeadtype <- as.data.frame(table(threeadanalysis$`Document typology`))
threeadprivate <- as.data.frame(table(threeadanalysis$`Private documents`))
threeadpublic <- as.data.frame(table(threeadanalysis$`Public documents`))
threeadextent <- summary(threeadanalysis$`Extent of lines`)
threeadadmin <-as.data.frame(table(threeadanalysis$`Administrative keywords`))
threeadformulaic <- as.data.frame(table(threeadanalysis$`Formulaic keywords`))
threeadhonorific <- as.data.frame(table(threeadanalysis$`Honorific keywords`))
threeadreligious <- as.data.frame(table(threeadanalysis$`Religious keywords`))
threeadepithet <- as.data.frame(table(threeadanalysis$Epithet))
threeadepithetcontext <- as.data.frame(table(threeadanalysis$`Context epithet`))
threeadcollectivegroup <-as.data.frame (table(threeadanalysis$`Collective group names`))
threeadcollectiveidentitytype <- as.data.frame (table(threeadanalysis$`Collective Identity Type`))
threeadcollectiveethnicity <- as.data.frame(table(threeadanalysis$`Collective identity Ethnicity`))
threeadgeo <-as.data.frame(table(threeadanalysis$`Geographic names`))
threeadtotalnames <-as.data.frame(table(threeadanalysis$`Total names`))
threeadtotalpeople <-as.data.frame(table(threeadanalysis$`Total people`))
threeadpopulation <-sum(threeadanalysis$`Total people`)

threeadcommunitycontext <-as.data.frame(table(threeadanalysis$`Community Context`))

threeadcommunity <- as.data.frame(table(threeadanalysis$`Context Names`))
colnames(threeadcommunity) <- c('Origin of name','Freq','Percentage')
threeadcommunity$Percentage <-(threeadcommunity / sum (threeadcommunity$Freq) * 100)













