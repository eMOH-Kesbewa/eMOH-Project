const validator = require('validator');
const passwordValidator = require('password-validator');
const User = require('../models/user');

module.exports.idValidation = function idValidation(obj){
    try{
      const id = obj.id;
      if(validator.isLength(id,{max:3}) && !validator.isEmpty(id)){
          return { valid:false, msg:'id is not short'};
      } 
      if(validator.isEmpty(id)){
          return {valid:false, msg:'id is required'};
      }
      return {valid:true, msg:'id accepted'};
    }catch(error){
        return {valid:false , msg:'wrong message format'};
    }
};

module.exports.usernameValidation = function usernameValidation(obj){
    try{
        const username = obj.username;
        return new Promise(((resolve)=>{
        User.findByUsername(username,(err,user)=>{
            if(user){
                resolve({valid:false, msg:'email is already token'});
            }else if(!validator.isEmail(username)){
                resolve({valid:false, msg:'email not valid'});
            } else {
                resolve({valid:true, msg:'email accepted'});
            }
        });
    }));
    }
    catch(error){
        return{valid:false , msg:'wrong message format'};
    }
};
