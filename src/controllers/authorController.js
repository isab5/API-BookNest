const authorModel = require("../models/authorModel");

const getAllAuthors = async (req, res) => {
    try {
        const authors = await authorModel.getAuthors();
        res.json(authors);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar autores." });
    }
};

const getAuthor = async (req, res) => {
    try {
        const author = await authorModel.getAuthorById(req.params.id);
        if (!author) {
            return res.status(404).json({ message: "Autor não encontrado." });
        }
        res.json(author);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar Autor." });
    }
};

const createAuthor = async (req, res) => {
    try {
        const { name, bio, birth_date, country, language, literary_genres, photo_url } = req.body;
        const newAuthor = await authorModel.createAuthor(name, bio, birth_date, country, language, literary_genres, photo_url);
        res.status(201).json(newAuthor);
    } catch (error) {
        res.status(500).json({ message: "Erro ao criar Autor." });
    }
};

const updateAuthor = async (req, res) => {
    try {
        const { name, bio, birth_date, country, language, literary_genres, photo_url } = req.body;
        const updatedAuthor = await authorModel.updateAuthor(req.params.id, name, bio, birth_date, country, language, literary_genres, photo_url);
        if (!updatedAuthor) {
            return res.status(404).json({ message: "Autor não encontrado." });
        }
        res.json(updatedAuthor);
    } catch (error) {
        res.status(500).json({ message: "Erro ao atualizar Autor." });
    }
};

const deleteAuthor = async (req, res) => {
    try {
        const message = await authorModel.deleteAuthor(req.params.id);
        res.json(message);
    } catch (error) {
        res.status(500).json({ message: "Erro ao deletar autor." });
    }
};

module.exports = { getAllAuthors, getAuthor, createAuthor, updateAuthor, deleteAuthor };