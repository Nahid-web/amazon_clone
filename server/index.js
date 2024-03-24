// IMPORTS from packages
const express = require("express");

const mongoose = require("mongoose");

//IMPORTS from file
const authRouter = require("./routes/auth.js");

//init
const PORT = 3000;
const app = express();
const DB =
  "mongodb+srv://nahid:nahid123@cluster0.saf5j7b.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

//middleware
app.use(express.json());
app.use(authRouter);

//connection
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});
