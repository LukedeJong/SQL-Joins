SELECT naam, woonplaats FROM student 
JOIN plaats ON plaats.code = student.woonplaats
WHERE plaatsnaam != 'Haarlem' AND beurs > 90 ;