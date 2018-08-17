
#chronological analysis, subsets data by century, selects only inscriptions that has date certainty index for given century 1, therefore it subsects only the inscriptions that belong to the given century

twobc <- c(HAT_all_inscriptions_17Aug2018_xlsx$`2BC`) #defines the working category

#Dewar A
#twobcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, twobc==1)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

##########################CHANGE ACCORDINGLY########################
#Dewar B
#the selected and the following century dataset
#twobcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, twobc<1 & twobc >0.49 & HAT_all_inscriptions_9Nov2016_xlsx$`1BC` >0.49)   #subsets only incriptions with the coeficient<1 AND >0.49, those that are dated to the selected and the following century

#twobcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx,twobc==1 | twobc==0.5 & HAT_all_inscriptions_9Nov2016_xlsx$`1BC` >0)
###################################################################

#COAST vs INLAND analysis
#Dewar A + base on their area> coast or inland

#coast

#subsets only incriptions with the coeficient=1, and found only on the coast
#twobcanalysis <- subset(HAT_all_inscriptions_17Aug2018_xlsx, twobc==1 & HAT_all_inscriptions_17Aug2018_xlsx$Area == 'Coast')

#inland
twobcanalysis <- subset(HAT_all_inscriptions_17Aug2018_xlsx, twobc==1 & HAT_all_inscriptions_17Aug2018_xlsx$Area == 'Inland')  #subsets only incriptions with the coeficient=1, and found only inland

###################################################################

twobcregiontable<- as.data.frame(table(twobcanalysis$`Ancient Site -  Region`))
colnames(twobcregiontable) <- c('Var1','Freq','Percentage')
twobcregiontable$Percentage <-(twobcregiontable / sum (twobcregiontable$Freq) * 100)
sum(twobcregiontable$Freq)
twobcsitetable <-as.data.frame(table(twobcanalysis$`Modern Location`))
colnames(twobcsitetable) <- c('Var1','Freq','Percentage')
twobcsitetable$Percentage <-(twobcsitetable / sum (twobcsitetable$Freq) * 100)

twobcarchcontext <-as.data.frame(table(twobcanalysis$`Archaeological context`))
twobcmaterial <-as.data.frame(table(twobcanalysis$`Material category`))
twobcstone <-as.data.frame(table(twobcanalysis$Stone))
twobcoriginstone <-as.data.frame(table(twobcanalysis$`Origin of stone`))
twobcobject <-as.data.frame(table(twobcanalysis$`Object category`))
twobcdecoration <-as.data.frame(table(twobcanalysis$Decoration))
twobcrelief <-as.data.frame(table(twobcanalysis$`Relief Decoration`))
twobcfigural <-as.data.frame(table(twobcanalysis$`Figural Relief`))
twobcarchitectural <-as.data.frame(table(twobcanalysis$`Architectural Relief`))
twobcdialect <-as.data.frame(table(twobcanalysis$`Dialect`))
twobclatin <-as.data.frame(table(twobcanalysis$`Latin`))
twobcscript <-as.data.frame(table(twobcanalysis$Script))
twobclayout <-as.data.frame(table(twobcanalysis$`Layout`))

twobctype <- as.data.frame(table(twobcanalysis$`Document typology`))
twobcprivate <- as.data.frame(table(twobcanalysis$`Private documents`))
twobcpublic <- as.data.frame(table(twobcanalysis$`Public documents`))
twobcextent <- summary(twobcanalysis$`Extent of lines`)
twobcbcadmin <-as.data.frame(table(twobcanalysis$`Administrative keywords`))
twobcformulaic <- as.data.frame(table(twobcanalysis$`Formulaic keywords`))
twobchonorific <- as.data.frame(table(twobcanalysis$`Honorific keywords`))
twobcreligious <- as.data.frame(table(twobcanalysis$`Religious keywords`))
twobcepithet <- as.data.frame(table(twobcanalysis$Epithet))
twobcepithetcontext <- as.data.frame(table(twobcanalysis$`Context epithet`))
twobccollectivegroup <-as.data.frame (table(twobcanalysis$`Collective group names`))
twobccollectiveidentitytype <- as.data.frame (table(twobcanalysis$`Collective Identity Type`))
twobccollectiveethnicity <- as.data.frame(table(twobcanalysis$`Collective identity Ethnicity`))
twobcgeo <-as.data.frame(table(twobcanalysis$`Geographic names`))
twobctotalnames <-as.data.frame(table(twobcanalysis$`Total names`))
twobctotalpeople <-as.data.frame(table(twobcanalysis$`Total people`))
twobcpopulation <-sum(twobcanalysis$`Total people`)

twobccommunitycontext <-as.data.frame(table(twobcanalysis$`Community Context`))

twobccommunity <- as.data.frame(table(twobcanalysis$`Context Names`))
colnames(twobccommunity) <- c('Origin of name','Freq','Percentage')
twobccommunity$Percentage <-(twobccommunity / sum (twobccommunity$Freq) * 100)

nameGreek <-sum(twobcanalysis$`Greek total`)
nameThracian <-sum(twobcanalysis$`Thracian total`)
nameRoman <-sum(twobcanalysis$`Roman total`)
nameOther <-sum(twobcanalysis$`Uncertain total`)











