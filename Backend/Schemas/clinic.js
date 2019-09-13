const mongoose = require('mongoose');
var Schema = mongoose.Schema;
var clinicScheduling = new Schema({
    "clinic_id": String,
    "clinic_name": String,
    "clinic_discription": String,
    "date": Date
}, {
    collection: 'Clinics'
});
var clinicScheduling = mongoose.model('clinicScheduling', clinicScheduling);

module.exports = clinicScheduling;