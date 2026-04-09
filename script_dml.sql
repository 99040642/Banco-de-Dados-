SELECT * FROM autor;

SELECT * FROM livro WHERE id_autor = 8;

SELECT *FROM categoria;
SELECT * FROM livro WHERE id_categoria = 4;

-- Livros da autora J.K. Rowling
SELECT l.titulo
FROM livro l
JOIN autor a ON l.id_autor = a.id_autor
WHERE a.nome = 'J.K. Rowling';

-- Livros da categoria Filosofia
SELECT l.titulo
FROM livro l
JOIN categoria c ON l.id_categoria = c.id_categoria
WHERE c.nome = 'Filosofia';

-- UPDATE

UPDATE categoria
SET nome = 'Censurado'
WHERE nome = 'Filosofia';

-- DELETE

DELETE FROM livro
WHERE id_categoria IN (
    SELECT id_categoria 
    FROM categoria 
    WHERE nome = 'Censurado'
);