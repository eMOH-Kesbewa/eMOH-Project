var express = require('express');
var router = express.Router();
var mongoose = require('mongoose');
const bcrypt = require('bcrypt');

var Schema = mongoose.Schema;

var useraccount = new Schema({
    "username":String,
    "password":String
}, { collection: 'useraccounts' });

var useraccounts = mongoose.model('useraccount', useraccount);


//Check username with the password with errors
/*
router.post('/', function(req, res) {
    var userlogindetails = req.body;
    var password = req.body.password;
    useraccounts.find({ username: req.body.username }, (err, docs) => {
        if (!err) {
            var flag = 0;
            docs.forEach((key) => {
               

                console.log(checkvariable(password,key.password));

                if(checkvariable(password,key.password)){
                    res.send("Welcome");
                    flag=1;
                };

               
            });
            if (flag == 0) res.send("Login Error");

        } else {
            res.send(JSON.stringify(err, undefined, 2));
        }

    });

});

*/
router.post('/reguser', async(req, res) => {
    var hashedpassword = await hashPassword(req.body);
    req.body.password = hashedpassword;
    var data = new useraccounts(req.body);
    data.save();
    console.log("Completed");

});

async function hashPassword (user) {

    const password = user.password
    const saltRounds = 10;
  
    const hashedPassword = await new Promise((resolve, reject) => {
      bcrypt.hash(password, saltRounds, function(err, hash) {
        if (err) reject(err)
        resolve(hash)
      });
    })
  
    return hashedPassword
  }

function checkvariable(password,hashedpassword){
   flag = 0;
    bcrypt.compare(password, hashedpassword, function(err, res) {
        flag=1;
    });
   if(flag==1) return true;
}

router.get('/', (req, res) => {
    useraccounts.find((err, doc) => {
        res.send(doc)
    })

});

//by jeewani
router.post('/',function(req,res){
    const username = req.body.username;
    const password = req.body.password;
});


module.exports = router;


