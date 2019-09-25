var express = require('express');
var router = express.Router();
var clinics = require('../Schemas/clinic');
var mongoose = require('mongoose');

router.post('/add', (req, res) => {
    console.log(req.body);
    var data = new clinics(req.body);
    data.save();
    console.log("Completed");
});

//View all Upcoming Clinics 
router.get('/viewUpComingClinics', (req, res) => {
    //Sorted in a Latest to Oldest Order
    var now = new Date();
    var newFomat = formatDate(now);
    clinics.find({date:{$gte: newFomat}}).sort({date: 'descending'}).exec(function(err, docs) { 
        res.send(docs) 
    });
    //console.log("Completed");
});

//View all Clinic Histories
router.get('/view', (req, res) => {
    //Sorted in a Latest to Oldest Order
    var now = new Date();
    clinics.find({}).sort({date: 'descending'}).exec(function(err, docs) { 
        res.send(docs) 
    });
    //console.log("Completed");
});

//Update the clinics table
router.get('/update', async (req, res) => {

    try {
        const filter = req.query;
        const update = req.body;

        mongoose.set('useFindAndModify', false);
        await clinics.countDocuments(filter); // 0

        let doc = await clinics.findOneAndUpdate(filter, update, {
            new: true,
            upsert: false // Make this update into an upsert
        });
        console.log(doc);
    } catch (error) {
        res.status(500).send(error);
        console.log(error);
    }

});

function formatDate(date) {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2) 
        month = '0' + month;
    if (day.length < 2) 
        day = '0' + day;

    return [year, month, day].join('-');
}


module.exports = router;