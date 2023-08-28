/* I want to get attributes from inscription_info (corpusname, corpusidnumeric), all info about epigraphic person, including all personal names (and their ethnicity and gender), ethnic names, partner names, grandparent name but not just as a foreign key, but as their actual values. 
Each inscription can have multiple epigraphic persons, and epigraphic person can be on multiple inscriptions.
*/

SELECT
    ii.corpusname,ii.corpusidnumeric,
    ep.PersonalName AS PersonName,
    pn.Ethnicity,
    pn.Gender
FROM
    inscription_info AS ii
LEFT JOIN
    inscriptionPerson AS ip ON ii.inscriptionKey = ip.inscriptionKey
LEFT JOIN
    epigraphic_person AS ep ON ip.personKey = ep.personKey
LEFT JOIN
    personal_name as pn USING (PersonalName);