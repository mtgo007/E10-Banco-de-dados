-- Bibliotecas
INSERT INTO bibliotecas (Nome, Endereco) 
VALUES ("Biblioteca Pública Estadual Luiz de Bessa", "Praça da Liberdade, 21 - Funcionários, Belo Horizonte");

INSERT INTO bibliotecas (Nome, Endereco) 
VALUES ("Biblioteca Pública Infantil e Juvenil de Belo Horizonte", "Rua Guaicurus, 50 - Centro, Belo Horizonte");

INSERT INTO bibliotecas (Nome, Endereco) 
VALUES ("Biblioteca Comunitária Graça Rios", "R. Gláuber Rocha, 334 - Vila Paquetá, Belo Horizonte");

INSERT INTO bibliotecas (Nome, Endereco) 
VALUES ("Biblioteca Regional Bairro Renascença", "R. Dom Cabral, 765 - Ipiranga, Belo Horizonte");

-- usuarios
INSERT INTO usuario (nome, curso, email) VALUES ("Mathias Oliveira", "Informática", "mtgo007@gmail.com");

INSERT INTO usuario (nome, curso, email) VALUES ("Renae J. Mathews", "Informática", "Renae@gmail.com");

INSERT INTO usuario (nome, curso, email) VALUES ("Tia A. Sturgill", "Informática", "Tia@gmail.com");

INSERT INTO usuario (nome, curso, email) VALUES ("Bridget J. Ruiz", "Informática", "Bridget@gmail.com");

INSERT INTO usuario (nome, curso, email) VALUES ("Aaron G. Lewis", "Informática", "Aaron@gmail.com");

INSERT INTO usuario (nome, curso, email) VALUES ("Gregory N. Brown", "Informática", "Gregory@gmail.com");

INSERT INTO usuario (nome, curso, email) VALUES ("Carol D. Spencer", "Informática", "Carol@gmail.com");

INSERT INTO usuario (nome, curso, email) VALUES ("Aaron M. Hastings", "Informática", "AaronM@gmail.com");

INSERT INTO usuario (nome, curso, email) VALUES ("Blanche M. Drinnon", "Informática", "Blanche@gmail.com");

INSERT INTO usuario (nome, curso, email) VALUES ("Tommy C. Gonzalez", "Informática", "Tommy@gmail.com");  

-- Livros
INSERT INTO livro (nome, editora, tema, autor, isbn) 
VALUES ("Lightning", "Cosac & Naify", "História da Arte", "Ferreira Gullar",  8575031600);

INSERT INTO livro (nome, editora, tema, autor, isbn) 
VALUES ("Roma - Coleção Isto É", "Cosac & Naify", "Pessoas e Lugares Infantil e Infantojuvenil", "Miroslav Sasek", 8575039547);

INSERT INTO livro (nome, editora, tema, autor, isbn) 
VALUES ("Lasar Segall. Arte Em Sociedade", "Cosac & Naify", "Arte", "Fernando Antonio Pinheiro", 8575037013); 

-- Exemplares
INSERT INTO exemplar (edicao, anoPublicacao, nPaginas, idLivro, idBiblioteca)
VALUES (1,2007,170,1,1); 

INSERT INTO exemplar (edicao, anoPublicacao, nPaginas, idLivro, idBiblioteca)
VALUES (2,2010,175,1,2); 

INSERT INTO exemplar (edicao, anoPublicacao, nPaginas, idLivro, idBiblioteca)
VALUES (3,2015,163,1,3); 

INSERT INTO exemplar (edicao, anoPublicacao, nPaginas, idLivro, idBiblioteca)
VALUES (4,2018,190,1,4); 

INSERT INTO exemplar (edicao, anoPublicacao, nPaginas, idLivro, idBiblioteca)
VALUES (1,2013,185,2,1); 

INSERT INTO exemplar (edicao, anoPublicacao, nPaginas, idLivro, idBiblioteca)
VALUES (2,2016,180,2,2); 

INSERT INTO exemplar (edicao, anoPublicacao, nPaginas, idLivro, idBiblioteca)
VALUES (3,2018,181,2,3);

INSERT INTO exemplar (edicao, anoPublicacao, nPaginas, idLivro, idBiblioteca)
VALUES (1,2000,134,3,4);

INSERT INTO exemplar (edicao, anoPublicacao, nPaginas, idLivro, idBiblioteca)
VALUES (2,2005,137,3,1);

INSERT INTO exemplar (edicao, anoPublicacao, nPaginas, idLivro, idBiblioteca)
VALUES (3,2010,140,3,2);

-- Emprestimos
INSERT INTO emprestimo(DataEmprestimo, DataDevolucao, idUsuario, idBiblioteca, idExemplar) VALUES (NOW(), NOW(), 1, 1, 1);

INSERT INTO emprestimo(DataEmprestimo, DataDevolucao, idUsuario, idBiblioteca, idExemplar) VALUES (NOW(), NOW(), 2, 2, 2);

INSERT INTO emprestimo(DataEmprestimo, DataDevolucao, idUsuario, idBiblioteca, idExemplar) VALUES (NOW(), NOW(), 2, 3, 2);

INSERT INTO emprestimo(DataEmprestimo, DataDevolucao, idUsuario, idBiblioteca, idExemplar) VALUES (NOW(), NOW(), 3, 4, 3);

INSERT INTO emprestimo(DataEmprestimo, DataDevolucao, idUsuario, idBiblioteca, idExemplar) VALUES (NOW(), NOW(), 1, 1, 4);

INSERT INTO emprestimo(DataEmprestimo, DataDevolucao, idUsuario, idBiblioteca, idExemplar) VALUES (NOW(), NOW(), 4, 2, 7);

INSERT INTO emprestimo(DataEmprestimo, DataDevolucao, idUsuario, idBiblioteca, idExemplar) VALUES (NOW(), NOW(), 5, 3, 8);

INSERT INTO emprestimo(DataEmprestimo, DataDevolucao, idUsuario, idBiblioteca, idExemplar) VALUES (NOW(), NOW(), 6, 4, 10);
