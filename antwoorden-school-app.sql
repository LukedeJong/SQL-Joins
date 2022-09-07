-- Opdracht 1

SELECT naam, woonplaats FROM student 
JOIN plaats ON plaats.code = student.woonplaats
WHERE plaatsnaam != 'Haarlem' AND beurs > 90 ORDER BY plaatsnaam;

-- Opdracht 2

SELECT naam AS voornaam, studie.studie, plaats.plaatsnaam FROM student
JOIN studie on studie.code = student.studie
JOIN plaats ON plaats.code = student.woonplaats
WHERE studie.plaats != "Den Haag";

-- Opdracht 3

SELECT naam, vaknaam, periode FROM student
JOIN deelname ON deelname.id = student.id
JOIN vak on vak.code = deelname.ak
ORDER BY naam, periode;

-- Opdracht 4

SELECT vak.vaknaam, AVG(deelname.cijfer) FROM deelname
JOIN vak ON vak.code = deelname.vak
GROUP BY vak.vaknaam;

-- Opdracht 5

SELECT COUNT(naam) AS "Aantal Studenten", plaats.plaatsnaam FROM student
JOIN studie ON studie.code = student.studie
JOIN plaats ON plaats.code = studie.plaats
GROUP BY studie.plaats;

-- Opdracht 6