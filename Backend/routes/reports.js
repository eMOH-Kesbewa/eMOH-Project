var express = require('express');
var router = express.Router();
var WeightHeight = require('../Schemas/WeightHeight');
var mongoose = require('mongoose');

router.get('/viewWeightHeightsOfArea', (req, res) => {
    WeightHeight.find((err, doc) => {
        res.send(doc)
    })
});


router.get('/viewWeightHeightById/:id', (req, res) => {
    WeightHeight.find({ baby_id: req.params.id }, (err, doc) => {

        if (doc.length) {
            res.send(doc);
            console.log(doc);
        }
        else {
            console.log('Cannot find the record');
            res.status(500).send("Cannot find the record");
        }
    });

});

module.exports = router;