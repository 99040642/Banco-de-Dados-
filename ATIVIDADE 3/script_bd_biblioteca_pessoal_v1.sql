CREATE DATABASE biblioteca_pessoal_1s2026;
USE biblioteca_pessoal_1s2026;


/** CRIAR TABELAS, RELAÇÕES E RESTRIÇÕES */ 

CREATE TABLE usuario(
id_usuario INT PRIMARY KEY AUTO_INCREMENT, 

	nome varchar(255) NOT NULL,
	email varchar(255) NOT NULL UNIQUE,
	senha varchar(255) NOT NULL,
	data_cadastro timestamp default current_timestamp,
	data_atualizacao timestamp default current_timestamp on update current_timestamp
    );
    
    CREATE TABLE categoria(
    id_categoria INT PRIMARY KEY auto_increment,
	nome varchar(128) NOT NULL unique,
	descricao text,
	data_cadastro timestamp default current_timestamp,
	data_atualizacao timestamp default current_timestamp on update current_timestamp
);

	CREATE TABLE autor(
	id_autor INT PRIMARY KEY auto_increment,
	nome varchar(255) NOT NULL unique,
	ano_nascimento year,
	ano_morte year,
	apresentacao text,
	data_cadastro timestamp default current_timestamp,
	data_atualizacao timestamp default current_timestamp on update current_timestamp

);

	CREATE TABLE editora(
	id_editora INT PRIMARY KEY auto_increment,
	nome varchar(255) NOT NULL unique,
	cidade varchar(255),
	estado varchar(255),
	pais varchar(255),
	data_cadastro timestamp default current_timestamp,
	data_atualizacao timestamp default current_timestamp on update current_timestamp

    
    );

	CREATE TABLE livro (
    id_livro INT PRIMARY KEY auto_increment,
	id_usuario int,
	id_autor int,
	id_editora int,
	id_categoria int,
	titulo varchar(255) not null,
	sinopse text,
    autor varchar(128),
	editora varchar(128),
    categoria varchar(128),
	ano_publicacao year,
	lido boolean default(0),
	data_cadastro timestamp default current_timestamp,
	data_atualizacao timestamp default current_timestamp on update current_timestamp,
    
    CONSTRAINT fk_usuario_livro FOREIGN KEY (id_usuario) 
    REFERENCES usuario (id_usuario)
    ON DELETE CASCADE,
    
    CONSTRAINT fk_autor FOREIGN KEY (id_autor) 
    REFERENCES autor (id_autor)
    ON DELETE restrict,
    
    CONSTRAINT fk_editora FOREIGN KEY (id_editora) 
    REFERENCES editora (id_editora)
    ON DELETE restrict,

    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) 
    REFERENCES categoria (id_categoria)
    ON DELETE restrict
    
     );
    
    SHOW TABLES;
    
    
    
