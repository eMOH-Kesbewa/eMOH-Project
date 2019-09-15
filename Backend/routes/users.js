const express = require('express');
const router = express.Router();
const User = require('../models/user');
module.exports = router;


router.post("/reguser",function(req, res){
    console.log(req.body);//print body

    const newUser = new User({
        userid:req.body.userid,
        username:req.body.username,
        password:req.body.password

    });
    //function for save username password to db
    User.saveuser(newUser,function(err,user){
        
       
        if(err){
            res.json({state:false,msg:"data not inserted"});
            console.log("error");
        }
        if(user){
            res.json({state:true,msg:"data inserted"});
            console.log("correct inserted");
        }
    });


});

//login 
router.post("/login",function(req,res){

    const username = req.body.username;
    const password = req.body.password;

    User.findByUsername(username,function(err,user){
        if(err) throw err;
        
        if(!user){
            res.json({state:false,msg:"no user found"});
        }

       User.passwordCheck(password,user.password,function(err,match){
        
        if(err) {
            throw err;
        
        }
        
        if(match){
            console.log("email,password matched login successed");
             
        }

         
       });

    });

});

