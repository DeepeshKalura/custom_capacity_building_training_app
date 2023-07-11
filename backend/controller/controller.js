const mongoose=require('mongoose');
const Signup=require("../models/model.js");
exports.addUser=async(req,res)=>{
    try{
        const{name,email,password}=req.body;
        let userexist=await Signup.findOne({email})
        if(!userexist){
                let User=new Signup({name,email,password});
                await User.save();
                res.status(200).json({message:"user added"})
        }else{
                res.status(200).json({message:"user already exist"})
        }
}catch(err){console.log(err.message)}
}
