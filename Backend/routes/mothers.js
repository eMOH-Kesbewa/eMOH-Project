var express = require('express');
var router = express.Router();
var Mother = require('../Schemas/MotherSchema');
var mongoose = require('mongoose');
var motherbabyjoined = require('../Schemas/MotherBabyJoined');
var motherfordoc = require('../Schemas/motherfordoc');
var phm = require('../Schemas/phm');


//Add Details to MotherBabyJoinedTable
router.post('/register', (req, res) => { 
    console.log(req.body);
    var data = new Mother(req.body);
    data.save();
    console.log("Completed");
});


//Update details in motherbabyjoined table
router.put('/update/motherbabyjoined', async (req, res) => {

    try {
        const filter = req.query;
        const update = req.body;

        mongoose.set('useFindAndModify', false);
        await motherbabyjoined.countDocuments(filter); // 0

        let doc = await motherbabyjoined.findOneAndUpdate(filter, update, {
            new: true,
            upsert: true 
        });
        res.status(200).send("Updated successfully.");
        console.log(doc);
    } catch (error) {
        res.status(500).send(error);
        console.log(error);
    }

});

//Update details in mother table
router.put('/update/mother', async (req, res) => {

    try {
        const filter = req.query;
        const update = req.body;

        mongoose.set('useFindAndModify', false);
        await Mother.countDocuments(filter); // 0

        let doc = await Mother.findOneAndUpdate(filter, update, {
            new: true,
            upsert: false 
        });
        res.status(200).send(doc)
        console.log(doc);
    } catch (error) {
        res.status(500).send(error);
        console.log(error);
    }

});

//Update details in motherfordoc table
router.get('/update/motherfordoc', async (req, res) => {

    try {
        const filter = req.query;
        const update = req.body;

        mongoose.set('useFindAndModify', false);
        await motherfordoc.countDocuments(filter); // 0

        let doc = await motherfordoc.findOneAndUpdate(filter, update, {
            new: true,
            upsert: true 
        });
        console.log(doc);
    } catch (error) {
        res.status(500).send(error);
        console.log(error);
    }

});
//add details in motherfordoc table
router.post('/addmotherfordoc', (req, res) => {
    console.log("form");
    console.log(req.body);
    var data = new motherfordoc(req.body);
    data.save((err,doc)=>{
        res.status(200).send("Inserted successfully.");
    });
    console.log("Completed");
});
//view motherfor doc table
router.get('/motherfordoc/view', (req, res) => {
    motherfordoc.find((err, doc) => {
        res.send(doc)
    })
});


//View all the mothers in the area by viewing the whole motherbabyjoined table
router.get('/view', (req, res) => {
    motherbabyjoined.find((err, doc) => {
        res.send(doc)
    })
});

//View the mothertable by motherID
router.get('/viewbyid/:id', (req, res) => {
    Mother.find({ mother_id: req.params.id }, (err, doc) => {
        if (!err) {
            res.send(doc);
            console.log(doc);
        }
        else {
            console.log('Error in Retriving Mother Details :' + JSON.stringify(err, undefined, 2));

        }
    });

});

//View the motherbabyjoined table by motherID
router.get('/viewmotherbabyjoinedtable/viewbyid/:id', (req, res) => {
    motherbabyjoined.find({ baby_id: req.params.id }, (err, doc) => {
        if (!err) {
            res.send(doc);
            console.log(doc);
        }
        else {
            console.log('Error in Retriving MotherBabyJoined Table Details :' + JSON.stringify(err, undefined, 2));

        }
    });

});

//View the motherfordoc table by motherID
router.get('/motherfordoc/viewbyid/:id', (req, res) => {
    motherfordoc.find({ mother_id: req.params.id }, (err, doc) => {
        if (!err) {
            res.send(doc);
            console.log(doc);
        }
        else {
            console.log('Error in Retriving MotherForDoc Table Details :' + JSON.stringify(err, undefined, 2));

        }
    });

});

//view mother details
router.get('/mother/view', (req, res)=>{
    Mother.find((err, doc) => {
        res.send(doc)
    })
});

router.put('/update/:id', function(req, res, next) {
    Mother.findByIdAndUpdate(req.params.id, req.body, function (err, post) {
       if (err) return next(err);
       res.json(post);
    });
 });

 //search by mother nic, id or name
 router.get('/searchbyid/:searchData', (req, res) => {
    searchData = req.params.searchData;
    console.log(searchData)
    if (searchData == '0') {
        Mother.find((err, doc) => {
            res.send(doc)
        })
    } else {
        Mother.find({
            $or:[
                    {
                        mother_id: new RegExp(searchData, 'i')
                    },
                    {
                        registration_no:new RegExp(searchData, 'i')
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

//create report for registration of pregnanat mothers
router.get('/registrationMothers/:year',(req,res)=>{
    currentYear = req.params.year;
    console.log(currentYear)
    nextYearInt = parseInt(currentYear);
    nextYearInt+=1;
    nextYear = nextYearInt.toString();
    
      phm.aggregate([
       { $match: {
            "date_of_today": 
            {
                $gte: new Date(`${currentYear}-01-01T00:00:00.000Z`),
                $lt: new Date(`${nextYear}-01-01T00:00:00.000Z`),
            }
        } 
    },
          {
             $group:{
                            _id:null,
                            "sum_of_dates1":{$sum:"$Registered_mothers_before_eight_weeks"},
                            "sum_of_dates2":{$sum:"$Registered_mothers_between_eight_twelve_weeks"},
                            "sum_of_dates3":{$sum:"$Registered_mothers_after_twelve_weeks"},
                            "total":{$sum:{$add:["$Registered_mothers_before_eight_weeks","$Registered_mothers_between_eight_twelve_weeks","$Registered_mothers_after_twelve_weeks"]}}
                       }
                     
                
                }
                

      ],
      
      ).then(doc=>
        {
            res.status(200).json(doc[0])
    }
      )
})

//create graph about deliveries
router.get('/deliveryMothers/:year',(req,res)=>{
    currentYear = req.params.year
    nextYearInt = parseInt(currentYear)
    nextYearInt += 1
    nextYear = nextYearInt.toString();

    phm.aggregate([
        {$match :{
            "date_of_today": 
            {
                $gte: new Date(`${currentYear}-01-01T00:00:00.000Z`),
                $lt: new Date(`${nextYear}-01-01T00:00:00.000Z`),
            }
        }

        },
        {
            $group:{
                           _id:null,
                           
                           "total1":{$sum:{$add:["$No_of_delivery_permant_mothers_after_walking","$No_of_delivery_permant_mothers_hearing","$No_of_out_of_registered_mothers_before_delivery","$No_of_out_of_not_registered_mothers_before_delivery",
                             "$No_of_out_of_registered_mothers_after_delivery","$No_of_out_of_not_registered_mothers_after_delivery"
                        ]}},
                        "total2":{$sum:{$add:["$New_first_five_days","$Old_first_five_days"]}},
                        "total3":{$sum:{$add:["$New_between_six_ten_days","$Old_between_six_ten_days"]}},
                        "total4":{$sum:"$Between_elevn_thirteen_days"},
                        "total5":{$sum:{$add:["$New_between_fouteen_twentyone_days","$Old_between_fouteen_twentyone_days"]}},
                        "total6":{$sum:"$Near_fourtytwo_days"}
                      }
                    
               
               }

    ]).then(doc=>
        {
            res.status(200).json(doc[0])
    }
      )
})



module.exports = router;