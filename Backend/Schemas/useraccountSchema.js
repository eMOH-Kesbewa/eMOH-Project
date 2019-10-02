const mongoose = require('mongoose');
const schema = mongoose.Schema;
// var useraccounts = new Schema({
//     "userid":String,
//     "username":String,
//     "password":String
// });

// var useraccounts = mongoose.model('useraccounts', useraccounts);
const userSchema = new schema({
    userid:{type:String,required:true},
    username:{type:String,required:true},
    password:{type:String,required:true}
});

const useraccounts = module.exports = mongoose.model("useraccounts",userSchema);

module.exports = useraccounts;