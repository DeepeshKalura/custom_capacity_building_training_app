const dotenv=require("dotenv").config();
const express = require('express');
const app = express();
const mongoose = require('mongoose');
app.use(express.json());
main().catch(err => console.log(err));

async function main() {
  try {
    await mongoose.connect(`mongodb+srv://${process.env.DB_USERNAME}:${process.env.DB_PASSWORD}@cluster1.vxthoqp.mongodb.net/?retryWrites=true&w=majority`);
    console.log("connected")
  } catch (error) { console.log(error.message) }
}
app.use(require('./routes.js'));
const port = 8000;
app.listen(port, () => {
  console.log(`app listening on ${port}`)
})