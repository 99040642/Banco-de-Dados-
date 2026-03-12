create table livro (
id_livro int auto_increment primary key,
TITULO varchar (255),
SINOPSE text NOT NULL,
AUTOR varchar (128),
EDITORA varchar (128),
CATEGORIA varchar (128),
ano_publicacao YEAR NOT NULL
);