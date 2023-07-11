const express=require('express');
const router=express.Router();
const controller=require('./controller.js')
const middleware=require('./middleware.js')
router.post("/signup",controller.addUser);
router.post("/login",controller.loginUser);
router.post("/getUser",middleware,controller.getUser);
router.get("/email",controller.email);
module.exports=router;