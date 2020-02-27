
#chronological onebcanalysis, subsets data by century, selects only inscriptions that has date certainty index for given century 1, therefore it subsects only the inscriptions that belong to the given century

#sixth century BC
sixthbc <- c(HAT_all_inscriptions_9Nov2016_xlsx$`6BC`) #defines the working category, this time inscriptions that are dated to the 5th c BC

sixbcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, sixthbc==1)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

sixbcregiontable<- as.data.frame(table(sixbcanalysis$`Ancient Site -  Region`))
colnames(sixbcregiontable) <- c('Var1','Freq','Percentage')
sixbcregiontable$Percentage <-(sixbcregiontable / sum (sixbcregiontable$Freq) * 100)
sum(sixbcregiontable$Freq)

sixbctype <- as.data.frame(table(sixbcanalysis$`Document typology`)) #typology of inscriptions, private vs public vs unknown
sixbcprivate <- as.data.frame(table(sixbcanalysis$`Private documents`)) #typology of private inscriptions
sixbcpublic <- as.data.frame(table(sixbcanalysis$`Public documents`)) #typology of public inscriptions
sixbcextent <- summary(sixbcanalysis$`Extent of lines`) #summary of extent of lines of inscriptions
sixbcadmin <-as.data.frame(table(sixbcanalysis$`Administrative keywords`)) #summary of administrative keywords
sixbcformulaic <- as.data.frame(table(sixbcanalysis$`Formulaic keywords`)) #summary of formulaic keywords
sixbchonorific <- as.data.frame(table(sixbcanalysis$`Honorific keywords`)) #summary of honorific keywords
sixbcreligious <- as.data.frame(table(sixbcanalysis$`Religious keywords`)) #summary of religious keywords
sixbcepithet <- as.data.frame(table(sixbcanalysis$Epithet)) #summary of epithets
sixbccollectivegroup <-as.data.frame (table(sixbcanalysis$`Collective group names`)) #summary of collective group names
sixbccollectiveidentitytype <- as.data.frame (table(sixbcanalysis$`Collective Identity Type`)) #summary of collective identitity types, e.g. city, region, tribe
sixbccollectiveethnicity <- as.data.frame(table(sixbcanalysis$`Collective identity Ethnicity`)) #Summary of ethnicity of collective identity statement, e.g. Greek, Thracian, Roman
sixbcgeo <-as.data.frame(table(sixbcanalysis$`Geographic names`)) #summary of geographic names
sixbctotalnames <-as.data.frame(table(sixbcanalysis$`Total names`)) #total number of all names used
sixbctotalpeople <-as.data.frame(table(sixbcanalysis$`Total people`)) #total number of people on all inscriptions

sixbccommunitycontext <-as.data.frame(table(sixbcanalysis$`Community Context`))

sixbccommunity <- as.data.frame(table(sixbcanalysis$`Context Names`))
colnames(sixbccommunity) <- c('Origin of name','Freq','Percentage')
sixbccommunity$Percentage <-(sixbccommunity / sum (sixbccommunity$Freq) * 100)


#fifth century BC

fivebc <- c(HAT_all_inscriptions_9Nov2016_xlsx$`5BC`) #defines the working category, this time inscriptions that are dated to the 5th c BC

fivebcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, fivebc==1)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

fivebcregiontable<- as.data.frame(table(fivebcanalysis$`Ancient Site -  Region`))
colnames(fivebcregiontable) <- c('Var1','Freq','Percentage')
fivebcregiontable$Percentage <-(fivebcregiontable / sum (fivebcregiontable$Freq) * 100)
sum(fivebcregiontable$Freq)

fivebctype <- as.data.frame(table(fivebcanalysis$`Document typology`))
fivebcprivate <- as.data.frame(table(fivebcanalysis$`Private documents`))
fivebcpublic <- as.data.frame(table(fivebcanalysis$`Public documents`))
fivebcextent <- summary(fivebcanalysis$`Extent of lines`)
fivebcadmin <-as.data.frame(table(fivebcanalysis$`Administrative keywords`))
fivebcformulaic <- as.data.frame(table(fivebcanalysis$`Formulaic keywords`))
fivebchonorific <- as.data.frame(table(fivebcanalysis$`Honorific keywords`))
fivebcreligious <- as.data.frame(table(fivebcanalysis$`Religious keywords`))
fivebcepithet <- as.data.frame(table(fivebcanalysis$Epithet))
fivebccollectivegroup <-as.data.frame (table(fivebcanalysis$`Collective group names`))
fivebccollectiveidentitytype <- as.data.frame (table(fivebcanalysis$`Collective Identity Type`))
fivebccollectiveethnicity <- as.data.frame(table(fivebcanalysis$`Collective identity Ethnicity`))
fivebcgeo <-as.data.frame(table(fivebcanalysis$`Geographic names`))
fivebctotalnames <-as.data.frame(table(fivebcanalysis$`Total names`))
fivebctotalpeople <-as.data.frame(table(fivebcanalysis$`Total people`))

