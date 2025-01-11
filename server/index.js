//imports from package
const express = require("express");
const mongoose = require("mongoose");
require("dotenv").config();

//imports from files
const authRoute = require("./routes/auth");
const adminRouter = require("./routes/admin");
const productRouter = require("./routes/product");
const userRouter = require("./routes/user");

//INIT
const PORT = process.env.PORT || 8000;
const app = express();
const DB = process.env.DB_URL;

//middleware
app.use(express.json());
app.use(authRoute);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

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
