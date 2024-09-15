
-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano
FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

-- 3 - Buscar pelo filme "De Volta para o Futuro", trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;

-- 6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7 - Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

-- 8 - Buscar os atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Masculino';

-- 9 - Buscar os atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Feminino'
ORDER BY PrimeiroNome ASC;

-- 10 - Buscar o nome do filme e o gênero
SELECT f.Nome, g.Nome AS Genero
FROM Filmes f
JOIN Generos g ON f.GeneroID = g.ID;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome, g.Nome AS Genero
FROM Filmes f
JOIN Generos g ON f.GeneroID = g.ID
WHERE g.Nome = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, p.Nome AS Papel
FROM Filmes f
JOIN Papeis p ON f.ID = p.FilmeID
JOIN Atores a ON p.AtorID = a.ID;
