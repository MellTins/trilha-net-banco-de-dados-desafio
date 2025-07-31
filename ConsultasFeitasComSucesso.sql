--1
SELECT Nome, Ano FROM Filmes;
--2
SELECT Nome,Ano, Duracao FROM Filmes
ORDER BY Ano
--3
SELECT Nome, Ano, Duracao FROM Filmes
Where Nome = 'De Volta para o Futuro'
--4
SELECT Nome, Ano, Duracao FROM Filmes
Where Ano = 1997
--5 
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000
--6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao
--7
SELECT Ano, COUNT(*) AS Quantidade, SUM(Duracao) AS DuracaoTotal
FROM Filmes
GROUP BY Ano
ORDER BY DuracaoTotal DESC;

--8
SELECT Id,PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'
--9
SELECT Id,PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
--10
SELECT fil.Nome, ge.Genero FROM FilmesGenero fi
JOIN Generos ge ON  ge.Id =  fi.IdGenero
JOIN Filmes fil ON fil.Id = fi.IdFilme
--11
SELECT fil.Nome, ge.Genero FROM FilmesGenero fi
JOIN Generos ge ON  ge.Id =  fi.IdGenero
JOIN Filmes fil ON fil.Id = fi.IdFilme
WHERE ge.Genero = 'Mistério'
--12
SELECT Nome,PrimeiroNome,UltimoNome,Papel FROM ElencoFilme el
JOIN Atores ato ON ato.Id = el.IdAtor
JOIN Filmes fi ON fi.Id = el.IdFilme


