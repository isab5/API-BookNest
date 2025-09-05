const express = require("express");
const router = express.Router();

const authorController = require("../controllers/authorController");

router.get("/authors", authorController.getAllAuthors);
router.get("/authors/:id", authorController.getAuthor);
router.post("/authors", authorController.createAuthor);
router.put("/authors/:id", authorController.updateAuthor);
router.delete("/authors/:id", authorController.deleteAuthor);

module.exports = router;