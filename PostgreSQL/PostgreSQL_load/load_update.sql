\c template1
drop database hat;
create database hat;
\c hat

\cd '/home/petra/Github/hat_project/PostgreSQL/PostgreSQL_load/'

create extension "postgis";

create table administrative_keywords (
adminKey	integer primary key,
AdministrativeKeywords text,
CategoryAdminKeyword text,
Origin text,
ShortSummary text,
AuthorOrCreator text
);

\COPY administrative_keywords FROM 'Administrative_keywords.txt' WITH DELIMITER ',' CSV HEADER

create table collective_name (
collectiveKey integer primary key,
EthnicName text,
GroupNameCategory text,
Origin text,
TypologyOfEthnicName text,
ShortSummary text,
MappableLocation text,
AuthorOrCreator text
);


\COPY collective_name FROM 'Collective_Name.txt' WITH DELIMITER ',' CSV HEADER

alter table collective_name add column mapLocText text;

update collective_name set mapLocText = MappableLocation;

alter table collective_name drop column MappableLocation;

alter table collective_name add column MappableLocation geometry;

update collective_name set MappableLocation = ST_GeomFromText(mapLocText, 4326);

alter table collective_name drop column mapLocText;

create table epigraphic_person (
personKey integer primary key,
PersonalName text,
ParentName text,
EthnicName text,
PartnerName text,
GrandparentName text,
Comments text
);

\COPY epigraphic_person FROM 'Epigraphic_Person.txt' WITH DELIMITER ',' CSV HEADER

create table epithet (
epithetKey integer primary key,
ShortSummary text,
Epithet text,
Characteristics text, 
AuthorOrCreator text
);

\COPY epithet FROM 'Epithet.txt' WITH DELIMITER ',' CSV HEADER

create table formulaic_keywords (
formKey	integer primary key,
Formulae text,
FormulaicCategory text,
Origin text,
ShortSummary text,
Characteristics text,
AuthorOrCreator text
);

\COPY formulaic_keywords FROM 'Formulaic_keywords.txt' WITH DELIMITER ',' CSV HEADER

create table honorific_keywords (
honorKey	integer primary key,
HonorificKeyword text,
Origin text,
HonorificCategory text,
ShortSummary text,
AuthorOrCreator text
);

\COPY honorific_keywords FROM 'Honorific_keywords.txt' WITH DELIMITER ',' CSV HEADER
 
create table religious_keywords (
religKey	integer primary key,
ReligiousKeyword text,
Origin text,
ReligiousCategory text,
ShortSummary text,
AuthorOrCreator text
);

\COPY religious_keywords FROM 'Religious_keywords.txt' WITH DELIMITER ',' CSV HEADER

create table location (
locKey	integer primary key,
ModernLocation text,
AncientSite text,
AncientSiteRegion text,
TemporalHorizon text,
AuthorOrCreator text
);

\COPY location FROM 'Location.txt' WITH DELIMITER ',' CSV HEADER

create table personal_name (
nameKey	integer primary key,
PersonalName text,
Gender text,
Ethnicity text,
RomanOnomastics text,
LpgnDate text,
ParissakiDate text,
Source text,
AuthorOrCreator text
);

\COPY personal_name FROM 'Personal_Name.txt' WITH DELIMITER ',' CSV HEADER

create table geographic_name (
geoKey	integer primary key,
GeographicName text,
GeographicType text,
TypeOfGeographicalEntity text,
ShortSummary text,
MappableLocation text,
Date text,
AuthorOrCreator text
);



\COPY geographic_name FROM 'Geographic_Name.txt' WITH DELIMITER ',' CSV HEADER

alter table geographic_name add column mapLocText text;

update geographic_name set mapLocText = MappableLocation;

alter table geographic_name drop column MappableLocation;

alter table geographic_name add column MappableLocation geometry;

update geographic_name set MappableLocation = ST_GeomFromText(mapLocText, 4326);

