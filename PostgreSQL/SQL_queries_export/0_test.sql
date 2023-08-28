-- \i SQL_queries_export/0_test.sql 

SELECT corpusname
    --  , corpusidnumeric
    --  , inscriptionKey
    --  , personKey
     , personal_name.personalname
     , personal_name.Gender
     , personal_name.Ethnicity
  FROM inscription_info 
  JOIN inscriptionPerson USING (inscriptionKey)
  JOIN personPersonalName USING (personKey)
  JOIN personal_name USING (nameKey)
  limit 5;