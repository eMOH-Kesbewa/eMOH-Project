var express = require('express');
var router = express.Router();
var ApprovedFamily = require('../Schemas/ApprovedFamiliesSchema');
var mongoose = require('mongoose');
var phm =require('../Schemas/phm');

//Insert New Families
router.post('/add', (req, res) => {
    console.log(req.body);
    var data = new ApprovedFamily(req.body);
    data.save((err,doc)=>{
        res.status(200).json("Inserted successfully.");
    });
    console.log("Completed");
});

//View all families in the area
router.get('/view', (req, res) => {
    ApprovedFamily.find((err, doc) => {
        res.send(doc)
    })
    
});
//Update families
router.put('/update', async (req, res) => {
    try {
        const filter = req.query;
        const update = req.body;
        
        mongoose.set('useFindAndModify', false);
        await ApprovedFamily.countDocuments(filter); // 0

        let doc = await ApprovedFamily.findOneAndUpdate(filter, update, {
            new: true,
            upsert: true // Make this update into an upsert
        });
        res.status(201).send(doc)
        //console.log(doc);
    } catch (error) {
        res.status(500).send(error);
        console.log(error);
    }

});
//View families by id
router.get('/viewbyid/:id', (req, res) => {
    ApprovedFamily.find({ Identity_number: req.params.id }, (err, doc) => {

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

//Search the family by famId or Name of wife
router.get('/searchbyid/:searchData', (req, res) => {
    searchData = req.params.searchData;
    console.log(searchData)
    if (searchData == '0') {
        ApprovedFamily.find((err, doc) => {
            res.send(doc)
        })
    } else {
        ApprovedFamily.find({
            $or:[
                    {
                        Identity_number: new RegExp(searchData, 'i')
                    },
                    {
                        Name_of_wife:new RegExp(searchData, 'i')
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
//Get data to generate the Modern Contraceptive Methods Graph -> Need to give which year we need to retrieve data
router.get('/getModernContraceptiveMethods/:year', (req, res) => {
    currentYear = req.params.year;
    console.log(currentYear)
    nextYearInt = parseInt(currentYear);
    nextYearInt+=1;
    nextYear = nextYearInt.toString();
    ApprovedFamily.aggregate([
        { $match: {
                "Family_planning_methods__First__Date": 
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
                            _id:'$Family_planning_methods__First__Method',
                            count:{$sum:1}
                        }
                    }
                ],
                Quarter2:[
                    {
                        $group:{
                            _id:'$Family_planning_methods__second__Method',
                            count:{$sum:1}
                        }
                    }
                ],
                Quarter3:[
                    {
                        $group:{
                            _id:'$Family_planning_methods__third__Method',
                            count:{$sum:1}
                        }
                    }
                ],
                Quarter4:[
                    {
                        $group:{
                            _id:'$Family_planning_methods__fourth__Method',
                            count:{$sum:1}
                        }
                    }
                ],
            }
            
        }
    ]).then(doc=>
        {
            res.status(200).json(doc[0])
    }
            
    )
})

//report about approved families
router.get('/familyReport/:year',(req,res)=>{
    

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
                           
                           "total1": {$sum:"$No_of_new_registered_family"},
                           "total2" : {$sum:"$No_of_removed_family_from_form"}
                        
                      }
                    
               
               }

    ]).then(doc=>
        {
            res.status(200).json(doc[0])
    }
      )
})

module.exports = router;