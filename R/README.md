# Hellenisation of Ancient Thrace - analysis of inscriptions in R

Petra Hermankova, Feb 2020

This document specifies the contents of the hat_project/R folder.


```data``` folder contains all datasets used to analyse in order to produce a PhD disertation in its original format, with all original flaws and research design caveats

```scripts``` folder contains all scripts used to analysed ```data```, individual scripts are commented within the scripts themselves

HAT_R.RProj - Rstudio project, the current working space 


-------------------------
## Data

- CSVs (6thBC.csv to 5thAD.csv) represent a slice of dated scriptions belonging to the given century, e.g. all inscriptions dated to the 6th century BC are listed in the '6thBC.csv', all inscriptions dated to the 3rd century AD are listed in the '3rdAD.csv'

- main source of data / truth is the ```HAT_all_inscriptions_9Nov2016.xlsx```
- all other spreadsheets wre derived from the main source of truth and are stored in the folder ```Derived_datasets```
- updated version of the main source of data / truth is 'HAT_all_inscriptions_17Aug2018.xlsx' which was created post-PhD defense with some minor changes to the dataset (fixed mistakes, typos), the process of cleaning was not recorded by script, therefore it goes against the FAIR data principles. The new updated dataset from 2018 was mostly used to replicate and test the viability of scripts, and should not be used as a main source of data. The main source of truth remains the 'HAT_all_inscriptions_9Nov2016.xlsx.xlsx' until specified otherwise.


### Source of truth 
The source of truth of all R analyses is (```HAT_all_inscriptions_9Nov2016.xlsx```)

This paragraph further specified what the individual tabs within the ```HAT_all_inscriptions_9Nov2016.xlsx``` mean and in what part of analysis they were used. The table is a prime example of how the spreasheet should not be used in a scientific world (multiple tabs, spaces in names, charts as part of the table, multiple tables per tab...), however it has been submitted as part of the doctoral dissertation and some of the analysis and discussion has been based on the spreadsheet.
The author will try to disambiguate as much as possible, to make at least some parts of the process reproducible.


Tabs:
- ```Overview``` represents an overview of the contents of the Heurist Scholar database on the 9 Nov 2016 when the data entry stopped. The overview is available in English and in Czech. More details on the individual meanings and metadata is provided in the Methodological chapter of the dissertation and  in the ```Medatada``` folder in root of this repository.

- ```ALL 9 Nov``` represents a final output from the Heurist scholar database as extracted on 9 Nov 2016. The tab represents a CSV export of the 'Inscription_Info' table with all its encoded values. The metadata, the names of columns and their meaning and additional information on the encoded data is available in the ```Medatada``` folder in root of this repository. If a multiple value was present in the database for one column, pipe (|) was used as a separator.
Columns AG to AS were created after the export from Heurist based on their available dating. Each column represents one century and the value the inscription was assigned if it was dated fully or partially to the particular centrury (more in the Methodological chapter). Example: if an inscriptions was dated to the second and thrid century AD, both respective columns had a value 0.5. If an inscription was dated to three centuries, all three columns would have a value of 0.33. Base on these dating conficients a normalised date for inscriptions in individual centuries was calculated.
Column BI (Context epithet) was created on the basis of column BH (Epithet and its attributes in the Heurist scholar).
Columns BK (collective identity Type, Collective identity Ethnicity) were created on the basis of column BJ (Collective group names and its attributes in Heurist scholar).
Column BN (Total Geographic names) was calculated on the basis of column BM (Geographic names).
Columns BR to BU (Total people, Total names, Context Names, Community Context) were created on the basis of column BQ (Person and its attributes in Heurist Scholar). 

- ```Date``` is an attempt to compare the traditional dating along with the normalised dating (as described above), with charts produced on both dataset in the same tab (note to self: bad habit!). Charts are both in English as well in Czech. 

- ```Date_Span``` represents an analysis of the length of dating of inscriptions by their frequence. The first column 'Span in years' represents the length of the dating (EndYR-StartYR), the column Frequence shows how many inscriptions were dated to the particular length of dating, the column Percentage shows their percentage representation of all dated inscriptions, and the Cummulative percentage show a cummulative percentage of all intervals starting from 1 year and going all the way up to 704.

- ```Geographic names``` represents an overview of subattributes of Geographic names as recorded in individual inscriptions and their frequency. The Heurist ID represents a unique key of individual inscriptions from the 'Inscription Info' CSV. 

- ```QGIS Export``` is a export of geolocation of individual inscriptions (points) that has been converted to a shapefile in QGIS. Heurist ID preserves the ID of individual inscription. Shapefile can be found in the ```Shapefiles/HAT_produced_shapefiles/All_inscriptions_9Nov2016``` folder in the root of this repository.

- ```ALL_recordpointers``` is a representation of all record pointers exported from Heurist scholar, associated with an individual inscription (Heurist ID). Record pointers are: Administrative keywords, Formulaic keywords, Honorific keywords, Religious keywords, Epithet, Collective group names, Geographic names, Person 

- ```Language``` is an attempt on analysing the language of all inscriptions, which was predominantly Greek (by its original purpose), but some Latin inscriptions or bilingual were added to the database as well. The analysis is does not provide any meaningful outcomes and therefore the current tab is hidden from view.

- ```Epithet``` represents an overview of subattributes of Epithet as recorded in individual inscriptions and their frequency. The Heurist ID represents a unique key of individual inscriptions from the 'Inscription Info' CSV.

## Scripts

Scripts from '6thcBC_analysis.R' to '5thcAD_analysis.R' analyse CSV slices of the main dataset in the ```data```folder.

Script 'date_analysis_coeff_one_all.R' analyses only the isncriptions with coefficient of dating 1 (inscriptions that were dated with th eprecision to one century only, and therefore represent the most securely dated inscriptions)

Script 'date_testing_hypothesis.R' is used to analyse the patterns in the lenght of the interval of dating, to see whether editors inflate dating in favour of the round numbers, eg. 100-200 AD instead of 103-197 AD.

Script 'Names_analysis.R' is used to analyse ethnicity of personal names (and it appears not to be finished).