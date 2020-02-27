
#chronological analysis, subsets data by century, selects only inscriptions that has date certainty index for given century 1, therefore it subsects only the inscriptions that belong to the given century

fourbc <- c(HAT_all_inscriptions_17Aug2018_xlsx$`4BC`) #defines the working category

#Dewar A
#fourbcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, fourbc==1)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

##########################CHANGE ACCORDINGLY########################
#Dewar B
#the selected and the following century dataset
#fourbcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, fourbc<1 & fourbc >0.49 & HAT_all_inscriptions_9Nov2016_xlsx$`3BC` >0.49)   #subsets only incriptions with the coeficient<1 AND >0.49, those that are dated to the selected and the following century

#only inscriptions dated to two centuries
#fourbcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, fourbc >0.49 & HAT_all_inscriptions_9Nov2016_xlsx$`3BC` >0.49)
###################################################################

#COAST vs INLAND analysis
#Dewar A + base on their area> coast or inland

#coast

#subsets only incriptions with the coeficient=1, and found only on the coast
#fourbcanalysis <- subset(HAT_all_inscriptions_17Aug2018_xlsx, fourbc==1 & HAT_all_inscriptions_17Aug2018_xlsx$Area == 'Coast')

#inland
fourbcanalysis <- subset(HAT_all_inscriptions_17Aug2018_xlsx, fourbc==1 & HAT_all_inscriptions_17Aug2018_xlsx$Area == 'Inland')  #subsets only incriptions with the coeficient=1, and found only inland
##############################

fourbcregiontable<- as.data.frame(table(fourbcanalysis$`Ancient Site -  Region`))
colnames(fourbcregiontable) <- c('Var1','Freq','Percentage')
fourbcregiontable$Percentage <-(fourbcregiontable / sum (fourbcregiontable$Freq) * 100)
sum(fourbcregiontable$Freq)
fourbcsitetable <-as.data.frame(table(fourbcanalysis$`Modern Location`))
colnames(fourbcsitetable) <- c('Var1','Freq','Percentage')
fourbcsitetable$Percentage <-(fourbcsitetable / sum (fourbcsitetable$Freq) * 100)

fourbcarchcontext <-as.data.frame(table(fourbcanalysis$`Archaeological context`))
fourbcmaterial <-as.data.frame(table(fourbcanalysis$`Material category`))
fourbcstone <-as.data.frame(table(fourbcanalysis$Stone))
fourbcoriginstone <-as.data.frame(table(fourbcanalysis$`Origin of stone`))
fourbcobject <-as.data.frame(table(fourbcanalysis$`Object category`))
fourbcdecoration <-as.data.frame(table(fourbcanalysis$Decoration))
fourbcrelief <-as.data.frame(table(fourbcanalysis$`Relief Decoration`))
fourbcfigural <-as.data.frame(table(fourbcanalysis$`Figural Relief`))
fourbcarchitectural <-as.data.frame(table(fourbcanalysis$`Architectural Relief`))
fourbcdialect <-as.data.frame(table(fourbcanalysis$`Dialect`))
fourbclatin <-as.data.frame(table(fourbcanalysis$`Latin`))
fourbcscript <-as.data.frame(table(fourbcanalysis$Script))
fourbclayout <-as.data.frame(table(fourbcanalysis$`Layout`))

fourbctype <- as.data.frame(table(fourbcanalysis$`Document typology`))
fourbcprivate <- as.data.frame(table(fourbcanalysis$`Private documents`))
fourbcpublic <- as.data.frame(table(fourbcanalysis$`Public documents`))
fourbcextent <- summary(fourbcanalysis$`Extent of lines`)
fourbcadmin <-as.data.frame(table(fourbcanalysis$`Administrative keywords`))
fourbcformulaic <- as.data.frame(table(fourbcanalysis$`Formulaic keywords`))
fourbchonorific <- as.data.frame(table(fourbcanalysis$`Honorific keywords`))
fourbcreligious <- as.data.frame(table(fourbcanalysis$`Religious keywords`))
fourbcepithet <- as.data.frame(table(fourbcanalysis$Epithet))
fourbcepithetcontext <- as.data.frame(table(fourbcanalysis$`Context epithet`))
fourbccollectivegroup <-as.data.frame (table(fourbcanalysis$`Collective group names`))
fourbccollectiveidentitytype <- as.data.frame (table(fourbcanalysis$`Collective Identity Type`))
fourbccollectiveethnicity <- as.data.frame(table(fourbcanalysis$`Collective identity Ethnicity`))
fourbcgeo <-as.data.frame(table(fourbcanalysis$`Geographic names`))
fourbctotalnames <-as.data.frame(table(fourbcanalysis$`Total names`))
fourbctotalpeople <-as.data.frame(table(fourbcanalysis$`Total people`))
fourbcpopulation <-sum(fourbcanalysis$`Total people`)

fourbccommunitycontext <-as.data.frame(table(fourbcanalysis$`Community Context`))

fourbccommunity <- as.data.frame(table(fourbcanalysis$`Context Names`))
colnames(fourbccommunity) <- c('Origin of name','Freq','Percentage')
fourbccommunity$Percentage <-(fourbccommunity / sum (fourbccommunity$Freq) * 100)

nameGreek <-sum(fourbcanalysis$`Greek total`)
nameThracian <-sum(fourbcanalysis$`Thracian total`)
nameRoman <-sum(fourbcanalysis$`Roman total`)
nameOther <-sum(fourbcanalysis$`Uncertain total`)











