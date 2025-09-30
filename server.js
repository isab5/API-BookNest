require("dotenv").config();
const express = require("express");
const cors = require("cors");
const authorRoutes = require("./src/routes/authorRoutes");
const bookRoutes = require("./src/routes/bookRoutes");

const app = express();
app.use(cors());
app.use(express.json());

app.use("/api", authorRoutes);
app.use("/api", bookRoutes);

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
    console.log(`📚 Servidor rodando em http://localhost:${PORT}`);
});
