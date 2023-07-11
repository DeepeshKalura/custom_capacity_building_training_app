const express=require('express');
const mongoose = require('mongoose');
const app = express();
main().catch(err => console.log(err));

async function main() {
    try{
  await mongoose.connect(`mongodb+srv://pranjalrana:pranjalrana@cluster1.vxthoqp.mongodb.net/?retryWrites=true&w=majority/inotebook `);
  console.log("connected")
    }catch(err){console.log(err.message)}
}
const routes=require('./routes/routes');
app.use(express.json());
app.use(routes);
app.listen(8000,()=>{
    console.log("started")
})


