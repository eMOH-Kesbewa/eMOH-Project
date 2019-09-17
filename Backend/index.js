
const express = require('express');
const app = express();
const connection = require('./connection');
var router = express.Router();
const mongoose = require('mongoose');

const passport = require('passport');
app.use(passport.initialize());
app.use(passport.session());
require('./passport')(passport);



const Notification = require('./Schemas/NotificationSchema');

const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());



app.use(require('./routes'));

//for login and register
const user = require('./routes/users');
app.use('/user',user);


app.listen(5000,function(){
    console.log("listen to port 5000");
});
app.get("/",function(req,res){
    res.send("hello bab"); 
});