fivebccommunitycontext <-as.data.frame(table(fivebcanalysis$`Community Context`))

fivebccommunity <- as.data.frame(table(fivebcanalysis$`Context Names`))
colnames(fivebccommunity) <- c('Origin of name','Freq','Percentage')
fivebccommunity$Percentage <-(fivebccommunity / sum (fivebccommunity$Freq) * 100)

#fourth century BC

fourbc <- c(HAT_all_inscriptions_9Nov2016_xlsx$`4BC`) #defines the working category, this time inscriptions that are dated to the 5th c BC

fourbcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, fourbc==1)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

fourbcregiontable<- as.data.frame(table(fourbcanalysis$`Ancient Site -  Region`))
colnames(fourbcregiontable) <- c('Var1','Freq','Percentage')
fourbcregiontable$Percentage <-(fourbcregiontable / sum (fourbcregiontable$Freq) * 100)
sum(fourbcregiontable$Freq)

fourbctype <- as.data.frame(table(fourbcanalysis$`Document typology`))
fourbcprivate <- as.data.frame(table(fourbcanalysis$`Private documents`))
fourbcpublic <- as.data.frame(table(fourbcanalysis$`Public documents`))
fourbcextent <- summary(fourbcanalysis$`Extent of lines`)
fourbcadmin <-as.data.frame(table(fourbcanalysis$`Administrative keywords`))
fourbcformulaic <- as.data.frame(table(fourbcanalysis$`Formulaic keywords`))
fourbchonorific <- as.data.frame(table(fourbcanalysis$`Honorific keywords`))
fourbcreligious <- as.data.frame(table(fourbcanalysis$`Religious keywords`))
fourbcepithet <- as.data.frame(table(fourbcanalysis$Epithet))
fourbccollectivegroup <-as.data.frame (table(fourbcanalysis$`Collective group names`))
fourbccollectiveidentitytype <- as.data.frame (table(fourbcanalysis$`Collective Identity Type`))
fourbccollectiveethnicity <- as.data.frame(table(fourbcanalysis$`Collective identity Ethnicity`))
fourbcgeo <-as.data.frame(table(fourbcanalysis$`Geographic names`))
fourbctotalnames <-as.data.frame(table(fourbcanalysis$`Total names`))
fourbctotalpeople <-as.data.frame(table(fourbcanalysis$`Total people`))

fourbccommunitycontext <-as.data.frame(table(fourbcanalysis$`Community Context`))

fourbccommunity <- as.data.frame(table(fourbcanalysis$`Context Names`))
colnames(fourbccommunity) <- c('Origin of name','Freq','Percentage')
fourbccommunity$Percentage <-(fourbccommunity / sum (fourbccommunity$Freq) * 100)


#third century BC

threebc <- c(HAT_all_inscriptions_9Nov2016_xlsx$`3BC`) #defines the working category, this time inscriptions that are dated to the 5th c BC

threebcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, threebc==1)  #subsets only incriptions with the coeficient=1, those that are dated only to three century, the most certain and probable

threebcregiontable<- as.data.frame(table(threebcanalysis$`Ancient Site -  Region`))
colnames(threebcregiontable) <- c('Var1','Freq','Percentage')
threebcregiontable$Percentage <-(threebcregiontable / sum (threebcregiontable$Freq) * 100)
sum(onebcregiontable$Freq)

threebctype <- as.data.frame(table(threebcanalysis$`Document typology`))
threebcprivate <- as.data.frame(table(threebcanalysis$`Private documents`))
threebcpublic <- as.data.frame(table(threebcanalysis$`Public documents`))
threebcextent <- summary(threebcanalysis$`Extent of lines`)
threebcadmin <-as.data.frame(table(threebcanalysis$`Administrative keywords`))
threebcformulaic <- as.data.frame(table(threebcanalysis$`Formulaic keywords`))
threebchonorific <- as.data.frame(table(threebcanalysis$`Honorific keywords`))
threebcreligious <- as.data.frame(table(threebcanalysis$`Religious keywords`))
threebcepithet <- as.data.frame(table(threebcanalysis$Epithet))
threebccollectivegroup <-as.data.frame (table(threebcanalysis$`Collective group names`))
threebccollectiveidentitytype <- as.data.frame (table(threebcanalysis$`Collective Identity Type`))
threebccollectiveethnicity <- as.data.frame(table(threebcanalysis$`Collective identity Ethnicity`))
threebcgeo <-as.data.frame(table(threebcanalysis$`Geographic names`))
threebctotalnames <-as.data.frame(table(threebcanalysis$`Total names`))
threebctotalpeople <-as.data.frame(table(threebcanalysis$`Total people`))

threebccommunitycontext <-as.data.frame(table(threebcanalysis$`Community Context`))

