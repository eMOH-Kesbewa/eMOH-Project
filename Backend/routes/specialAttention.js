var express = require('express');
var router = express.Router();
var ApprovedFamily = require('../Schemas/ApprovedFamiliesSchema');
var mongoose = require('mongoose');
var phm =require('../Schemas/phm');
var motherbabyjoined = require('../Schemas/MotherBabyJoined');
var motherfordoc = require('../Schemas/motherfordoc');
var weight_height = require('../Schemas/WeightHeight');
var babyBook= require('../Schemas/baby');

router.get('/lowWeightFirstYear/first_yearone', (req, res) => {
     weight_height.find({ first_yearone : {$lt : 10 }}, (err, doc) => {
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

router.get('/lowWeightFirstYear/first_yearsix', (req, res) => {
    weight_height.find({ first_yearone : {$lt : 10 }}, (err, doc) => {
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

router.get('/lowWeightFirstYear/first_yeartwelve', (req, res) => {
    weight_height.find({ sec_yearsix : {$lt : 15 }}, (err, doc) => {
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

router.get('/lowWeightFirstYear/sec_yearsix', (req, res) => {
    weight_height.find({ sec_yeartwelve : {$lt : 10 }}, (err, doc) => {
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

router.get('/lowWeightFirstYear/sec_yeartwelve', (req, res) => {
    weight_height.find({ sec_yeartwelve : {$lt : 10 }}, (err, doc) => {
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

router.get('/lowWeightFirstYear/third_yeartwelve', (req, res) => {
    weight_height.find({ sec_yeartwelve : {$lt : 10 }}, (err, doc) => {
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

router.get('/eyeProblems/impairedMovements', (req, res) => {
    babyBook.find({ one_month_impairment_of_eye_movement : "False" }, (err, doc) => {
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

router.get('/eyeProblems/bitoSpots', (req, res) => {
    babyBook.find({ four_year_bito_spots : "True" }, (err, doc) => {
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

router.get('/eyeProblems/impairedMovements', (req, res) => {
    babyBook.find({ one_month_impairment_of_eye_movement : "False" }, (err, doc) => {
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

router.get('/eyeProblems/leftSightProblem', (req, res) => {
    babyBook.find({ one_month_hearing_left : "False" }, (err, doc) => {
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

router.get('/eyeProblems/RightSightProblem', (req, res) => {
    babyBook.find({ one_month_hearing_right : "False" }, (err, doc) => {
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