alter table geographic_name drop column mapLocText;

create table inscription_info (
inscriptionKey integer PRIMARY KEY,
CreatorOfTheRecord text,
Checked text,
CorpusName text,
CorpusIdNumber text,
CorpusIdNumeric numeric,
SegNumber text,
Location text,
Geolocation text,
PositionCertainty text,
GeographyNotes text,
Reuse text,
ArchaeologicalContext text,
Mound text,
MaterialCategory text,
Stone text,
OriginOfStone text,
ObjectCategory text,
Preservation text,
Decoration text,
ReliefDecoration text,
ArchitecturalRelief text,
FiguralRelief text,
DecorationNotes text,
VisualRecordAvailability text,
StartYear numeric,
EndYear numeric,
RelativeDate text,
Century text,
Dialect text,
Latin text,
LanguageForm text,
Script text,
Layout text,
DocumentTypology text,
PublicDocuments text,
PrivateDocuments text,
DocumentTypologyNotes text,
ExtentOfLines text,
AdministrativeKeywords text,
FormulaicKeywords text,
HonorificKeywords text,
ReligiousKeywords text,
Epithet text,
CollectiveGroupNames text,
GeographicNames text,
ImperialTitulature text,
Currency text,
Person text,
VisualDocumentation text
);

\COPY inscription_info FROM 'Inscription_Info.txt' WITH DELIMITER ',' CSV HEADER


create table adminInscription (
	inscriptionKey integer REFERENCES inscription_info,
	adminKey integer REFERENCES administrative_keywords,
	PRIMARY KEY (inscriptionKey, adminKey)
);

insert into adminInscription(inscriptionKey, adminKey)
select inscriptionKey, cast(s.token as integer) from inscription_info, unnest(string_to_array(AdministrativeKeywords, '|')) s(token) where AdministrativeKeywords is not null;

alter table inscription_info drop column AdministrativeKeywords;


create table formInscription (
	inscriptionKey integer REFERENCES inscription_info,
	formKey integer REFERENCES formulaic_keywords,
	PRIMARY KEY (inscriptionKey, formKey)
);

insert into formInscription(inscriptionKey, formKey)
select inscriptionKey, cast(s.token as integer) from inscription_info, unnest(string_to_array(FormulaicKeywords, '|')) s(token) where FormulaicKeywords is not null;

alter table inscription_info drop column FormulaicKeywords;

create table honorInscription (
	inscriptionKey integer REFERENCES inscription_info,
	honorKey integer REFERENCES honorific_keywords,
	PRIMARY KEY (inscriptionKey, honorKey)
);

insert into honorInscription(inscriptionKey, honorKey)
select inscriptionKey, cast(s.token as integer) from inscription_info, unnest(string_to_array(HonorificKeywords, '|')) s(token) where HonorificKeywords is not null;

alter table inscription_info drop column HonorificKeywords;


create table religInscription (
	inscriptionKey integer REFERENCES inscription_info,
	religKey integer REFERENCES religious_keywords,
	PRIMARY KEY (inscriptionKey, religKey)
);

insert into religInscription(inscriptionKey, religKey)
select inscriptionKey, cast(s.token as integer) from inscription_info, unnest(string_to_array(ReligiousKeywords, '|')) s(token) where ReligiousKeywords is not null;

alter table inscription_info drop column ReligiousKeywords;


create table epithetInscription (
	inscriptionKey integer REFERENCES inscription_info,
	epithetKey integer REFERENCES epithet,
	PRIMARY KEY (inscriptionKey, epithetKey)
);

insert into epithetInscription(inscriptionKey, epithetKey)
select inscriptionKey, cast(s.token as integer) from inscription_info, unnest(string_to_array(Epithet, '|')) s(token) where Epithet is not null;

alter table inscription_info drop column Epithet;

