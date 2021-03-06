var express = require('express');
var router = express.Router();
var ApprovedFamily = require('../Schemas/ApprovedFamiliesSchema');
var mongoose = require('mongoose');
var phm =require('../Schemas/phm');
var motherbabyjoined = require('../Schemas/MotherBabyJoined');
var motherfordoc = require('../Schemas/motherfordoc');
var weight_height = require('../Schemas/WeightHeight');
var babyBook= require('../Schemas/baby');

//Get details of low weight babies when they are in one month old
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

//Get details of low weight babies when they are in six months old
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
//Get details of low weight babies when they are one year old
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
//Get details of low weight babies when they are one year and 6 months old
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
//Get details of low weight babies when they are two years old
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
//Get details of low weight babies when they are three years old
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
//Get details of the babies who are having impaired movements eye problem
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
//Get details of the babies who are having bito spots in their eyes
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
//Get details of the babies who are having left sight eye problems
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
//Get details of the babies who are having right sight eye problems
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
//Get details of the babies who are having left ear hearing problems
router.get('/hearingProblems/left', (req, res) => {
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
//Get details of the babies who are having right ear hearing problems
router.get('/hearingProblems/right', (req, res) => {
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
//Get details of the babies who are having white brown spots in their teeth
router.get('/dental/whiteBrownSpots', (req, res) => {
    babyBook.find({ one_month_hearing_right : "True" }, (err, doc) => {
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

//Get details of the babies who are having dental carries
router.get('/dental/caries', (req, res) => {
    babyBook.find({ one_month_hearing_right : "True" }, (err, doc) => {
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

//Get details of the babies who are having dental cavities
router.get('/dental/cavities', (req, res) => {
    babyBook.find({ one_month_hearing_right : "True" }, (err, doc) => {
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



//Get details of the babies who are having heart diseases
router.get('/heart/diseases', (req, res) => {
    babyBook.find({ one_month_heart_disease : "True" }, (err, doc) => {
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