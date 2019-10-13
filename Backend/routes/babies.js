var express = require('express');
var router = express.Router();
var Baby = require('../Schemas/baby');
var motherbabyjoined = require('../Schemas/MotherBabyJoined');
var weight_height = require('../Schemas/WeightHeight');
var mongoose = require('mongoose');

router.get('/update', async (req, res) => {

    try {
        const filter = req.query;
        const update = req.body;

        mongoose.set('useFindAndModify', false);
        await Baby.countDocuments(filter); // 0

        let doc = await Baby.findOneAndUpdate(filter, update, {
            new: true,
            upsert: true // Make this update into an upsert
        });
        console.log(doc);
    } catch (error) {
        res.status(500).send(error);
        console.log(error);
    }

});

//add and view baby

router.post('/add', (req, res) => {
    console.log("baby");
    console.log(req.body);
    var data = new Baby(req.body);
    data.save((err,doc)=>{
        res.status(200).send("Inserted successfully.");
    });
    console.log("Completed");
});

router.get('/viewbaby', (req, res) => {
    Baby.find((err, doc) => {
        res.send(doc)
    })
});

router.get('/view', (req, res) => {
    motherbabyjoined.find((err, doc) => {
        res.send(doc)
    })
});


router.get('/viewbyid/:id', (req, res) => {
    Baby.find({ mother_id: req.params.id }, (err, doc) => {
        if (!err) {
            res.send(doc);
            console.log(doc);
        }
        else {
            console.log('Error in Retriving Mother Details :' + JSON.stringify(err, undefined, 2));

        }
    });

});

//View the weight and height table of a baby
router.get('/viewwieghtandheight/:id', (req, res) => {
    weight_height.find({ baby_id: req.params.id }, (err, doc) => {
        if (!err) {
            res.send(doc);
            console.log(doc);
        }
        else {
            console.log('Error in Retriving Mother Details :' + JSON.stringify(err, undefined, 2));

        }
    });

});

//view weight height  details all the children
router.get('/weight/view', (req, res)=>{
    weight_height.find((err, doc) => {
        res.send(doc)
    })
});

//add weight and height
router.post('/addweight', (req, res) => {
    console.log("weight");
    console.log(req.body);
    var data = new weight_height(req.body);
    data.save((err,doc)=>{
        res.status(200).send("Inserted successfully.");
    });
    console.log("Completed");
});

//Update weight and height table of a baby
router.get('/update', async (req, res) => {

    try {
        const filter = req.query;
        const update = req.body;

        mongoose.set('useFindAndModify', false);
        await weight_height.countDocuments(filter); // 0

        let doc = await weight_height.findOneAndUpdate(filter, update, {
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
