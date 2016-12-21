create temp view inscriptionperson as
SELECT *
  FROM inscription_info 
  JOIN inscriptionperson using (inscriptionkey)
  JOIN personpersonalname USING(personkey)
  JOIN personal_name using (namekey);


SELECT personkey, inscriptionkey, ethnicity, gender, class
  FROM inscriptionperson
 where personkey IN (SELECT personkey                             
                            FROM inscriptionperson
                           WHERE ethnicity = 'Greek'
                             AND gender = 'Male'
                             and class = 'Personal name')
   and personkey IN (SELECT personkey                            
                            FROM inscriptionperson
                           WHERE ethnicity = 'Thracian'
                             AND gender = 'Female'
                             and class = 'Partner name');
                             