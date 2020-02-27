
#chronological analysis, subsets data by century, selects only inscriptions that has date certainty index for given century 1, therefore it subsects only the inscriptions that belong to the given century

fourad <- c(HAT_all_inscriptions_9Nov2016_xlsx$`4AD`) #defines the working category

#Dewar A
#fouradanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, fourad==1)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

##########################CHANGE ACCORDINGLY########################
#Dewar B
#the selected and the following century dataset
fouradanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, fourad<1 & fourad >0.49 & HAT_all_inscriptions_9Nov2016_xlsx$`5AD` >0.49)   #subsets only incriptions with the coeficient<1 AND >0.49, those that are dated to the selected and the following century

#only inscriptions dated to two centuries
#fouradanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, fourad >0.49 & HAT_all_inscriptions_9Nov2016_xlsx$`5AD` >0.49)
###################################################################

fouradregiontable<- as.data.frame(table(fouradanalysis$`Ancient Site -  Region`))
colnames(fouradregiontable) <- c('Var1','Freq','Percentage')
fouradregiontable$Percentage <-(fouradregiontable / sum (fouradregiontable$Freq) * 100)
sum(fouradregiontable$Freq)
fouradsitetable <-as.data.frame(table(fouradanalysis$`Modern Location`))
colnames(fouradsitetable) <- c('Var1','Freq','Percentage')
fouradsitetable$Percentage <-(fouradsitetable / sum (fouradsitetable$Freq) * 100)

fouradarchcontext <-as.data.frame(table(fouradanalysis$`Archaeological context`))
fouradmaterial <-as.data.frame(table(fouradanalysis$`Material category`))
fouradstone <-as.data.frame(table(fouradanalysis$Stone))
fouradoriginstone <-as.data.frame(table(fouradanalysis$`Origin of stone`))
fouradobject <-as.data.frame(table(fouradanalysis$`Object category`))
fouraddecoration <-as.data.frame(table(fouradanalysis$Decoration))
fouradrelief <-as.data.frame(table(fouradanalysis$`Relief Decoration`))
fouradfigural <-as.data.frame(table(fouradanalysis$`Figural Relief`))
fouradarchitectural <-as.data.frame(table(fouradanalysis$`Architectural Relief`))
fouraddialect <-as.data.frame(table(fouradanalysis$`Dialect`))
fouradlatin <-as.data.frame(table(fouradanalysis$`Latin`))
fouradscript <-as.data.frame(table(fouradanalysis$Script))
fouradlayout <-as.data.frame(table(fouradanalysis$`Layout`))

fouradtype <- as.data.frame(table(fouradanalysis$`Document typology`))
fouradprivate <- as.data.frame(table(fouradanalysis$`Private documents`))
fouradpublic <- as.data.frame(table(fouradanalysis$`Public documents`))
fouradextent <- summary(fouradanalysis$`Extent of lines`)
fouradadmin <-as.data.frame(table(fouradanalysis$`Administrative keywords`))
fouradformulaic <- as.data.frame(table(fouradanalysis$`Formulaic keywords`))
fouradhonorific <- as.data.frame(table(fouradanalysis$`Honorific keywords`))
fouradreligious <- as.data.frame(table(fouradanalysis$`Religious keywords`))
fouradepithet <- as.data.frame(table(fouradanalysis$Epithet))
fouradepithetcontext <- as.data.frame(table(fouradanalysis$`Context epithet`))
fouradcollectivegroup <-as.data.frame (table(fouradanalysis$`Collective group names`))
fouradcollectiveidentitytype <- as.data.frame (table(fouradanalysis$`Collective Identity Type`))
fouradcollectiveethnicity <- as.data.frame(table(fouradanalysis$`Collective identity Ethnicity`))
fouradgeo <-as.data.frame(table(fouradanalysis$`Geographic names`))
fouradtotalnames <-as.data.frame(table(fouradanalysis$`Total names`))
fouradtotalpeople <-as.data.frame(table(fouradanalysis$`Total people`))
fouradpopulation <-sum(fouradanalysis$`Total people`)

fouradcommunitycontext <-as.data.frame(table(fouradanalysis$`Community Context`))

fouradcommunity <- as.data.frame(table(fouradanalysis$`Context Names`))
colnames(fouradcommunity) <- c('Origin of name','Freq','Percentage')
fouradcommunity$Percentage <-(fouradcommunity / sum (fouradcommunity$Freq) * 100)













