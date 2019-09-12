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

//View all families in the area
router.get('/view', (req, res) => {
    clinics.find((err, doc) => {
        res.send(doc)
    })
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


module.exports = router;