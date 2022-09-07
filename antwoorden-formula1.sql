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

SELECT drivers.forename, drivers.surname, pitstops.duration FROM drivers
JOIN pitstops ON pitstops.driverId = drivers.driverId
WHERE pitstops.duration < 25;

-- Opdracht 4

SELECT constructors.name, races.name FROM constructors
JOIN constructor_standing ON constructor_standing.constructorId = constructors.constructorId
JOIN races ON races.raceId = constructor_standing.raceId
WHERE constructors.name = "Mclaren" AND races.year = 2010;

-- Opdracht 5