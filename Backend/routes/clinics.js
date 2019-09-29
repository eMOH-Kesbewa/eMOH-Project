var express = require('express');
var router = express.Router();
var clinics = require('../Schemas/clinic');
var mongoose = require('mongoose');
var users = require('../Schemas/useraccountSchema');
const nodemailer = require('nodemailer');
var recipients=[];
var latestClinicId=[];

router.post('/add', (req, res) => {
    
    
    
    //Finding the latest record entered to the database
    clinics.find({}).select('clinic_id -_id').sort({date: 'descending'}).limit(1).exec(async function(err, docs) { 
        docs = docs.map(function(doc) { return doc.clinic_id; }); 
        if(err){
            res.json(err)
        } else {
            latestClinicId = await docs;
        }
        await console.log(latestClinicId);
    });


setTimeout(()=>{
    //Select 'username' excluding '_id'
        users.find({}).sort({}).select('username -_id').exec(async function(err, docs) { 
            docs = docs.map(function(doc) { return doc.username; });
            if(err){
                res.json(err)
            } else {
                docs.forEach(async function(doc){
                    //console.log(doc);
                    await recipients.push(doc);
                });
                
            }
            let transporter = nodemailer.createTransport({
                service:'gmail',
                auth: {
                    user: 'tempsend123@gmail.com', // source email
                    pass: 'ucsc@123' // password 
                }
            });

            let mailOptions = {
                from: '"Kesbewa MOH" <tempsend123@gmail.com>', // sender address
                to: await recipients, //Recipients
                subject: req.body.clinic_title, // Subject line
                text: req.body.clinic_discription, // plain text body
            };

            transporter.sendMail(mailOptions,(error,info)=>{
                if(error){
                    console.log(error);
                }else{
                    console.log('Email sent: '+info.response);
                }
            })


            var clinicIDstr = await latestClinicId.pop();
            var clinicIDint = await clinicIDstr.split("C").pop();
            //await console.log(clinicIDint);
            var newClinicId ='C'+(await parseInt(clinicIDint)+1).toString();
            
            req.body.clinic_id = await newClinicId;
            //console.log(req.body.clinic_id);
        
            var data = await new clinics(req.body);
            console.log(req.body);
            await data.save();
            await console.log("Completed");
        });
},1000);
   
});

//View all Upcoming Clinics 
router.get('/viewUpComingClinics', (req, res) => {
    //Sorted in a Latest to Oldest Order
    var now = new Date();
    var newFomat = formatDate(now);
    clinics.find({date:{$gte: newFomat}}).sort({date: 'descending'}).exec(function(err, docs) { 
        res.send(docs) 
    });
    //console.log("Completed");
});

//View all Clinic Histories
router.get('/view', (req, res) => {
    //Sorted in a Latest to Oldest Order
    var now = new Date();
    clinics.find({}).sort({date: 'descending'}).exec(function(err, docs) { 
        res.send(docs) 
    });
    //console.log("Completed");
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

function formatDate(date) {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2) 
        month = '0' + month;
    if (day.length < 2) 
        day = '0' + day;

    return [year, month, day].join('-');
}






module.exports = router;