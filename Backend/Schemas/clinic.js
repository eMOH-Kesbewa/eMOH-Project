const mongoose = require('mongoose');
var Schema = mongoose.Schema;
var clinicScheduling = new Schema({
    "clinic_id": String,
    "clinic_title": String,
    "clinic_discription": String,
    "clinic_priority":String,
    "date": Date
}, {
    collection: 'Clinics'
});
var clinicScheduling = mongoose.model('clinicScheduling', clinicScheduling);

module.exports = clinicScheduling;