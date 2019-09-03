const mongoose = require('mongoose');

mongoose.connect('mongodb+srv://admin:adm123@mohdatabase-gv00s.mongodb.net/mohDB?retryWrites=true', { useNewUrlParser: true })
    //mongoose.connect('mongodb+srv://admin:adm123@mohdatabase-ykmzo.mongodb.net/loginDB?retryWrites=true', { useNewUrlParser: true })
    .then(() => console.log("Succesfully Connected"))
    .catch((err) => console.error(err));

module.exports = mongoose;