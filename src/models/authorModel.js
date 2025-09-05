const pool = require("../config/database");

const getAuthors = async () => {
    const result = await pool.query("SELECT * FROM authors");
    return result.rows;
};

const getAuthorById = async (id) => {
    const result = await pool.query("SELECT * FROM authors WHERE id = $1", [id]);
    return result.rows[0];
};

const createAuthor = async (name, bio, birth_date, country, language, literary_genres, photo_url) => {
    const result = await pool.query(
        "INSERT INTO authors (name, bio, birth_date, country, language, literary_genres, photo_url) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING *",
        [name, bio, birth_date, country, language, literary_genres, photo_url]
    );
    return result.rows[0];
};

const updateAuthor = async (id, name, bio, birth_date, country, language, literary_genres, photo_url) => {
    const result = await pool.query(
        "UPDATE authors SET name = $1, bio = $2, birth_date = $3, country = $4, language = $5, literary_genres = $6, photo_url = $7 WHERE id = $8 RETURNING *",
        [name, bio, birth_date, country, language, literary_genres, photo_url, id]
    );
    return result.rows[0];
};

const deleteAuthor = async (id) => {
    const result = await pool.query("DELETE FROM authors WHERE id = $1 RETURNING *", [id]);

    if (result.rowCount === 0) {
        return { error: "Autor não encontrado." };
    }

    return { message: "Autor deletado com sucesso." };
};

module.exports = { getAuthors, getAuthorById, createAuthor, updateAuthor, deleteAuthor };