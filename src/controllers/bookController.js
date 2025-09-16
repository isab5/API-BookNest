const bookModel = require("../models/bookModel");

// Buscar todos os livros ou filtrar por título
const getAllBooks = async (req, res) => {
    try {
        const { title } = req.query;
        const books = await bookModel.getBooks(title);
        res.json(books);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar livros." });
    }
};

// Buscar livro por ID
const getBook = async (req, res) => {
    try {
        const book = await bookModel.getBookById(req.params.id);
        if (!book) {
            return res.status(404).json({ message: "Livro não encontrado." });
        }
        res.json(book);
    } catch (error) {
        res.status(500).json({ message: "Erro ao buscar livro." });
    }
};

// Criar novo livro
const createBook = async (req, res) => {
    try {
        const {
            title,
            summary,
            author_id,
            publication_date,
            price,
            pages,
            cover_url,
            language,
            genre
        } = req.body;
        const newBook = await bookModel.createBook(
            title,
            summary,
            author_id,
            publication_date,
            price,
            pages,
            cover_url,
            language,
            genre
        );
        res.status(201).json(newBook);
    } catch (error) {
        res.status(500).json({ message: "Erro ao criar livro." });
    }
};

// Atualizar livro existente
const updateBook = async (req, res) => {
    try {
        const {
            title,
            summary,
            author_id,
            publication_date,
            price,
            pages,
            cover_url,
            language,
            genre
        } = req.body;
        const updatedBook = await bookModel.updateBook(
            req.params.id,
            title,
            summary,
            author_id,
            publication_date,
            price,
            pages,
            cover_url,
            language,
            genre
        );
        if (!updatedBook) {
            return res.status(404).json({ message: "Livro não encontrado." });
        }
        res.json(updatedBook);
    } catch (error) {
        res.status(500).json({ message: "Erro ao atualizar livro." });
    }
};

// Deletar livro
const deleteBook = async (req, res) => {
    try {
        const message = await bookModel.deleteBook(req.params.id);
        res.json(message);
    } catch (error) {
        res.status(500).json({ message: "Erro ao deletar livro." });
    }
};

module.exports = { getAllBooks, getBook, createBook, updateBook, deleteBook };