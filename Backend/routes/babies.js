var express = require('express');
var router = express.Router();
var Baby = require('../Schemas/baby');
var motherbabyjoined = require('../Schemas/MotherBabyJoined');
var weight_height = require('../Schemas/WeightHeight');
var babyBook= require('../Schemas/baby');
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

//update baby book by id
router.put('/update/babybook', async (req, res) => {

    try {
        const filter = req.query;
        const update = req.body;

        mongoose.set('useFindAndModify', false);
        await Baby.countDocuments(filter); // 0

        let doc = await Baby.findOneAndUpdate(filter, update, {
            new: true,
            upsert: true 
        });
        res.status(201).send(doc)
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

//add baby book
router.post('/addbook', (req, res) => {
    console.log("baby");
    console.log(req.body);
    var data = new babyBook(req.body);
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

//view by baby id
router.get('/viewbybabyid/:id', (req, res) => {
    Baby.find({ baby_id: req.params.id }, (err, doc) => {
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
        if (doc.length) {
            res.send(doc);
            console.log(doc);
            res.status(201)
        }
        else {
            console.log('Error in Retriving Weight Height Details :' + JSON.stringify(err, undefined, 2));
            res.status(500).send(err)
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
        res.status(200).json("Inserted successfully.");
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

//update weight height table
router.put('/update/heightweight', async (req, res) => {

    try {
        const filter = req.query;
        const update = req.body;

        mongoose.set('useFindAndModify', false);
        await weight_height.countDocuments(filter); // 0

        let doc = await weight_height.findOneAndUpdate(filter, update, {
            new: true,
            upsert: true 
        });
        res.status(200).json("Updated successfully.");
        console.log(doc);
    } catch (error) {
        res.status(500).json(error);
        console.log(error);
    }

});

//search motherbabyjoined data by id or name
router.get('/searchbyid/:searchData', (req, res) => {
    searchData = req.params.searchData;
    console.log(searchData)
    if (searchData == '0') {
        motherbabyjoined.find((err, doc) => {
            res.send(doc)
        })
    } else {
        motherbabyjoined.find({
            $or:[
                    {
                        mother_id: new RegExp(searchData, 'i')
                    },
                    {
                        child_name:new RegExp(searchData, 'i')
                    },
                    {
                        mothers_name:new RegExp(searchData, 'i')
                    }
                ]
        }, (err, doc) => {
            if (doc.length) {
                res.send(doc);
                console.log(doc);
            } else {
                console.log('Cannot find the record');
                res.send(doc);
            }
        });
    }
});

router.get('/getBabyList/:searchData', (req, res) => {
    searchData = req.params.searchData;
    console.log(searchData)
    if (searchData == '0') {
        motherbabyjoined.find((err, doc) => {
            res.send(doc)
        })
    } else {
        motherbabyjoined.find({
            $or:[
                    {
                        baby_id: new RegExp(searchData, 'i')
                    }
                ]
        }, (err, doc) => {
            if (doc.length) {
                res.send(doc);
                console.log(doc);
            } else {
                console.log('Cannot find the record');
                res.send(doc);
            }
        });
    }
});

router.get('/searchweightbyid/:searchData', (req, res) => {
    searchData = req.params.searchData;
    console.log(searchData)
    if (searchData == '0') {
        weight_height.find((err, doc) => {
            res.send(doc)
        })
    } else {
        weight_height.find({
            $or:[
                    {
                        baby_id: new RegExp(searchData, 'i')
                    },
                    {
                        name_of_child:new RegExp(searchData, 'i')
                    }
                ]
        }, (err, doc) => {
            if (doc.length) {
                res.send(doc);
                console.log(doc);
            } else {
                console.log('Cannot find the record');
                res.send(doc);
            }
        });
    }
});

//baby immunization report
router.get('/immunizationReport/:year',(req,res)=>{
    currentYear = req.params.year
    nextYearInt = parseInt(currentYear)
    nextYearInt += 1
    nextYear = nextYearInt.toString();

    motherbabyjoined.aggregate([
        {$match :{
            
                "immunization__japanese_encephalitis" :
            
            {
                $gte: new Date(`${currentYear}-01-01T00:00:00.000Z`),
                $lt: new Date(`${nextYear}-01-01T00:00:00.000Z`),
            }
            
        }
        

        },
        {
            $facet:{
                Quarter1:[
                    {
                        
                        $group:{
                            _id:'$immunization__japanese_encephalitis',
                            count:{$sum:1}
                        }
                    }
                ],
                Quarter2:[
                    {
                        $group:{
                            _id:'$immunization__measles_mumps_rubella_mmr_2',
                            count:{$sum:1}
                        }
                    }
                ],
                Quarter3:[
                    {
                        $group:{
                            _id:'$immunization__polio__opv__first',
                            count:{$sum:1}
                        }
                    }
                ],
                
            }
            
        }
        
    ])
    
    .then(doc=>
        {
            res.status(200).json(doc[0])
    }
      )
})

module.exports = router;
