-- Active: 1695853383510@@127.0.0.1@3306
-- Conecte o arquivo pratica-aprofundamento-sql.db com a extensão MySQL e ative a conexão aqui

-- Deletar tabela
DROP TABLE pokemons;

-- Criar tabela
CREATE TABLE pokemons (
    id INTEGER PRIMARY KEY UNIQUE NOT NULL,
    name TEXT UNIQUE NOT NULL,
    type TEXT NOT NULL,
    hp INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    special_attack INTEGER NOT NULL,
    special_defense INTEGER NOT NULL,
    speed INTEGER NOT NULL
);

-- Popular tabela
INSERT INTO pokemons (
    id,
    name,
    type,
    hp,
    attack,
    defense,
    special_attack,
    special_defense,
    speed
)
VALUES 
    (1, "bulbasaur", "grass", 45, 49, 49, 65, 65, 45),
    (2, "ivysaur", "grass", 60, 62, 63, 80, 80, 60),
    (3, "venusaur", "grass", 80, 82, 83, 100, 100, 80),
    (4, "charmander", "fire", 39, 52, 43, 60, 50, 65),
    (5, "charmeleon", "fire", 58, 64, 58, 80, 65, 80),
    (6, "charizard", "fire", 78, 84, 78, 109, 85, 100),
    (7, "squirtle", "water", 44, 48, 65, 50, 64, 43),
    (8, "wartortle", "water", 59, 63, 80, 65, 80, 58),
    (9, "blastoise", "water", 79, 83, 100, 85, 105, 78);

-- Buscar todos os pokemons
SELECT * FROM pokemons;

-- Práticas

-- Buscar speed maior que 60 em todas colunas --
SELECT * FROM pokemons
WHERE speed > 60;

-- Buscar speed maior que 60 em colunar especificas --
SELECT name, id, speed FROM pokemons
WHERE speed > 60;

-- Buscar ataque e especial ataque maior ou igual a 60 --
SELECT * FROM pokemons
WHERE atack >= 60 AND special_attack >= 60;

-- Filtrar pokemons onde o nome tenha saur no final --
SELECT * FROM pokemons
WHERE name LIKE '%SAUR';

-- Buscar pokemons e pegar media simples da media hp --

SELECT AVG(hp) AS mediaHP FROM pokemons; 

-- Buscar número de linhas de colunas de pokemon --
SELECT COUNT(*) AS totalPokemons FROM pokemons;

-- Buscar pokemons ordenar e trazer resposta em decrescente -- ADD
SELECT * FROM pokemons ORDER BY defense DESC;

-- Buscar a contagem de tipos pokemons e agrupar por tipo --
SELECT COUNT(*), type FROM pokemons GROUP BY "type";

-- Buscar todos os pokemons a partir da quinta linha e exibir 3 linhas --
SELECT * FROM pokemons LIMIT 3 OFFSET 5;

-- Prática 3.3 (alternativa)
SELECT * FROM pokemons
LIMIT 4, 3;

-- FIXAÇÃO
SELECT * FROM pokemons
WHERE TYPE = 'fire'
OR TYPE = 'grass'
ORDER BY attack ASC
LIMIT 3
OFFSET 2;