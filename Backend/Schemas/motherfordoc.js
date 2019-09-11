const mongoose = require('mongoose');
var Schema = mongoose.Schema;
var mother_baby_fordoc= new Schema({
	"mother_id":String,
	"mothers_personal_details": {
		"mothers_name": String,
		"mothers_age": Number,
		"husband_name": String,
		"husband_age": Number,
		"mothers_education_level": String,
		"husbands_education_level": String,
		"mothers_occupation": String,
		"fathers_occupation": String,
	},
	"maiden_or_risked": Boolean, 
	"blood_group": String,
	"identified_maternal_risks_diseases": String,
	"registration_details": {
		"registration_number": String,
		"registration_date": Date,
		"registered_place": String,
		"registered_date_according_to_the_approved_family_document": Date,
		"grama_niladari_division": String,
		"phm_devision": String,
		"phi_devision": String,
		"address": String,
		"telephone": String,
		"distance_to_mothers_workplace(km)": Number,
		"mothers_age_at_marriage": Number,
	},
	"blood_relatives_marriage": Boolean,
	"injected_for_rubella": Boolean,
	"done_pre_pregnancy_test": Boolean,
	"is_forlic_acid_given": Boolean,
	"history_of_madasarubawaya": Boolean,
	"pregnancy_history": {
	"current_pregnancy_status": {
		"which_pregnancy": Number,
		"no_of_living_children": Number,
		"age_of_the_youngest_child": {
			"years": Number,
			"months": Number
		}
	},
		"last_menstrual_date": {
		"date": Number,
		"month": Number,
		"year": Number
		},
		"expected_dilivery_date": {
		"date": Number,
		"month": Number,
		"year": Number
		},
		"expected_dilivery_date_corrected_by_US": {
		"date": Number,
		"month": Number,
		"year": Number
		},
		"expecting_time_period": {
		"from": Date,
		"to": Date
		},
		"weeks_into_pregnancy_when_registration": Number,
		"have_used_any_family_organization_method": Boolean
	},
	"current_pregnancy_details": {
		"between_20t025_ages": {
		"yesORno": Boolean,
		"details": String
		},
		"fifth_pregnanycy_or above_fifth": {
		"yesORno": Boolean,
		"details": String
		},
		"uterine_diseaces_or_high_blood_sugar": {
		"yesORno": Boolean,
		"details": String
		},
		"prenatal_vaginal_bleeding": {
		"yesORno": Boolean,
		"details": String
		},
		"abnormal_positioning": {
		"yesORno": Boolean,
		"details": String
		},
		"not_knowing_the_exact_delivery_date": {
		"yesORno": Boolean,
		"details": String
		},
		"other": String
	},
	"other_pregnancy_details": {
	"g1": {
	"result": String,
	"delivery_details": String,
	"delivered_place": String,
	"bron_weight": Number,
	"delivery_abnormalities": String,
	"sex": String
	},
	"g2": {
	"result": String,
	"delivery_details": String,
	"delivered_place": String,
	"bron_weight": Number,
	"delivery_abnormalities": String,
	"sex": String
	},
	"g3": {
	"result": String,
	"delivery_details": String,
	"delivered_place": String,
	"bron_weight": Number,
	"delivery_abnormalities": String,
	"sex": String
	},
	"g4": {
	"result": String,
	"delivery_details": String,
	"delivered_place": String,
	"bron_weight": Number,
	"delivery_abnormalities": String,
	"sex": String
	},
	"g5": {
	"result": String,
	"delivery_details": String,
	"delivered_place": String,
	"bron_weight": Number,
	"delivery_abnormalities": String,
	"sex": String
	},
	"g6": {
	"result": String,
	"delivery_details": String,
	"delivered_place": String,
	"bron_weight": Number,
	"delivery_abnormalities": String,
	"sex": String
	}
	},
	"other_risky_situations": {
		"bmi_below20_or_above25": {
		"yesORno": Boolean,
		"details": String
		},
		"diabetes": {
		"yesORno": Boolean,
		"details": String
		},
		"malaria": {
		"yesORno": Boolean,
		"details": String
		},
		"heart_problems": {
		"yesORno": Boolean,
		"details": String
		},
		"other_details": String
	},
	"family_diseases_details": {
	"diabetes": Boolean,
	"high_blood_preasre": Boolean,
	"blood_diseases": Boolean
	},
	
	"early_obstetric_details": {
		"day1": {
			"date": Date,
			"pregnancy_weeks": Number,
			"urine":String,
			"natritional_needs_myths": String,
			"embryo_height": Number,
			"embryo_moves": Boolean,
			"embryo_sounds": Boolean,
			"temporiry_left_the_province": Boolean,
			"is_it_informed": Boolean,
			"in_an_emergency": {
			"hospital": String,
			"transport_method": String
			}
			},
			"day2": {
			"date": Date,
			"pregnancy_weeks": Number,
			"urine":String,
			"natritional_needs_myths": String,
			"embryo_height": Number,
			"embryo_moves": Boolean,
			"embryo_sounds": Boolean,
			"temporiry_left_the_province": Boolean,
			"is_it_informed": Boolean,
			"in_an_emergency": {
			"hospital": String,
			"transport_method": String
			}
			},
			"day3": {
			"date": Date,
			"pregnancy_weeks": Number,
			"urine":String,
			"natritional_needs_myths": String,
			"embryo_height": Number,
			"embryo_moves": Boolean,
			"embryo_sounds": Boolean,
			"temporiry_left_the_province": Boolean,
			"is_it_informed": Boolean,
			"in_an_emergency": {
			"hospital": String,
			"transport_method": String
			}
			},
			"day4": {
			"date": Date,
			"pregnancy_weeks": Number,
			"urine":String,
			"natritional_needs_myths": String,
			"embryo_height": Number,
			"embryo_moves": Boolean,
			"embryo_sounds": Boolean,
			"temporiry_left_the_province": Boolean,
			"is_it_informed": Boolean,
			"in_an_emergency": {
			"hospital": String,
			"transport_method": String
			}
			}
		
	},
	"clinical_details": {
	"clinics":{
		"day1": {
			"clinical_day": Date,
			"weeks_into_pregnancy": String,
			"weight": Number,
			"urine": {
				"sugar": Number,
				"hemoglobin": Number
			},
			"blood_pressure": Number,
			"position": String,
			"embryo_moves": Boolean,
			"embryo_sounds": Boolean,
			"iron_folate": String,
			"vitamin_c": String,
			"calsium_malaria_treatments": String,
			"threeposha": Number,
			"checked_by": String
		},
		"day2": {
			"clinical_day": Date,
			"weeks_into_pregnancy": String,
			"weight": Number,
			"urine": {
				"sugar": Number,
				"hemoglobin": Number
			},
			"blood_pressure": Number,
			"position": String,
			"embryo_moves": Boolean,
			"embryo_sounds": Boolean,
			"iron_folate": String,
			"vitamin_c": String,
			"calsium_malaria_treatments": String,
			"threeposha": Number,
			"checked_by": String
		},
		"day3": {
			"clinical_day": Date,
			"weeks_into_pregnancy": String,
			"weight": Number,
			"urine":{
				"sugar": Number,
				"hemoglobin": Number
			},
			"blood_pressure": Number,
			"position": String,
			"embryo_moves": Boolean,
			"embryo_sounds": Boolean,
			"iron_folate": String,
			"vitamin_c": String,
			"calsium_malaria_treatments": String,
			"threeposha": Number,
			"checked_by": String
		},
		"day4":{
			"clinical_day": Date,
			"weeks_into_pregnancy": String,
			"weight": Number,
			"urine":{
				"sugar": Number,
				"hemoglobin": Number
			},
			"blood_pressure": Number,
			"position": String,
			"embryo_moves": Boolean,
			"embryo_sounds": Boolean,
			"iron_folate": String,
			"vitamin_c": String,
			"calsium_malaria_treatments": String,
			"threeposha": Number,
			"checked_by": String
		},
		"day5":{
			"clinical_day": Date,
			"weeks_into_pregnancy": String,
			"weight": Number,
			"urine":{
				"sugar": Number,
				"hemoglobin": Number
			},
			"blood_pressure": Number,
			"position": String,
			"embryo_moves": Boolean,
			"embryo_sounds": Boolean,
			"iron_folate": String,
			"vitamin_c": String,
			"calsium_malaria_treatments": String,
			"threeposha": Number,
			"checked_by": String
		},
		"day6":{
			"clinical_day": Date,
			"weeks_into_pregnancy": String,
			"weight": Number,
			"urine":{
				"sugar": Number,
				"hemoglobin": Number
			},
			"blood_pressure": Number,
			"position": String,
			"embryo_moves": Boolean,
			"embryo_sounds": Boolean,
			"iron_folate": String,
			"vitamin_c": String,
			"calsium_malaria_treatments": String,
			"threeposha": Number,
			"checked_by": String
		},
		"day7":{
			"clinical_day": Date,
			"weeks_into_pregnancy": String,
			"weight": Number,
			"urine":{
				"sugar": Number,
				"hemoglobin": Number
			},
			"blood_pressure": Number,
			"position": String,
			"embryo_moves": Boolean,
			"embryo_sounds": Boolean,
			"iron_folate": String,
			"vitamin_c": String,
			"calsium_malaria_treatments": String,
			"threeposha": Number,
			"checked_by": String
		},
		"day8":{
			"clinical_day": Date,
			"weeks_into_pregnancy": String,
			"weight": Number,
			"urine":{
				"sugar": Number,
				"hemoglobin": Number
			},
			"blood_pressure": Number,
			"position": String,
			"embryo_moves": Boolean,
			"embryo_sounds": Boolean,
			"iron_folate": String,
			"vitamin_c": String,
			"calsium_malaria_treatments": String,
			"threeposha": Number,
			"checked_by": String
		},
		
		"worm_treatment_given_date": Date,
		"tetanus_treatments":{
		"type": String,
		"given_date": Date,
		"type_number": String
		}
		},
		"height": Number,
		"bmi": Number,
		"vdrl":{
			"blood_sample_obtained_date": Date,
			"weeks_into_pregnancy_when_blood_sample_was_obtained": Number,
			"date_of_results": Date,
			"result": String,
			"date_of_referral_for_further_treatments" : Date,
		},
		"was_blood_sample_taken_fot_pretest":{
			"for_hiv": Boolean,
			"for_malaria": Boolean
		},
		"breast_test": String,
		"cardiac_examination":{
			"first_three_month": String,
			"second_three_month": String,
			"third_three_month": String
		},
		"lungs": String,
		"dental_test": String,
		"dental_caries": String,
		"participating_clinics": String,
	},
	"after_delivery_details":{
		"vitamin_c_overdose": Date,
		"rubella": Date,
		"day_mother_came_home": Date,
		"child":{
			"sex": String,
			"birth_weight": Number,
			"immatured": Boolean,
			"abnormalities": Boolean,
			"other_details": String
		},
		"maternal_deaths":{
		"date": Date,
		"reason": String,
		"inversigated": Boolean
		},
		"post_travel_days":{
			"day1":{
			"date": Date,
			"mother":{
				"temperature": Number,
				"paleness": Boolean,
				"breast": String,
				"filamemtous_blood": String,
				"mental_changes": Boolean,
				"diarrrhea": Boolean,
				"vomiting": Boolean,
				"breathing_difficulties": Boolean,
				"visual_difficulties": Boolean,
				"pain_in_kent": Boolean,
				"prebiotics": String	
			},
			"child":{
			"abnormalities": Boolean,
			"fever": Boolean,
			"skin_color": String,
			"infections_near_umbilicus": Boolean,
			"suckling": String,
			"prebiotics": String
			}, 
			"other_details": String
			},
			"day2":{
			"date": Date,
			"mother":{
				"temperature": Number,
				"paleness": Boolean,
				"breast": String,
				"filamemtous_blood": String,
				"mental_changes": Boolean,
				"diarrrhea": Boolean,
				"vomiting": Boolean,
				"breathing_difficulties": Boolean,
				"visual_difficulties": Boolean,
				"pain_in_kent": Boolean,
				"prebiotics": String	
			},
			"child":{
			"abnormalities": Boolean,
			"fever": Boolean,
			"skin_color": String,
			"infections_near_umbilicus": Boolean,
			"suckling": String,
			"prebiotics": String
			}, 
			"other_details": String
			},
			"day3":{
			"date": Date,
			"mother":{
				"temperature": Number,
				"paleness": Boolean,
				"breast": String,
				"filamemtous_blood": String,
				"mental_changes": Boolean,
				"diarrrhea": Boolean,
				"vomiting": Boolean,
				"breathing_difficulties": Boolean,
				"visual_difficulties": Boolean,
				"pain_in_kent": Boolean,
				"prebiotics": String	
			},
			"child":{
			"abnormalities": Boolean,
			"fever": Boolean,
			"skin_color": String,
			"infections_near_umbilicus": Boolean,
			"suckling": String,
			"prebiotics": String
			}, 
			"other_details": String
			},
			"day4":{
			"date": Date,
			"mother":{
				"temperature": Number,
				"paleness": Boolean,
				"breast": String,
				"filamemtous_blood": String,
				"mental_changes": Boolean,
				"diarrrhea": Boolean,
				"vomiting": Boolean,
				"breathing_difficulties": Boolean,
				"visual_difficulties": Boolean,
				"pain_in_kent": Boolean,
				"prebiotics": String	
			},
			"child":{
			"abnormalities": Boolean,
			"fever": Boolean,
			"skin_color": String,
			"infections_near_umbilicus": Boolean,
			"suckling": String,
			"prebiotics": String
			}, 
			"other_details": String
			},
			"day5":{
			"date": Date,
			"mother":{
				"temperature": Number,
				"paleness": Boolean,
				"breast": String,
				"filamemtous_blood": String,
				"mental_changes": Boolean,
				"diarrrhea": Boolean,
				"vomiting": Boolean,
				"breathing_difficulties": Boolean,
				"visual_difficulties": Boolean,
				"pain_in_kent": Boolean,
				"prebiotics": String	
			},
			"child":{
			"abnormalities": Boolean,
			"fever": Boolean,
			"skin_color": String,
			"infections_near_umbilicus": Boolean,
			"suckling": String,
			"prebiotics": String
			}, 
			"other_details": String
			},
			"day6":{
			"date": Date,
			"mother":{
				"temperature": Number,
				"paleness": Boolean,
				"breast": String,
				"filamemtous_blood": String,
				"mental_changes": Boolean,
				"diarrrhea": Boolean,
				"vomiting": Boolean,
				"breathing_difficulties": Boolean,
				"visual_difficulties": Boolean,
				"pain_in_kent": Boolean,
				"prebiotics": String	
			},
			"child":{
			"abnormalities": Boolean,
			"fever": Boolean,
			"skin_color": String,
			"infections_near_umbilicus": Boolean,
			"suckling": String,
			"prebiotics": String
			}, 
			"other_details": String
			},
			"day7":{
			"date": Date,
			"mother":{
				"temperature": Number,
				"paleness": Boolean,
				"breast": String,
				"filamemtous_blood": String,
				"mental_changes": Boolean,
				"diarrrhea": Boolean,
				"vomiting": Boolean,
				"breathing_difficulties": Boolean,
				"visual_difficulties": Boolean,
				"pain_in_kent": Boolean,
				"prebiotics": String	
			},
			"child":{
			"abnormalities": Boolean,
			"fever": Boolean,
			"skin_color": String,
			"infections_near_umbilicus": Boolean,
			"suckling": String,
			"prebiotics": String
			}, 
			"other_details": String
			},
			"day8":{
			"date": Date,
			"mother":{
				"temperature": Number,
				"paleness": Boolean,
				"breast": String,
				"filamemtous_blood": String,
				"mental_changes": Boolean,
				"diarrrhea": Boolean,
				"vomiting": Boolean,
				"breathing_difficulties": Boolean,
				"visual_difficulties": Boolean,
				"pain_in_kent": Boolean,
				"prebiotics": String	
			},
			"child":{
			"abnormalities": Boolean,
			"fever": Boolean,
			"skin_color": String,
			"infections_near_umbilicus": Boolean,
			"suckling": String,
			"prebiotics": String
			}, 
			"other_details": String
			}
		},
		"mental_health_according_to_edingburo": String,
		"new_born_baby":{
			"bcg": String,
			"if_died":{
				"when": String,
				"reason": String,
				"inversigated": Boolean
			}
		},
		"does_mother_comes_to_post_delivery_clinics": Boolean,
		"accepted_family_organization_method": Boolean
	}
	}, {collection: 'mother_baby_fordoc'});
	var mother_baby_fordoc = mongoose.model('mother_baby_fordoc', mother_baby_fordoc);

	module.exports = mother_baby_fordoc;