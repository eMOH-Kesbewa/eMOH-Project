const mongoose = require('mongoose');
var Schema = mongoose.Schema;
var Mother_baby= new Schema({
    "mother_no": string,
    "child_name": String,
    "mothers_name": string,
    "address": String,
    "sex": String,
    "date_of_birth": Date,
    "birth_weight": Float,
    "registration_date": Date,
    "registration_category": String,
    "immunization": {
    "BGC": Date,
    "scar": Boolean, 
    "pentavalent":{
    "first": Date,
    "second": Date,
    "third": Date
    },
    "polio": {
    "opv": {
    "first": Date,
    "second": Date,
    "third": Date
    },
    "fipv":{
    two_m: Date,
    foru_m: Date
    }
    },
    "japanese_encephalitis": Date,
    "measles_mumps_rubella_mmr_1": Date,
    "diptheria_pertusis_tetanus_4": Date,
    "polio_4": Date,
    "measles_mumps_rubella_mmr_2": Date,
    "diptheria_tetanus_5": Date,
    "diptheria_tetanus_6": Date
    },
    "vitamin_a_mega_dose": {
    "postnatal_mothers": Date,
    "at_sixth_month": Date,
    "at_first_year": Date,
    "at_one_and_half_yr": Date,
    "at_year_two": Date,
    "at_year_two_and_half": Date,
    "at_year_three": Date,
    "at_year_three_and_half": Date,
    "at_year_four": Date,
    "at_year_four_and_half": Date,
    "at_year_nine": Date,
    "at_year_twelve": Date,
    },
    "remarks": String
    }, {collection: 'Mother_baby_joined'});