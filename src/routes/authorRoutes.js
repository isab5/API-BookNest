const express = require("express");
const router = express.Router();

const authorController = require("../controllers/authorController");

router.get("/author", authorController.getAllAuthors);
router.get("/author/:id", authorController.getAuthor);
router.post("/author", authorController.createAuthor);
router.put("/author/:id", authorController.updateAuthor);
router.delete("/author/:id", authorController.deleteAuthor);

module.exports = router;