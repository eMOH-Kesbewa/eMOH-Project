const mongoose = require('mongoose');
var Schema = mongoose.Schema;
var clinicScheduling= new Schema({
    "clinic_id":String,
    "clinic_name": String,
    "clinic_type": String,
    "date": Date
},{collection: 'clinicScheduling'});
var  clinicScheduling= mongoose.model('clinicScheduling', clinicScheduling);

module.exports = clinicScheduling;