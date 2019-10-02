const mongoose = require('mongoose');
var Schema = mongoose.Schema;
var Mother_baby = new Schema({
    "mother_id": String,
    "child_name": String,
    "mothers_name": String,
    "address": String,
    "sex": String,
    "date_of_birth": Date,
    "birth_weight": Number,
    "registration_date": Date,
    "registration_category": String,

    "immunization__BGC": Date,
    "immunization__scar": Boolean, 

    "immunization__pentavalent__first": Date,  
    "immunization__pentavalent__second": Date,  
    "immunization__pentavalent__third": Date, 

    "immunization__polio__opv__first": Date,  
    "immunization__polio__opv__second": Date,  
    "immunization__polio__opv__third": Date, 
    "immunization__polio__fipv__two_m": Date,  
    "immunization__polio__fipv__foru_m": Date, 

    "immunization__japanese_encephalitis": Date,  
    "immunization__measles_mumps_rubella_mmr_1": Date,  
    "immunization__diptheria_pertusis_tetanus_4": Date,  
    "immunization__polio_4":Date,  
    "immunization__measles_mumps_rubella_mmr_2": Date,  
    "immunization__diptheria_tetanus_5": Date,  
    "immunization__diptheria_tetanus_6": Date,  

    "vitamin_a_mega_dose__postnatal_mothers": Date,
    "vitamin_a_mega_dose__at_sixth_month": Date,
    "vitamin_a_mega_dose__at_first_year": Date,
    "vitamin_a_mega_dose__at_one_and_half_yr": Date,
    "vitamin_a_mega_dose__at_year_two": Date,
    "vitamin_a_mega_dose__at_year_two_and_half": Date,
    "vitamin_a_mega_dose__at_year_three": Date,
    "vitamin_a_mega_dose__at_year_three": Date,
    "vitamin_a_mega_dose__at_year_four": Date,
    "vitamin_a_mega_dose__at_year_four_and_half": Date,
    "vitamin_a_mega_dose__at_year_nine": Date,
    "vitamin_a_mega_dose__at_year_twelve": Date,
    
    "remarks": String
}, {
    collection: 'Mother_baby_joined'
});

var Mother_baby = mongoose.model('Mother_baby', Mother_baby);

module.exports = Mother_baby;