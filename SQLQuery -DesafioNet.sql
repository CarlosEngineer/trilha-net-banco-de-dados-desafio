
--1 - Buscar o nome e ano dos filmes--

SELECT
	Nome,
	Ano
FROM filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano--

SELECT
    Nome,
    Ano
FROM
    filmes
ORDER BY
    Ano
	ASC;

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração--

SELECT
  Nome,
  Ano,
  Duracao
FROM
    filmes
WHERE
    Nome = 'De Volta para o Futuro';

--4 - Buscar os filmes lançados em 1997--

SELECT
    Nome,
    Ano,
    Duracao
FROM
    filmes
WHERE
    Ano = 1997;

--5 - Buscar os filmes lançados APÓS o ano 2000--

SELECT
    Nome,
    Ano,
	Duracao
FROM
    filmes
WHERE
    Ano > 2000;


--6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente--

SELECT
    Nome,
	Ano,
    Duracao
FROM
    filmes
WHERE
    Duracao > 100 AND Duracao < 150
ORDER BY
    Duracao ASC;

	--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente--
SELECT
    Ano,
    COUNT(*) Quantidade_Filmes
FROM
    filmes
GROUP BY
    Ano
ORDER BY
    COUNT(*) DESC;

	--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome--

SELECT * FROM Atores

SELECT
    PrimeiroNome,
    UltimoNome,
	Genero
FROM
    Atores
WHERE
    Genero = 'M';


--19 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome--

SELECT
    PrimeiroNome,
    UltimoNome,
	Genero
FROM
    Atores
WHERE
    Genero = 'f'
ORDER BY
    PrimeiroNome ASC;

	--10 - Buscar o nome do filme e o gênero--
SELECT
    filmes.Nome AS Nome_do_Filme,
    Generos.Genero AS Genero
FROM
    filmes
INNER JOIN
    Generos ON filmes.ID = Generos.ID;


	--10 - Buscar o nome do filme e o gênero--
SELECT
    filmes.Nome  Nome_do_Filme,
    Generos.Genero  Genero
FROM
    filmes
INNER JOIN
    Generos ON filmes.ID = Generos.ID
WHERE
    Generos.Genero = 'Mistério';

	--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel--

SELECT
    Filmes.Nome  Nome_do_Filme,
    Atores.PrimeiroNome,
    Atores.UltimoNome,
    ElencoFilme.Papel
FROM
    Filmes
INNER JOIN
    ElencoFilme ON Filmes.ID = ElencoFilme.ID
INNER JOIN
    Atores ON ElencoFilme.ID = Atores.ID;







