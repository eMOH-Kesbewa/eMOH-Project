const mongoose = require('mongoose');
var Schema = mongoose.Schema;
var Mother = new Schema({
    "mother_id":String,
    "registration_no": String,
    "registration_date": String,
    "mothers_name": String,
    "address": String,
    "age": String,
    "no_of_living_children": Number,
    "gravidity": Number,
    "POA": Number,
    "EDD": Date,
    "protection_against_tetanus": Boolean,
    "protection_against_rubella": Boolean,
    "risk_conditions": Boolean,
    "blood_sugar": {
        "during_first_twelve_weeks": Number,
        "twentyfour_fourtyeight_weeks": Number,
    },
    "hemoglobin_level": {
        "first_twelve_weeks": Number,
        "twentysix_twentyeight_weeks": Number,
    },
    "blood_group": String,
    "vdrl_test": {
        "before_twelve_weeks": String,
        "after_twelve_weeks": String,
    },
    "hiv_screening": String,
    "mothers_weight": {
        "weight_at_first_visit": Number,
        "poa_at_first_visit": Number,
        "weight_at_last_visit": Number,
        "poa_at_last_visit": Number,
        "gained_weight_during_pregnancy": Number,
    },
    "bmi_before_twelve_weeks": Number,
    "delivery_informations": {
        "date": Date,
        "place": Date,
        "outcome": Date,
        "sex": String
    },
    "mode_of_delivery": String,
    "birth_weight": Number,
    "postpartum_visits": {
        "within_first_five_days": String,
        "six_to_ten_days": String,
        "late_first_visit_eleven_thirteen_days": String,
        "fourteen_twentyone_days": String,
        "arround_fourtytwo_days": String,
    },
    "registration_no_and_date_of_reg_in_bi_register": String,
    "remarks": String
}, { collection: 'Mother' });

var Mother = mongoose.model('Mother', Mother);

module.exports = Mother;