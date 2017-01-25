
#chronological analysis, subsets data by century, selects only inscriptions that has date certainty index for given century 1, therefore it subsects only the inscriptions that belong to the given century

fivead <- c(HAT_all_inscriptions_9Nov2016_xlsx$`5AD`) #defines the working category, this time inscriptions that are dated to the 5th c ad

#Dewar A only inscriptionss from 5th c AD
#fiveadanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, fivead==1 & HAT_all_inscriptions_9Nov2016_xlsx$Century=="5")  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

##########################CHANGE ACCORDINGLY########################
#Dewar B
#the selected and the following century dataset, 5th and 6th c AD
#fiveadanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, HAT_all_inscriptions_9Nov2016_xlsx$Century=="5|6")   

#only inscriptions from 6th c AD
fiveadanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, HAT_all_inscriptions_9Nov2016_xlsx$Century=="6")

#only inscription from 7th and 8th c AD
#fiveadanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, HAT_all_inscriptions_9Nov2016_xlsx$Century=="7|8")
###################################################################

fiveadregiontable<- as.data.frame(table(fiveadanalysis$`Ancient Site -  Region`))
colnames(fiveadregiontable) <- c('Var1','Freq','Percentage')
fiveadregiontable$Percentage <-(fiveadregiontable / sum (fiveadregiontable$Freq) * 100)
sum(fiveadregiontable$Freq)
fiveadsitetable <-as.data.frame(table(fiveadanalysis$`Modern Location`))
colnames(fiveadsitetable) <- c('Var1','Freq','Percentage')
fiveadsitetable$Percentage <-(fiveadsitetable / sum (fiveadsitetable$Freq) * 100)

fiveadarchcontext <-as.data.frame(table(fiveadanalysis$`Archaeological context`))
fiveadmaterial <-as.data.frame(table(fiveadanalysis$`Material category`))
fiveadstone <-as.data.frame(table(fiveadanalysis$Stone))
fiveadoriginstone <-as.data.frame(table(fiveadanalysis$`Origin of stone`))
fiveadobject <-as.data.frame(table(fiveadanalysis$`Object category`))
fiveaddecoration <-as.data.frame(table(fiveadanalysis$Decoration))
fiveadrelief <-as.data.frame(table(fiveadanalysis$`Relief Decoration`))
fiveadfigural <-as.data.frame(table(fiveadanalysis$`Figural Relief`))
fiveadarchitectural <-as.data.frame(table(fiveadanalysis$`Architectural Relief`))
fiveaddialect <-as.data.frame(table(fiveadanalysis$`Dialect`))
fiveadlatin <-as.data.frame(table(fiveadanalysis$`Latin`))
fiveadscript <-as.data.frame(table(fiveadanalysis$Script))
fiveadlayout <-as.data.frame(table(fiveadanalysis$`Layout`))

fiveadtype <- as.data.frame(table(fiveadanalysis$`Document typology`))
fiveadprivate <- as.data.frame(table(fiveadanalysis$`Private documents`))
fiveadpublic <- as.data.frame(table(fiveadanalysis$`Public documents`))
fiveadextent <- summary(fiveadanalysis$`Extent of lines`)
fiveadadmin <-as.data.frame(table(fiveadanalysis$`Administrative keywords`))
fiveadformulaic <- as.data.frame(table(fiveadanalysis$`Formulaic keywords`))
fiveadhonorific <- as.data.frame(table(fiveadanalysis$`Honorific keywords`))
fiveadreligious <- as.data.frame(table(fiveadanalysis$`Religious keywords`))
fiveadepithet <- as.data.frame(table(fiveadanalysis$Epithet))
fiveadepithetcontext <- as.data.frame(table(fiveadanalysis$`Context epithet`))
fiveadcollectivegroup <-as.data.frame (table(fiveadanalysis$`Collective group names`))
fiveadcollectiveidentitytype <- as.data.frame (table(fiveadanalysis$`Collective Identity Type`))
fiveadcollectiveethnicity <- as.data.frame(table(fiveadanalysis$`Collective identity Ethnicity`))
fiveadgeo <-as.data.frame(table(fiveadanalysis$`Geographic names`))
fiveadtotalnames <-as.data.frame(table(fiveadanalysis$`Total names`))
fiveadtotalpeople <-as.data.frame(table(fiveadanalysis$`Total people`))
fiveadpopulation <-sum(fiveadanalysis$`Total people`)

fiveadcommunitycontext <-as.data.frame(table(fiveadanalysis$`Community Context`))

fiveadcommunity <- as.data.frame(table(fiveadanalysis$`Context Names`))
colnames(fiveadcommunity) <- c('Origin of name','Freq','Percentage')
fiveadcommunity$Percentage <-(fiveadcommunity / sum (fiveadcommunity$Freq) * 100)













