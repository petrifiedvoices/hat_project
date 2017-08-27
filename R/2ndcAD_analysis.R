
#chronological analysis, subsets data by century, selects only inscriptions that has date certainty index for given century 1, therefore it subsects only the inscriptions that belong to the given century

twoad <- c(HAT_all_inscriptions_9Nov2016_xlsx$`2AD`) #defines the working category

#Dewar A
twoadanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, twoad==1)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

##########################CHANGE ACCORDINGLY########################
#Dewar B
#the selected and the following century dataset
#twoadanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, twoad<1 & twoad >0.49 & HAT_all_inscriptions_9Nov2016_xlsx$`3AD` >0.49)   #subsets only incriptions with the coeficient<1 AND >0.49, those that are dated to the selected and the following century

#twoadanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx,twoad==1 | twoad==0.5 & HAT_all_inscriptions_9Nov2016_xlsx$`3AD` >0)
###################################################################

twoadregiontable<- as.data.frame(table(twoadanalysis$`Ancient Site -  Region`))
colnames(twoadregiontable) <- c('Var1','Freq','Percentage')
twoadregiontable$Percentage <-(twoadregiontable / sum (twoadregiontable$Freq) * 100)
sum(twoadregiontable$Freq)
twoadsitetable <-as.data.frame(table(twoadanalysis$`Modern Location`))
colnames(twoadsitetable) <- c('Var1','Freq','Percentage')
twoadsitetable$Percentage <-(twoadsitetable / sum (twoadsitetable$Freq) * 100)

twoadarchcontext <-as.data.frame(table(twoadanalysis$`Archaeological context`))
twoadmaterial <-as.data.frame(table(twoadanalysis$`Material category`))
twoadstone <-as.data.frame(table(twoadanalysis$Stone))
twoadoriginstone <-as.data.frame(table(twoadanalysis$`Origin of stone`))
twoadobject <-as.data.frame(table(twoadanalysis$`Object category`))
twoaddecoration <-as.data.frame(table(twoadanalysis$Decoration))
twoadrelief <-as.data.frame(table(twoadanalysis$`Relief Decoration`))
twoadfigural <-as.data.frame(table(twoadanalysis$`Figural Relief`))
twoadarchitectural <-as.data.frame(table(twoadanalysis$`Architectural Relief`))
twoaddialect <-as.data.frame(table(twoadanalysis$`Dialect`))
twoadlatin <-as.data.frame(table(twoadanalysis$`Latin`))
twoadscript <-as.data.frame(table(twoadanalysis$Script))
twoadlayout <-as.data.frame(table(twoadanalysis$`Layout`))

twoadtype <- as.data.frame(table(twoadanalysis$`Document typology`))
twoadprivate <- as.data.frame(table(twoadanalysis$`Private documents`))
twoadpublic <- as.data.frame(table(twoadanalysis$`Public documents`))
twoadextent <- summary(twoadanalysis$`Extent of lines`)
twoadadmin <-as.data.frame(table(twoadanalysis$`Administrative keywords`))
twoadformulaic <- as.data.frame(table(twoadanalysis$`Formulaic keywords`))
twoadhonorific <- as.data.frame(table(twoadanalysis$`Honorific keywords`))
twoadreligious <- as.data.frame(table(twoadanalysis$`Religious keywords`))
twoadepithet <- as.data.frame(table(twoadanalysis$Epithet))
twoadepithetcontext <- as.data.frame(table(twoadanalysis$`Context epithet`))
twoadcollectivegroup <-as.data.frame (table(twoadanalysis$`Collective group names`))
twoadcollectiveidentitytype <- as.data.frame (table(twoadanalysis$`Collective Identity Type`))
twoadcollectiveethnicity <- as.data.frame(table(twoadanalysis$`Collective identity Ethnicity`))
twoadgeo <-as.data.frame(table(twoadanalysis$`Geographic names`))
twoadtotalnames <-as.data.frame(table(twoadanalysis$`Total names`))
twoadtotalpeople <-as.data.frame(table(twoadanalysis$`Total people`))
twoadpopulation <-sum(twoadanalysis$`Total people`)

twoadcommunitycontext <-as.data.frame(table(twoadanalysis$`Community Context`))

twoadcommunity <- as.data.frame(table(twoadanalysis$`Context Names`))
colnames(twoadcommunity) <- c('Origin of name','Freq','Percentage')
twoadcommunity$Percentage <-(twoadcommunity / sum (twoadcommunity$Freq) * 100)













