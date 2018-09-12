CREATE TABLE usuario(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome VARCHAR(55) NOT NULL, 
  curso VARCHAR(55) NOT NULL,
  email VARCHAR(55) NOT NULL
);

CREATE TABLE livro(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome VARCHAR(55) NOT NULL,
  editora VARCHAR(55) NOT NULL,
  tema VARCHAR(55) NOT NULL,
  autor VARCHAR(55) NOT NULL,
  isbn INT NOT NULL
);

CREATE TABLE bibliotecas(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
  Nome VARCHAR(55) NOT NULL,
  Endereco VARCHAR(100)
);


CREATE TABLE exemplar(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    edicao SMALLINT NOT NULL,
    anoPublicacao SMALLINT NOT NULL,
    nPaginas SMALLINT NOT NULL,
    idLivro INT NOT NULL,
    idBiblioteca INT NOT NULL,
    CONSTRAINT fk_exemplar_livro FOREIGN KEY (idLivro) REFERENCES livro(id),
    CONSTRAINT fk_exemplar_biblioteca FOREIGN KEY (idBiblioteca) REFERENCES bibliotecas(id)
);



CREATE TABLE emprestimo(
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  DataEmprestimo Date NOT NULL,
  DataDevolucao  Date NOT NULL,
  idUsuario INT NOT NULL,
  idBiblioteca INT NOT NULL,
  idExemplar INT NOT NULL,
  CONSTRAINT fk_emprestimo_usuario FOREIGN KEY (idUsuario) REFERENCES usuario(id),
  CONSTRAINT fk_emprestimo_biblioteca FOREIGN KEY (idLivro) REFERENCES bibliotecas(id),
  CONSTRAINT fk_emprestimo_exemplar FOREIGN KEY (idExemplar) REFERENCES exemplar(id)
);
