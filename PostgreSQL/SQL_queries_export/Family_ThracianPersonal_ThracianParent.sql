CREATE temp view inscriptionfamily as
SELECT *
  FROM inscription_info 
  JOIN inscriptionperson using (inscriptionkey)
  JOIN personpersonalname USING(personkey)
  JOIN personal_name using (namekey);


SELECT personkey, inscriptionkey, ethnicity, gender, class
  FROM inscriptionfamily
 where personkey IN (SELECT personkey                             
                            FROM inscriptionfamily
                           WHERE ethnicity = 'Thracian'
                             and class = 'Personal name')                    
   and personkey IN (SELECT personkey                            
                            FROM inscriptionfamily
                           WHERE ethnicity = 'Thracian'
                             and class = 'Parent name');