create DATABASE biblioteca_pessoal_1s2026;
USE biblioteca_pessoal_1s2026;
CREATE TABLE usuario(
id_usuario INT AUTO_INCREMENT PRIMARY KEY,
NOME varchar (255) not null,
email varchar (128) not null unique,
data_cadastro date default (current_date) not null,
);

SHOW TABLES;






