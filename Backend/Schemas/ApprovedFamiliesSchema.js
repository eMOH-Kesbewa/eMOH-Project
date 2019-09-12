const mongoose = require('mongoose');
var Schema = mongoose.Schema;
var ApprovedFamilies = new Schema({

    "village_id": String,
    "Approved_family_category": String,
    "Identity_number": String,
    "Date": Date,
    "Name_of_wife": String,
    "Name_of_husband": String,
    "Address": String,
    "Date_of_birth": Date,
    "Age_at_the_time_of_marriage": Number,
    "Job_status": String,
    "Education_level": String,
    "Number_of_living_children": String,
    "Pregnancy_details": {
        "Pregnancy": {
            "First": String,
            "Second": String,
            "Third": String,
            "Fourth": String,
            "Fifth": String
        },
        "Result": {
            "First": String,
            "Second": String,
            "Third": String,
            "Fourth": String,
            "Fifth": String
        }
    },
    "Family_planning_methods": {
        "First": {
            "Method": String,
            "Date": Date
        },
        "second": {
            "Method": String,
            "Date": Date
        },
        "third": {
            "Method": String,
            "Date": Date
        },
        "fourth": {
            "Method": String,
            "Date": Date
        }

    },
    "Safe_for_rubella": String,
    "Date_of_cervical_mucous_test": String,
    "Other_details": String,
    "number_of_young_children": Number

}, {
    collection: 'ApprovedFamilies'
});

var ApprovedFamily = mongoose.model('ApprovedFamily', ApprovedFamilies);

module.exports = ApprovedFamily;