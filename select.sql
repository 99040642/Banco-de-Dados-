
/* 
carrega todos os livros (titulo)
e busca o nome do autor */ 

SELECT
 t1.titulo,
 t2.nome as nome_autor,
 t3.nome as nome_categoria,
 t4.nome as nome_usuario,
 t5.nome as nome_editora
 FROM
 livro t1 
 JOIN
 autor t2 ON (t1 .id_autor = t2.id_autor)
 JOIN
 categoria t3 ON (t1.id_categoria = t3.id_categoria)
 JOIN 
 usuario t4 ON (t1.id_usuario = t4.id_usuario)
 JOIN 
 editora t5 ON (t1.id_editora = t5.id_editora);
