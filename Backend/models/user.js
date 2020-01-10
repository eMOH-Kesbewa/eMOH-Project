const mongoose = require('mongoose');
const bcrypt = require('bcryptjs');
const schema = mongoose.Schema;
const useraccount =  require('../Schemas/useraccountSchema');

// const passwordResetToken = require('../Schemas/resetpwd');

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

//
// module.exports.ResetPassword = function(req,res){
//     if(!req.body.username){
//         return res
//         .status(500)
//         .json({message: 'Email is reuired'});
//     }
//     const user = User.findOne({
//         username : req.body.username
//     });
//     if(!user){
//         return res.status(500).json({messgae: 'Email does not exist'});
//     }

// }