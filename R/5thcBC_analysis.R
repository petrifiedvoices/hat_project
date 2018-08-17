
#chronological analysis, subsets data by century, selects only inscriptions that has date certainty index for given century 1, therefore it subsects only the inscriptions that belong to the given century

fivebc <- c(HAT_all_inscriptions_17Aug2018_xlsx$`5BC`) #defines the working category, this time inscriptions that are dated to the 5th c BC

#Dewar A
#fivebcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, fivebc==1)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

##########################CHANGE ACCORDINGLY########################
#Dewar B
#the selected and the following century dataset
#fivebcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, fivebc<1 & fivebc >0.49 & HAT_all_inscriptions_9Nov2016_xlsx$`4BC` >0)   #subsets only incriptions with the coeficient<1 AND >0.49, those that are dated to the fifth and the fourth century

#subsets all inscriptions dated to fifth century, and to firth and fourth
#fivebcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, fivebc==1 | fivebc==0.5 & HAT_all_inscriptions_9Nov2016_xlsx$`4BC` >0)
###################################################################

#COAST vs INLAND analysis
#Dewar A + base on their area> coast or inland

#coast

#subsets only incriptions with the coeficient=1, and found only on the coast
#fivebcanalysis <- subset(HAT_all_inscriptions_17Aug2018_xlsx, fivebc==1 & HAT_all_inscriptions_17Aug2018_xlsx$Area == 'Coast')

#inland
fivebcanalysis <- subset(HAT_all_inscriptions_17Aug2018_xlsx, fivebc==1 & HAT_all_inscriptions_17Aug2018_xlsx$Area == 'Inland')  #subsets only incriptions with the coeficient=1, and found only inland

###################################################################

fivebcregiontable<- as.data.frame(table(fivebcanalysis$`Ancient Site -  Region`))
colnames(fivebcregiontable) <- c('Var1','Freq','Percentage')
fivebcregiontable$Percentage <-(fivebcregiontable / sum (fivebcregiontable$Freq) * 100)
sum(fivebcregiontable$Freq)
fivebcsitetable <-as.data.frame(table(fivebcanalysis$`Modern Location`))
colnames(fivebcsitetable) <- c('Var1','Freq','Percentage')
fivebcsitetable$Percentage <-(fivebcsitetable / sum (fivebcsitetable$Freq) * 100)

fivebcarchcontext <-as.data.frame(table(fivebcanalysis$`Archaeological context`))
fivebcmaterial <-as.data.frame(table(fivebcanalysis$`Material category`))
fivebcstone <-as.data.frame(table(fivebcanalysis$Stone))
fivebcoriginstone <-as.data.frame(table(fivebcanalysis$`Origin of stone`))
fivebcobject <-as.data.frame(table(fivebcanalysis$`Object category`))
fivebcdecoration <-as.data.frame(table(fivebcanalysis$Decoration))
fivebcrelief <-as.data.frame(table(fivebcanalysis$`Relief Decoration`))
fivebcfigural <-as.data.frame(table(fivebcanalysis$`Figural Relief`))
fivebcarchitectural <-as.data.frame(table(fivebcanalysis$`Architectural Relief`))
fivebcdialect <-as.data.frame(table(fivebcanalysis$`Dialect`))
fivebclatin <-as.data.frame(table(fivebcanalysis$`Latin`))
fivebcscript <-as.data.frame(table(fivebcanalysis$Script))
fivebclayout <-as.data.frame(table(fivebcanalysis$`Layout`))

fivebctype <- as.data.frame(table(fivebcanalysis$`Document typology`))
fivebcprivate <- as.data.frame(table(fivebcanalysis$`Private documents`))
fivebcpublic <- as.data.frame(table(fivebcanalysis$`Public documents`))
fivebcextent <- summary(fivebcanalysis$`Extent of lines`)
fivebcadmin <-as.data.frame(table(fivebcanalysis$`Administrative keywords`))
fivebcformulaic <- as.data.frame(table(fivebcanalysis$`Formulaic keywords`))
fivebchonorific <- as.data.frame(table(fivebcanalysis$`Honorific keywords`))
fivebcreligious <- as.data.frame(table(fivebcanalysis$`Religious keywords`))
fivebcepithet <- as.data.frame(table(fivebcanalysis$Epithet))
fivebcepithetcontext <- as.data.frame(table(fivebcanalysis$`Context epithet`))
fivebccollectivegroup <-as.data.frame (table(fivebcanalysis$`Collective group names`))
fivebccollectiveidentitytype <- as.data.frame (table(fivebcanalysis$`Collective Identity Type`))
fivebccollectiveethnicity <- as.data.frame(table(fivebcanalysis$`Collective identity Ethnicity`))
fivebcgeo <-as.data.frame(table(fivebcanalysis$`Geographic names`))
fivebctotalnames <-as.data.frame(table(fivebcanalysis$`Total names`))
fivebctotalpeople <-as.data.frame(table(fivebcanalysis$`Total people`))
fivebcpopulation <-sum(fivebcanalysis$`Total people`)

fivebccommunitycontext <-as.data.frame(table(fivebcanalysis$`Community Context`))

fivebccommunity <- as.data.frame(table(fivebcanalysis$`Context Names`))
colnames(fivebccommunity) <- c('Origin of name','Freq','Percentage')
fivebccommunity$Percentage <-(fivebccommunity / sum (fivebccommunity$Freq) * 100)

nameGreek <-sum(fivebcanalysis$`Greek total`)
nameThracian <-sum(fivebcanalysis$`Thracian total`)
nameRoman <-sum(fivebcanalysis$`Roman total`)
nameOther <-sum(fivebcanalysis$`Uncertain total`)












