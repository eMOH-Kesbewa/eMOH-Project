const mongoose = require('mongoose');
var Schema = mongoose.Schema;

var Notification = new Schema({
    "clinic_no" : String,
    "date" : Date,
    "location" : String,
    "Description" : String,
},{ collection: 'Notification' });

var Notification = mongoose.model('Notification', Notification);

module.exports = Notification;