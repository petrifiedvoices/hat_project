
#chronological analysis, subsets data by century, selects only inscriptions that has date certainty index for given century 1, therefore it subsects only the inscriptions that belong to the given century

onead <- c(HAT_all_inscriptions_9Nov2016_xlsx$`1AD`) #defines the working category

#Dewar A
oneadanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, onead==1)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

##########################CHANGE ACCORDINGLY########################
#Dewar B
#the selected and the following century dataset
#oneadanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, onead<1 & onead >0.49 & HAT_all_inscriptions_9Nov2016_xlsx$`2AD` >0.49)   #subsets only incriptions with the coeficient<1 AND >0.49, those that are dated to the selected and the following century

#oneadanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, onead==1 | onead==0.5 & HAT_all_inscriptions_9Nov2016_xlsx$`2AD` >0)
###################################################################

oneadregiontable<- as.data.frame(table(oneadanalysis$`Ancient Site -  Region`))
colnames(oneadregiontable) <- c('Var1','Freq','Percentage')
oneadregiontable$Percentage <-(oneadregiontable / sum (oneadregiontable$Freq) * 100)
sum(oneadregiontable$Freq)
oneadsitetable <-as.data.frame(table(oneadanalysis$`Modern Location`))
colnames(oneadsitetable) <- c('Var1','Freq','Percentage')
oneadsitetable$Percentage <-(oneadsitetable / sum (oneadsitetable$Freq) * 100)

oneadarchcontext <-as.data.frame(table(oneadanalysis$`Archaeological context`))
oneadmaterial <-as.data.frame(table(oneadanalysis$`Material category`))
oneadstone <-as.data.frame(table(oneadanalysis$Stone))
oneadoriginstone <-as.data.frame(table(oneadanalysis$`Origin of stone`))
oneadobject <-as.data.frame(table(oneadanalysis$`Object category`))
oneaddecoration <-as.data.frame(table(oneadanalysis$Decoration))
oneadrelief <-as.data.frame(table(oneadanalysis$`Relief Decoration`))
oneadfigural <-as.data.frame(table(oneadanalysis$`Figural Relief`))
oneadarchitectural <-as.data.frame(table(oneadanalysis$`Architectural Relief`))
oneaddialect <-as.data.frame(table(oneadanalysis$`Dialect`))
oneadlatin <-as.data.frame(table(oneadanalysis$`Latin`))
oneadscript <-as.data.frame(table(oneadanalysis$Script))
oneadlayout <-as.data.frame(table(oneadanalysis$`Layout`))

oneadtype <- as.data.frame(table(oneadanalysis$`Document typology`))
oneadprivate <- as.data.frame(table(oneadanalysis$`Private documents`))
oneadpublic <- as.data.frame(table(oneadanalysis$`Public documents`))
oneadextent <- summary(oneadanalysis$`Extent of lines`)
oneadadmin <-as.data.frame(table(oneadanalysis$`Administrative keywords`))
oneadformulaic <- as.data.frame(table(oneadanalysis$`Formulaic keywords`))
oneadhonorific <- as.data.frame(table(oneadanalysis$`Honorific keywords`))
oneadreligious <- as.data.frame(table(oneadanalysis$`Religious keywords`))
oneadepithet <- as.data.frame(table(oneadanalysis$Epithet))
oneadepithetcontext <- as.data.frame(table(oneadanalysis$`Context epithet`))
oneadcollectivegroup <-as.data.frame (table(oneadanalysis$`Collective group names`))
oneadcollectiveidentitytype <- as.data.frame (table(oneadanalysis$`Collective Identity Type`))
oneadcollectiveethnicity <- as.data.frame(table(oneadanalysis$`Collective identity Ethnicity`))
oneadgeo <-as.data.frame(table(oneadanalysis$`Geographic names`))
oneadtotalnames <-as.data.frame(table(oneadanalysis$`Total names`))
oneadtotalpeople <-as.data.frame(table(oneadanalysis$`Total people`))
oneadpopulation <-sum(oneadanalysis$`Total people`)

oneadcommunitycontext <-as.data.frame(table(oneadanalysis$`Community Context`))

oneadcommunity <- as.data.frame(table(oneadanalysis$`Context Names`))
colnames(oneadcommunity) <- c('Origin of name','Freq','Percentage')
oneadcommunity$Percentage <-(oneadcommunity / sum (oneadcommunity$Freq) * 100)













