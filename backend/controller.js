
const model=require('./model.js');
const bcrypt=require('bcryptjs')
const jwt=require('jsonwebtoken')
const nodemailer = require("nodemailer");
var Mailgen = require('mailgen');
const otpGenerator = require('otp-generator')

exports.addUser=async(req,res)=>{
  const{name,email,password}=req.body;
  try{
  const user=await model.findOne({email});
  const secretKey="abc";
  if(!user){
    const newUser=new model({name,email,password})
    const save=await newUser.save();
    const data={
    newUser:{
     id: newUser.id
    }
  }
    const auth=await jwt.sign(data, secretKey)
    res.status(201).json("signed in")
  }
  else{
    res.status(300).json('user exist')
  }
  }catch(err){res.status(500).json("internal server error")}
}
exports.loginUser = async (req, res) => {
  const { email, password } = req.body;
  try {
    const user = await model.findOne({email});
    if (!user) {
      return res.status(400).json('User not found');
    }
    const isPasswordValid = await bcrypt.compare(password, user.password);
    if (!isPasswordValid) {
      return res.status(400).json('Wrong credentials');
    }
    const secretKey="abc";
  const data={
    user:{
     id: user.id
    }
  }
    const auth=await jwt.sign(data, secretKey)
    res.status(200).json("logged in");
  } catch (err) {
    console.log(err.message);
    res.status(500).json('Internal server error');
  }
};


exports.getUser = async (req, res) => {
  userId=req.newUser.id;
  try {
    const user = await model.findById(userId).select("-password");
    res.status(200).json("succesfully found");
  } catch (err) {
    console.log(err.message);
    res.status(500).json('Internal server error');
  }
};
exports.email=async(req,res)=>{
  const {Email}=req.body;
  try{
    const findUser=await model.findOne({email:Email})
    const transporter =  nodemailer.createTransport({
          service:"gmail",
          secure: true,
          auth: {
            user: "pranajlrana1235@gmail.com",
            pass: "egbxtitchikaadba"
          }
        });
    var mailGenerator = new Mailgen({
    theme: 'default',
    product: {
        name: 'Coursera',
        link: 'https://coursera.com/'
    }
});
const otp=await otpGenerator.generate(6, { upperCaseAlphabets: false, specialChars: false,digits:true, });
    var email = {
    body: {
        name: findUser.name,
        intro: 'Welcome to coursera! We\'re very excited to have you on board.',
        action: {
            instructions: 'your otp is pleas',
            button: {
                color: '#22BC66',
                text: otp,
                link: 'https://coursera.com'
            }
        },
        outro: 'Need help, or have questions? Just reply to this email, we\'d love to help.'
    }
};
var emailBody = mailGenerator.generate(email);
var emailText = mailGenerator.generatePlaintext(email);
  const info = await transporter.sendMail({
    from: 'pranajlrana1235@gmail.com',
    to: Email, 
    subject: "Yo Bro", 
    // text: emailText, 
    html: emailBody, 
  });
    res.status(200).json("Message sent")
  }catch(err){res.status(500).json(err.message)}
}