create table locInscription (
	inscriptionKey integer REFERENCES inscription_info,
	locKey integer REFERENCES location,
	PRIMARY KEY (inscriptionKey, locKey)
);

insert into locInscription(inscriptionKey, locKey)
select inscriptionKey, cast(s.token as integer) from inscription_info, unnest(string_to_array(Location, '|')) s(token) where Location is not null;

alter table inscription_info drop column Location;



create table geoInscription (
	inscriptionKey integer REFERENCES inscription_info,
	geoKey integer REFERENCES geographic_name,
	PRIMARY KEY (inscriptionKey, geoKey)
);

insert into geoInscription(inscriptionKey, geoKey)
select inscriptionKey, cast(s.token as integer) from inscription_info, unnest(string_to_array(GeographicNames, '|')) s(token) where GeographicNames is not null;

alter table inscription_info drop column GeographicNames;


create table collectiveInscription (
	inscriptionKey integer REFERENCES inscription_info,
	collectiveKey integer REFERENCES collective_name,
	PRIMARY KEY (inscriptionKey, collectiveKey)
);

insert into collectiveInscription(inscriptionKey, collectiveKey)
select inscriptionKey, cast(s.token as integer) from inscription_info, unnest(string_to_array(CollectiveGroupNames, '|')) s(token) where CollectiveGroupNames is not null;

alter table inscription_info drop column CollectiveGroupNames;



alter table inscription_info add column mapLocText text;

update inscription_info set mapLocText = Geolocation;

alter table inscription_info drop column Geolocation;

alter table inscription_info add column Geolocation geometry;

update inscription_info set Geolocation = ST_GeomFromText(mapLocText, 4326);

alter table inscription_info drop column mapLocText;


create table inscriptionPerson (
	inscriptionKey integer REFERENCES inscription_info,
	personKey integer REFERENCES epigraphic_person,
	comment text,
	PRIMARY KEY (inscriptionKey, personKey)
);

create table personPersonalName (
	personKey integer REFERENCES epigraphic_person,
	nameKey integer REFERENCES personal_name,
	class text,
	PRIMARY KEY (personKey, nameKey, class)
);


create table personCollectiveName (
	personKey integer REFERENCES epigraphic_person,
	collectiveKey integer REFERENCES collective_name,
	PRIMARY KEY (personKey, collectiveKey)
);


insert into inscriptionPerson (inscriptionKey, personKey, comment)
  	 select distinct inscriptionKey, cast(s.token as integer), epigraphic_person.Comments
	   from inscription_info, epigraphic_person, unnest(string_to_array(inscription_info.Person, '|')) s(token) 
	  where cast(s.token as integer) = epigraphic_person.personKey;

insert into personPersonalName (personKey, nameKey, class)
	 select distinct personKey, cast(s.token as integer), 'Personal name'
	   from epigraphic_person, unnest(string_to_array(PersonalName, '|')) s(token)
	   where PersonalName is not null;

insert into personPersonalName (personKey, nameKey, class)
	 select distinct personKey, cast(s.token as integer), 'Parent name'
	   from epigraphic_person, unnest(string_to_array(ParentName, '|')) s(token)
	   where ParentName is not null;


insert into personPersonalName (personKey, nameKey, class)
	 select distinct personKey, cast(s.token as integer), 'Partner name'
	   from epigraphic_person, unnest(string_to_array(PartnerName, '|')) s(token)
	   where PartnerName is not null;

insert into personPersonalName (personKey, nameKey, class)
	 select distinct personKey, cast(s.token as integer), 'Grandparent name'
	   from epigraphic_person, unnest(string_to_array(GrandparentName, '|')) s(token)
	   where GrandparentName is not null;


insert into personCollectiveName (personKey, collectiveKey)
	 select distinct personKey, cast(s.token as integer)
	   from epigraphic_person, unnest(string_to_array(EthnicName, '|')) s(token)
	   where EthnicName is not null;





alter table inscription_info drop column Person;




