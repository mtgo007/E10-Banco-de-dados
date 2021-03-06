-- Consultas
SELECT Nome FROM bibliotecas;

SELECT nome FROM usuario WHERE curso LIKE "Informática";

SELECT nome, autor FROM livro WHERE tema LIKE "Computação";

SELECT * FROM exemplar WHERE anoPublicacao > 2010;

SELECT exemplar.* FROM exemplar JOIN bibliotecas ON bibliotecas.id = exemplar.idBiblioteca WHERE bibliotecas.Nome LIKE "Biblioteca Central"

SELECT emprestimo.* FROM emprestimo JOIN usuario ON emprestimo.idUsuario = usuario.id WHERE usuario.nome LIKE 'João';

SELECT emprestimo.* FROM emprestimo INNER JOIN bibliotecas on emprestimo.idBiblioteca = bibliotecas.id INNER JOIN usuario ON emprestimo.idUsuario = usuario.id WHERE usuario.nome LIKE 'João' AND bibliotecas.Nome LIKE 'Biblioteca Central';

SELECT exemplar.* FROM exemplar
JOIN emprestimo ON emprestimo.idExemplar = exemplar.id
GROUP BY exemplar.id HAVING COUNT(emprestimo.idExemplar) >1;

SELECT bibliotecas.* FROM bibliotecas
JOIN emprestimo ON emprestimo.idBiblioteca = bibliotecas.id
GROUP BY emprestimo.idBiblioteca HAVING COUNT(emprestimo.idBiblioteca) >0;