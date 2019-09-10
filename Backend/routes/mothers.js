var express = require('express');
var router = express.Router();
var Mother = require('../Schemas/MotherSchema');
var mongoose = require('mongoose');

router.get('/update', async (req, res) => {

    try {
        const filter = req.query;
        const update = req.body;

        mongoose.set('useFindAndModify', false);
        await Mother.countDocuments(filter); // 0

        let doc = await Mother.findOneAndUpdate(filter, update, {
            new: true,
            upsert: false // Make this update into an upsert
        });
        console.log(doc);
    } catch (error) {
        res.status(500).send(error);
        console.log(error);
    }

});

router.post('/register', (req, res) => {
    console.log(req.body);
    var data = new Mother(req.body);
    data.save();
    console.log("Completed");
});

module.exports = router;