const express = require("express");
const app = express();
app.get("/", (_req, res) => res.send("Hello from CI/CD 🚀"));
const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Listening on ${port}`));
