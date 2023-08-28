/* I want to get all info about epigraphic person, including all personal names (and their ethnicity and gender), ethnic names, partner names, grandparent name but not just as a foreign key, but as their actual values
*/

SELECT
    ep.PersonalName,
    ep.ParentName,
    ep.EthnicName,
    ep.PartnerName,
    ep.GrandparentName,
    pn.Ethnicity,
    pn.Gender
FROM
    epigraphic_person AS ep
LEFT JOIN
    personal_name AS pn ON ep.personalname = pn.personalname;
