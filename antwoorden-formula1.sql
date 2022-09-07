-- Opdracht 1

SELECT races.name, circuits.name, races.year FROM races
JOIN circuits ON circuits.circuitId = races.circuitId
WHERE races.year = 2018
ORDER BY races.year DESC;

-- Opdracht 2