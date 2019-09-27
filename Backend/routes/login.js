// var express = require('express');
// var router = express.Router();
// var mongoose = require('mongoose');
// const bcrypt = require('bcrypt');

// var Schema = mongoose.Schema;

// const useraccount = new Schema({
//     "username":{type:String},
//     "password":{type:String}
// },
// //  {collection:useraccounts},
//   { typeKey: '$type' }
//  );

// var useraccounts = mongoose.model('useraccount', useraccount);


// //Check username with the password with errors

// router.post('/', function(req, res) {

//     const username = req.body.username;
//     const password = req.body.password;
   
//      findByEmail({ username}, (err, docs) => {
//         if (!err) {
//             //  var flag = 0;
           
               

//                 // console.log(checkvariable(password,useraccounts.password));
//                 console.log("one");
//                 const plainpassword = useraccounts.password;

//                if( checkvariable(password,plainpassword)) {
                     
//                      res.send("login success");
//                      console.log("two");
//                     //  flag=0;
                
//                 };
               
            
//             //  if (flag == 1) res.send("Login Error");
//             }else{
//                 res.send("login error");
//                 console.log("three");
//             }
//         //     else {
//         //   res.send(JSON.stringify(err, undefined, 2));
//         //  }

//      });

// });

// router.post('/reguser', async(req, res) => {
//     var hashedpassword = await hashPassword(req.body);
//     req.body.password = hashedpassword;
//     var data = new useraccounts(req.body);
//     data.save();
//     console.log("Completed");

// });

//  function hashPassword (user) {
//     bcrypt.genSalt(10, function(err,salt){
//         bcrypt.hash(user.password,salt,function(err,hash){
//             user.password = hash;

//             if(err) throw err;
//             user.save(callback);
//         });

//     });

//     // const password = user.password
//     // const saltRounds = 10;
  
//     // // const hashedPassword = await new Promise((resolve, reject) => {
//     //   bcrypt.hash(password, saltRounds, function(err, hash) {
//     //     if (err) reject(err)
//     //     resolve(hash)
//     // //   });
//     // })
  
//     // return hashedPassword
//   }

// function checkvariable(password,hash){
//     useraccounts.password =
// //    flag = 0;
// //     bcrypt.compare(password, hashedpassword, function(err, res) {
// //         flag=1;
// //     });
// //    if(flag==1) return true;
//     bcrypt.compare(password,hash,function(err,res){
//         if(err) throw err;
//         if(res){
//             callback(null,res);
//         }
//     });
// };

// function findByEmail(username,callback){
//     const query = {username,username};
//     useraccounts.findOne(query,callback);

// };

// router.get('/', (req, res) => {
//     useraccounts.find((err, doc) => {
//         res.send(doc)
//     })

// });

// module.exports = router;


// //reset password
// router.get('/update/password', async (req, res) => {

//     try {
//         const filter = req.query;
//         const update = req.body;

//         mongoose.set('useFindAndModify', false);
//         await useraccount.countDocuments(filter); // 0

//         let doc = await useraccount.findOneAndUpdate(filter, update, {
//             new: true,
//             upsert: false 
//         });
//         console.log(doc);
    
//     } catch (error) {
//         res.status(500).send(error);
//         console.log(error);
//     }

// });