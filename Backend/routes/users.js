const express = require('express');
const router = express.Router();
var User = require('../models/user');
var mongoose = require('mongoose');
const jwt = require('jsonwebtoken');
const connection = require('../connection');
const bcrypt = require('bcryptjs');
const passport = require('passport');
const useraccounts = require('../Schemas/useraccountSchema');
const validators = require('../scripts/validators');
const nodemailer = require('nodemailer');
module.exports = router;

// https://github.com/hermajul/mean-login-app

// router.post("/reguser",(req, res)=>{
//     console.log(req.body);//print body

//     var newUser = new useraccounts({
//         userid:req.body.userid,
//         username:req.body.username,
//         password:req.body.password,
//         role:req.body.role,
//         areaId:req.body.areaId
//     });
//     //function for save username password to db
// /*
//     useraccounts.find({username: 'req.body.username'},
//     (err,doc)=>{
//         doc=>{
//             if(doc.length){
//                 res.json({state:false,msg:"data not inserted"});
//                 console.log("error");
//             }else{
//                 User.saveuser(newUser,function(err,user){

//                     if(err){
//                         res.json({state:false,msg:"data not inserted"});
//                         console.log("error");
//                     }
//                     if(user){
//                         res.json({state:true,msg:"data inserted"});
//                         console.log("correct inserted");
//                     }
//                 })
//             }
//         },
//         err=>{
//             res.json({state:false,msg:"data not inserted"});
//         }
//     },/** */
//     // User.saveuser(newUser,function(err,user){
        
       
//     //     if(err){
//     //         res.json({state:false,msg:"data not inserted"});
//     //         console.log("error");
//     //     }
//     //     if(user){
//     //         res.json({state:true,msg:"data inserted"});
//     //         console.log("correct inserted");
//     //     }
//     // }
//     // );
//     User.create(req.body)
//       .then(function(){
//           res.sendStatus(200);
//       })
//       .catch(function(err){
//           res.status(400).send(err);
//       });

     
// });

  
    //send email username and password
    // let transporter = nodemailer.createTransport({
    //     service:'gmail',
    //     auth: {
    //         user: 'tempsend123@gmail.com', // source email
    //         pass: 'ucsc@123' // password 
    //     }
    // });
    // let mailOptions = {
    //     from: '"Kesbewa MOH" <tempsend123@gmail.com>', // sender address
    //     to : User.username,
    //     subject: 'You are registered', // Subject line
    //     text: req.body.username+req.body.password, // plain text body
    // }
    // transporter.sendMail(mailOptions,(error,info)=>{
    //     if(error){
    //         console.log(error);
    //     }else{
    //         console.log('Email sent: '+info.response);
    //     }
    // })
//   });

//new register
router.post("/register",function(req,res){
  
    const newUser = new useraccounts({
        userid:req.body.userid,
        username:req.body.username,
        password:req.body.password,
        role:req.body.role,
        areaId:req.body.areaId
    });

    User.adduser(newUser,function(err,user){
        if(err){
           res.json({state:false,msg:"data not insereted"});
        }
        if(user){
            res.json({state:true,msg:"data inserted"});
        }
    });

});
//login 
router.post("/login",(req,res)=>{

    const username = req.body.username;
    const password = req.body.password;

    if(username == undefined || password == undefined){
        res.json({success:false,msg:'wrong msg format'});
    }

    User.findByUsername(username,(err,user)=>{
        
        if(err){
            return res.send({
                success:false,
                message:'Error,Please try again'
            });
            
        }
        
        if(!user){
            return res.status(500).send({
                success:false,
                message:'Error,no user found'
            });
            // res.json({state:false,msg:"no user found"});
        }

       User.passwordCheck(password,user.password,(err,match)=>{
        
        if(!match) {

            console.log("Login error");
            return res.json({
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
                    token:token,
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

router.get('/generateUserId/:areaId', (req, res) => {
    areaId = req.params.areaId;
    console.log(areaId)
    if (areaId == '0') {
        useraccounts.find((err, doc) => {
            res.send(areaId+"..0000") 
        })
    } else {
        useraccounts.find({
            //userid: new RegExp(areaId, 'i')
            userid: new RegExp('^'+areaId,'i')
            //userid: /^2/ 
        }, (err, doc) => {
            if (doc.length) {
                //res.send(doc);
                console.log(doc);
                console.log(doc[0].userid);
                res.send(doc);
            } else {
                console.log('Cannot find the record');
                //res.send(doc);
                res.send(areaId.concat('..0000')) ;
            }
        }).sort({_id:-1}).limit(1);;
    }
});