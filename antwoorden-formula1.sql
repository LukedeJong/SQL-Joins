-- Opdracht 1

SELECT races.name, circuits.name, races.year FROM races
JOIN circuits ON circuits.circuitId = races.circuitId
WHERE races.year = 2018
ORDER BY races.year DESC;

-- Opdracht 2

SELECT races.name, drivers.surname, driver_standing.points FROM races
JOIN driver_standing ON driver_standing.raceId = races.raceId
JOIN drivers ON drivers.driverId = driver_standing.driverId
WHERE driver_standing.points = 10 AND races.year = 2017
ORDER BY races.name;

-- Opdracht 3
