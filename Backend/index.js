
var express = require('express');
var app = express();
var connection = require('./connection');
var Notification = require('./Schemas/NotificationSchema');

var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())


app.use(require('./routes'));


app.listen(5000);