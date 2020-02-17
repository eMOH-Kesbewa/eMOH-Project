const mongoose = require('mongoose');
var Schema = mongoose.Schema;
var Mother = new Schema({
    "mother_id": String,
    //"registration_no": String,
    "registration_date": Date,
    "mothers_name": String,
    "address": String,
    "age": Number,
    "no_of_living_children": Number,
    "gravidity": Number,
    "POA": Number,
    "EDD": Date,
    "protection_against_tetanus": Boolean,
    "protection_against_rubella": Boolean,
    "risk_conditions": Boolean,
    "blood_sugar__during_first_twelve_weeks": Number,
    "blood_sugar__twentyfour_fourtyeight_weeks": Number,
    "hemoglobin_level__first_twelve_weeks": Number,
    "hemoglobin_level__twentysix_twentyeight_weeks": Number,
    "blood_group": String,
    "vdrl_test__before_twelve_weeks": String,
    "vdrl_test__after_twelve_weeks": String,
    "hiv_screening": String,
    
    "mothers_weight__weight_at_first_visit": Number,
    "mothers_weight__poa_at_first_visit": Number,
    "mothers_weight__weight_at_last_visit": Number,
    "mothers_weight__poa_at_last_visit": Number,
    "mothers_weight__gained_weight_during_pregnancy": Number,

    "bmi_before_twelve_weeks": Number,

    "delivery_informations__date": Date,
    "delivery_informations__place": String,
    "delivery_informations__outcome": String,
    "delivery_informations__sex": String,
    "mode_of_delivery": String,

    "birth_weight": Number,

    "postpartum_visits__within_first_five_days": String,
    "postpartum_visits__six_to_ten_days": String,
    "postpartum_visits__late_first_visit_eleven_thirteen_days": String,
    "postpartum_visits__fourteen_twentyone_days": String,
    "postpartum_visits__arround_fourtytwo_days": String,

    "registration_no_in_bi_register": String,
    "registration_date_in_bi_register": Date,
    "remarks": String
}, {
    collection: 'Mother'
});

var Mother = mongoose.model('Mother', Mother);

module.exports = Mother;