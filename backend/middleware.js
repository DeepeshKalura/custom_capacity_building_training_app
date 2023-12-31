const dotenv=require("dotenv").config();
const jwt=require('jsonwebtoken')
const secretKey=process.env.SECRET_KEY;
const fetchUser=async(req,res,next)=>{
  try {
    const token=req.header('authToken')
    if(!token){
      res.status(401).json("cannot find")
    }else{
      const auth=jwt.verify(token,secretKey)
      req.newUser=auth.newUser;
      next();
    }
  } catch (error) {
    console.log(error.message)
  }
}
module.exports=fetchUser;