threebccommunity <- as.data.frame(table(threebcanalysis$`Context Names`))
colnames(threebccommunity) <- c('Origin of name','Freq','Percentage')
threebccommunity$Percentage <-(threebccommunity / sum (threebccommunity$Freq) * 100)

#second century BC

twobc <- c(HAT_all_inscriptions_9Nov2016_xlsx$`2BC`) #defines the working category, this time inscriptions that are dated to the 5th c BC

twobcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, twobc==1)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

twobcregiontable<- as.data.frame(table(twobcanalysis$`Ancient Site -  Region`))
colnames(twobcregiontable) <- c('Var1','Freq','Percentage')
twobcregiontable$Percentage <-(twobcregiontable / sum (twobcregiontable$Freq) * 100)
sum(twobcregiontable$Freq)

twobctype <- as.data.frame(table(twobcanalysis$`Document typology`))
twobcprivate <- as.data.frame(table(twobcanalysis$`Private documents`))
twobcpublic <- as.data.frame(table(twobcanalysis$`Public documents`))
twobcextent <- summary(twobcanalysis$`Extent of lines`)
twobcadmin <-as.data.frame(table(twobcanalysis$`Administrative keywords`))
twobcformulaic <- as.data.frame(table(twobcanalysis$`Formulaic keywords`))
twobchonorific <- as.data.frame(table(twobcanalysis$`Honorific keywords`))
twobcreligious <- as.data.frame(table(twobcanalysis$`Religious keywords`))
twobcepithet <- as.data.frame(table(twobcanalysis$Epithet))
twobccollectivegroup <-as.data.frame (table(twobcanalysis$`Collective group names`))
twobccollectiveidentitytype <- as.data.frame (table(twobcanalysis$`Collective Identity Type`))
twobccollectiveethnicity <- as.data.frame(table(twobcanalysis$`Collective identity Ethnicity`))
twobcgeo <-as.data.frame(table(twobcanalysis$`Geographic names`))
twobctotalnames <-as.data.frame(table(twobcanalysis$`Total names`))
twobctotalpeople <-as.data.frame(table(twobcanalysis$`Total people`))

twobccommunitycontext <-as.data.frame(table(twobcanalysis$`Community Context`))

twobccommunity <- as.data.frame(table(twobcanalysis$`Context Names`))
colnames(twobccommunity) <- c('Origin of name','Freq','Percentage')
twobccommunity$Percentage <-(twobccommunity / sum (twobccommunity$Freq) * 100)

#first century BC

onebc <- c(HAT_all_inscriptions_9Nov2016_xlsx$`1BC`) #defines the working category, this time inscriptions that are dated to the 5th c BC

onebcanalysis <- subset(HAT_all_inscriptions_9Nov2016_xlsx, onebc==1)  #subsets only incriptions with the coeficient=1, those that are dated only to one century, the most certain and probable

onebcregiontable<- as.data.frame(table(onebcanalysis$`Ancient Site -  Region`))
colnames(onebcregiontable) <- c('Var1','Freq','Percentage')
onebcregiontable$Percentage <-(onebcregiontable / sum (onebcregiontable$Freq) * 100)
sum(onebcregiontable$Freq)

onebctype <- as.data.frame(table(onebcanalysis$`Document typology`))
onebcprivate <- as.data.frame(table(onebcanalysis$`Private documents`))
onebcpublic <- as.data.frame(table(onebcanalysis$`Public documents`))
onebcextent <- summary(onebcanalysis$`Extent of lines`)
onebcadmin <-as.data.frame(table(onebcanalysis$`Administrative keywords`))
onebcformulaic <- as.data.frame(table(onebcanalysis$`Formulaic keywords`))
onebchonorific <- as.data.frame(table(onebcanalysis$`Honorific keywords`))
onebcreligious <- as.data.frame(table(onebcanalysis$`Religious keywords`))
onebcepithet <- as.data.frame(table(onebcanalysis$Epithet))
onebccollectivegroup <-as.data.frame (table(onebcanalysis$`Collective group names`))
onebccollectiveidentitytype <- as.data.frame (table(onebcanalysis$`Collective Identity Type`))
onebccollectiveethnicity <- as.data.frame(table(onebcanalysis$`Collective identity Ethnicity`))
onebcgeo <-as.data.frame(table(onebcanalysis$`Geographic names`))
onebctotalnames <-as.data.frame(table(onebcanalysis$`Total names`))
onebctotalpeople <-as.data.frame(table(onebcanalysis$`Total people`))

onebccommunitycontext <-as.data.frame(table(onebcanalysis$`Community Context`))

onebccommunity <- as.data.frame(table(onebcanalysis$`Context Names`))
colnames(onebccommunity) <- c('Origin of name','Freq','Percentage')
onebccommunity$Percentage <-(onebccommunity / sum (onebccommunity$Freq) * 100)













