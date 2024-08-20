//imports from package
const express = require("express");
const mongoose = require("mongoose");

//imports from files
const authRoute = require("./routes/auth");
//INIT
const PORT = process.env.PORT || 3000;
const app = express();
const DB =
  "mongodb+srv://nahid:amazon12345@cluster0.nzzj2ew.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

//middleware
app.use(express.json());
app.use(authRoute);

//creating a api

//connections
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection Successful");
  })
  .catch((e) => {
    console.log(e);
  });
app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});
