const mongoose = require('mongoose');
const bcrypt = require('bcryptjs');
const schema = mongoose.Schema;
const useraccount =  require('../Schemas/useraccountSchema');

const crypto = require('crypto');
const nodemailer = require('nodemailer');
const passwordResetToken = require('../Schemas/resetpwd');

// const userSchema = new schema({
//     userid:{type:String,required:true},
//     username:{type:String,required:true},
//     password:{type:String,required:true}
// });

// const useraccounts = module.exports = mongoose.model("useraccounts",userSchema);

module.exports.saveuser = function(newUser,callback){
    bcrypt.genSalt(10, function(err,salt){
        bcrypt.hash(newUser.password,salt,function(err,hash){
            console.log(hash);
            newUser.password = hash;
            

            if(err) throw err;
            newUser.save(callback);
        });

    });
};

module.exports.saveresetuser = function(nextUser,callback){
    bcrypt.genSalt(10, function(err,salt){
        bcrypt.hash(nextUser.password,salt,function(err,hash){
            console.log(hash);
            nextUser.password = hash;
            

            if(err) throw err;
            nextUser.save(callback);
        });

    });
};

module.exports.findUserbyId = function(id,callback){
  
    User.findOne(id,callback);


};

module.exports.findByUsername = function(username,callback){
  
    const query = {username:username};
    useraccount.findOne(query,callback);
};

module.exports.passwordCheck = function(textpassword,hashpassword,callback){
    console.log("check");
    
    bcrypt.compare(textpassword,hashpassword,function(err,match){
        
        console.log(match);    
        if(match==false){
             console.log("login error");
        } 
        if(err) {
         throw err;  
        }
        if(match){
        callback(null,match);
         
        
        }
    });
};

//Creating ResetPassword controller function
// module.exports.ResetPassword = function(req,res){
//     if(!req.body.username){
//         return res.status(500).json({message: 'Email is reuired'});
//     }
//     const user = User.findOne({
//         username : req.body.username
//     });
//     if(!user){
//         return res.status(500).json({message: 'Email does not exist'});
//     }

//     var resettoken = new passwordResetToken({_userId : user._id, resettoken: crypto.randomBytes(16).toString('hex')});
//     resettoken.save(function(err){
//         if(err) {return res.status(500).send({msg:err.message});
//     }
//       passwordResetToken.find({_userId: user._id, resettoken : {
//           $ne: resettoken.resettoken 
//       }}) .remove().exec();
//       res.status(200).json({message:'Reset password successfully.'});

//       var transport = nodemailer.createTransport({
//           service: 'Gmail',
//           port:465,
//           auth :{
//               user: 'user',
//               pass: 'password'
//           }
//       });
//       var mailoptions = {
//           to: user.username,
//           from : '"Kesbewa MOH" <tempsend123@gmail.com>',
//           subject : 'Password reset',
//           text : 'You are receiving this because you (or someone else) have requested the reset of the password for your account.\n\n' +
//           'Please click on the following link, or paste this into your browser to complete the process:\n\n' +
//           'http://localhost:4200/response-reset-password/' + resettoken.resettoken + '\n\n' +
//           'If you did not request this, please ignore this email and your password will remain unchanged.\n'
//       }
//       transport.sendMail(mailoptions, (err,info)=>{
//         if(error){
//             console.log(error);
//         }else{
//             console.log('Email sent: '+info.response);
//         }
//       })
//     })
// };

// //Validating Token and setting a new password
// module.exports.ValidPasswordToken = function(req,res){
//     if (!req.body.resettoken) {
//         return res
//         .status(500)
//         .json({ message: 'Token is required' });
//         }
//         const user = passwordResetToken.findOne({
//         resettoken: req.body.resettoken
//         });
//         if(!user) {
//             return res.status(409).json({message: 'Invalid URL'});
//         }
//         User.findOneAndUpdate({_id: user._userId}).then(()=>{
//             res.status(200).json({message: 'Token verified successfully.'});
//         }).catch((err)=>{
//             return res.status(500).send({message: err.message});
//         });
        
//     };


//  module.exports.NewPassword = function(req,res){
//      passwordResetToken.findOne({resettoken: req.body.resettoken},function(err,userToken,next){
//          if(!userToken){
//              return res.status(409).json({message: 'Token has expired'});

//          }
//          User.findOne({
//              _id:userToken._userId
         
//          },function(err,userEmail,next){
//              if(!userEmail){
//                  return res.status(409).json({ message: 'User does not exist' });
//              }
//              return bcrypt.hash(req.body.NewPassword, 10,(err,hash)=>{
//                  if(err){
//                      return res.status(400).json({ message: 'Error hashing password' });
//                  }
//                  userEmail.password = hash;
//                  userEmail.save(function (err) {
//                      if(err){
//                          return res.status(400).json({ message: 'Password can not reset.' });
//                      }else{
//                          userToken.remove();
//                          return res.status(201).json({ message: 'Password reset successfully' });
//                      }
//                  });
//              });
//          });
//      });
//  }