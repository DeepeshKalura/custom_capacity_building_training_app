const express=require('express');
const routes=express.Router();
const controller=require('../controller/controller.js')
routes.post('/signup',controller.addUser)
module.exports=routes;
routes.get('/',(req,res)=>{
    res.json("hello")
})