const pool = require("../config/database");

// Buscar todos os livros ou filtrar por título
const getBooks = async (title) => {
    if (!title) {
        const result = await pool.query(
            `SELECT books.*, authors.name AS author_name 
             FROM books
             LEFT JOIN authors ON books.author_id = authors.id`
        );
        return result.rows;
    } else {
        const result = await pool.query(
            `SELECT books.*, authors.name AS author_name 
             FROM books
             LEFT JOIN authors ON books.author_id = authors.id
             WHERE books.title ILIKE $1`, [`%${title}%`]
        );
        return result.rows;
    }
};

// Buscar livro por ID
const getBookById = async (id) => {
    const result = await pool.query(
        `SELECT books.*, authors.name AS author_name
         FROM books
         LEFT JOIN authors ON books.author_id = authors.id
         WHERE books.id = $1`, [id]
    );
    return result.rows[0];
};

// Criar um novo livro
const createBook = async (title, summary, author_id, publication_date, pages, cover_url, language, genre) => {
    const result = await pool.query(
        `INSERT INTO books 
            (title, summary, author_id, publication_date, pages, cover_url, language, genre)
         VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
         RETURNING *`,
        [title, summary, author_id, publication_date, pages, cover_url, language, genre]
    );
    return result.rows[0];
};

// Atualizar um livro existente
const updateBook = async (id, title, summary, author_id, publication_date, pages, cover_url, language, genre) => {
    const result = await pool.query(
        `UPDATE books SET 
            title = $1, 
            summary = $2, 
            author_id = $3, 
            publication_date = $4, 
            pages = $5, 
            cover_url = $6, 
            language = $7, 
            genre = $8
         WHERE id = $9
         RETURNING *`,
        [title, summary, author_id, publication_date, pages, cover_url, language, genre, id]
    );
    return result.rows[0];
};

// Deletar um livro
const deleteBook = async (id) => {
    const result = await pool.query("DELETE FROM books WHERE id = $1 RETURNING *", [id]);
    if (result.rowCount === 0) {
        return { error: "Livro não encontrado." };
    }
    return { message: "Livro deletado com sucesso." };
};

module.exports = { getBooks, getBookById, createBook, updateBook, deleteBook };