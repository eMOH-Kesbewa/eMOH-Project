const express = require('express');
const router = express.Router();
var User = require('../models/user');
var mongoose = require('mongoose');
const jwt = require('jsonwebtoken');
const connection = require('../connection');
const bcrypt = require('bcryptjs');
const passport = require('passport');
const useraccounts = require('../Schemas/useraccountSchema');
module.exports = router;



router.post("/reguser",function(req, res){
    console.log(req.body);//print body

    var newUser = new useraccounts({
        userid:req.body.userid,
        username:req.body.username,
        password:req.body.password,
        role:req.body.role
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
        
        if(err){
            return res.send({
                success:false,
                message:'Error,Please try again'
            });
            
        }
        
        if(!user){
            return res.send({
                success:false,
                message:'Error,no user found'
            });
            res.json({state:false,msg:"no user found"});
        }

       User.passwordCheck(password,user.password,function(err,match){
        
        if(!match) {

            console.log("Login error");
            return res.send({
                success:false,
                message:"error,invalid password"
            });
        
        }
        
        if(match){
            if(passport.authenticate){
            console.log("email,password matched login successed");
            // const token = jwt.sign(user.toJSON(),secret,{expiresIn:604800 });
             const token = jwt.sign(user.toJSON(), 'your_jwt_secret',{expiresIn:604800 });
            res.json(
                {
                    success:true,
                    token:"JWT " + token,
                    //user:{
                        id:user._id,
                        userid:user.userid,
                        username:user.username,
                        password:user.password,
                        role:user.role
                    //}
                } 
            )
            }
             
        }

         
       });

    });

});

//profile authentication
router.get('/profile', passport.authenticate('jwt', { session: false }),function(req, res) {
        res.json({user:req.user});
        console.log("good");
    }
);


//reset password
router.get('/resetpassword', async (req, res) => {
     
        
     
    try {
        const filter = req.query;
        const update = req.body;

        mongoose.set('useFindAndModify', false);
        await useraccounts.countDocuments(filter); // 0

        let doc = await useraccounts.findOneAndUpdate(filter, update, {
            new: true,
            upsert: false 

         });
         console.log(doc);
        
         var nextUser = new useraccounts({
            
            username:req.body.username,
            password:req.body.password
    
        });
        User.saveresetuser(nextUser,function(err,user){
        
            
            if(err){
                res.json({state:false,msg:"data not inserted"});
                console.log("error");
            }
            if(user){
                
                res.json({state:true,msg:"data inserted"});
                console.log("correct inserted");
            }
        });
        
        
    } catch (error) {
        res.status(500).send(error);
        console.log(error);
    }

});


//
// router.post('/req-reset-password', User.ResetPassword);
// router.post('/new-password', User.NewPassword);
// router.post('/valid-password-token', User.ValidPasswordToken);
