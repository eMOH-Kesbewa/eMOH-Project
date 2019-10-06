const mongoose = require('mongoose');
var Schema = mongoose.Schema;
var weight_height = new Schema({
	"baby_id":String,
	"year": Number,
	"month": String,
	"batch_no": String,
	"name_of_child": String,
	"sex": String,
	"Date_of_birth": Date,
	"age_of_month":Number,
	"weight_of_child":String,
	"height_of_child":String,
	"other_details": String
	// "at_birth": {
	// 	"weight": Number,
	// 	"height": Number
	// },
	// "age_of_child": {
	// 	"first_year": {
	// 		"one": Number,
	// 		"two": Number,
	// 		"three": Number,
	// 		"four": Number,
	// 		"five": Number,
	// 		"six": Number,
	// 		"seven": Number,
	// 		"eight": Number,
	// 		"nine": Number,
	// 		"ten": Number,
	// 		"eleven": Number,
	// 		"twelve": Number
	// 	},
	// 	"second_year": {
	// 		"one": Number,
	// 		"two": Number,
	// 		"three": Number,
	// 		"four": Number,
	// 		"five": Number,
	// 		"six": Number,
	// 		"seven": Number,
	// 		"eight": Number,
	// 		"nine": Number,
	// 		"ten": Number,
	// 		"eleven": Number,
	// 		"twelve": Number
	// 	},
	// 	"third_year": {
	// 		"one": Number,
	// 		"two": Number,
	// 		"three": Number,
	// 		"four": Number,
	// 		"five": Number,
	// 		"six": Number,
	// 		"seven": Number,
	// 		"eight": Number,
	// 		"nine": Number,
	// 		"ten": Number,
	// 		"eleven": Number,
	// 		"twelve": Number
	// 	},
	// 	"fourth_year": {
	// 		"one": Number,
	// 		"two": Number,
	// 		"three": Number,
	// 		"four": Number,
	// 		"five": Number,
	// 		"six": Number,
	// 		"seven": Number,
	// 		"eight": Number,
	// 		"nine": Number,
	// 		"ten": Number,
	// 		"eleven": Number,
	// 		"twelve": Number
	// 	},
	// 	"fifth_year": {
	// 		"one": Number,
	// 		"two": Number,
	// 		"three": Number,
	// 		"four": Number,
	// 		"five": Number,
	// 		"six": Number,
	// 		"seven": Number,
	// 		"eight": Number,
	// 		"nine": Number,
	// 		"ten": Number,
	// 		"eleven": Number,
	// 		"twelve": Number
	// 	}
	// },
	
}, {
    collection: 'weightheight'
});
var weight_height = mongoose.model('weight_height', weight_height);

module.exports = weight_height;