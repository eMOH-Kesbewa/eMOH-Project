var express = require('express');
var router = express.Router();
var Phm = require('../Schemas/phm');
//var Phm = require('../Schemas/ApprovedFamiliesSchema')
var mongoose = require('mongoose');

//add daily data
router.post('/add', (req, res) => {
    console.log(req.body);
    var data = new Phm(req.body);
    data.save((err,doc)=>{
        res.status(200).send("Inserted successfully.");
    });
    console.log("Completed");
});
