const express = require('express');
const app = express();
const mongoose = require('mongoose');
app.use(express.json());
main().catch(err => console.log(err));

async function main() {
  try {
    await mongoose.connect(`mongodb+srv://pranjalrana:pranjalrana@cluster1.vxthoqp.mongodb.net/?retryWrites=true&w=majority`);
    console.log("connected")
  } catch (err) { console.log(err.message) }
}
app.use(require('./routes.js'));
const port = 80;
app.listen(port, () => {
  console.log(`app listening on ${port}`)
})