import express from "express";

import connectToDatabase from "./helpers.mjs";

const app = express();

app.get("/", (req, res) => {
  res.send("<h2>Hi there!</h2>");
});

await connectToDatabase();

// accessing an environment variable inside the application
app.listen(process.env.PORT);
