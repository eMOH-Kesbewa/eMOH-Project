var express = require('express');
var router = express.Router();
var clinics = require('../Schemas/clinic');
var mongoose = require('mongoose');
var users = require('../Schemas/useraccountSchema');
const nodemailer = require('nodemailer');
const useraccounts = require('../Schemas/useraccountSchema');
/*
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
                to: await 'shnrndk@gmail.com', //Recipients
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
            await data.save((err,docs)=>{
                if(err) res.status(500).send("Error");
                else res.status(200).send("Successful");
                
            });
            await console.log("Completed");
        });
},1000);
   
});
*/
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

router.get('/getLatestClinicId', (req, res) => {
    //Sorted in a Latest to Oldest Order
    clinics.find().sort( { _id : -1 } ).limit(1).exec(function(err, docs) { 
        res.send(docs) 
    });
    //console.log("Completed");
});

router.post('/add', (req, res) => {
    console.log(req.body);
    var data = new clinics(req.body);
    data.save((err,doc)=>{
        if(err) {
            console.log(handleError(err));
            res.status(500).json("Error When Inserting");
        }
        else if(doc){
            res.status(200).json("Inserted successfully.");
        }
    });
    console.log("Completed");
});

router.post('/add', (req, res) => {
    console.log(req.body);
    var data = new clinics(req.body);
    
});

router.post("/sendmail",  (req, res) => {
    //console.log("request came");
    //console.log(req.body)
    let user=[];
    clinicData = req.body;
     useraccounts.find({role:'mother'}).exec(function(err, docs) { 
        console.log(docs) 
        docs.forEach(element=>{
            //console.log(element['username'])
            user.push(element['username'])
        }
        )
        sendMail(user,clinicData,info => {
            console.log(`The mails has been send and the id is ${info.messageId}`);
            res.send(info);
          });
    });
   
    

    
  });
  
  async function sendMail(user,clinicData,callback) {
    // create reusable transporter object using the default SMTP transport
    let transporter = nodemailer.createTransport({
      host: "smtp.gmail.com",
      port: 587,
      secure: false, // true for 465, false for other ports
      auth: {
        user: "kesbewaemoh@gmail.com",
        pass: "tempsend123"
      }
    });
  
    let mailOptions = {
      from: '"Kesbewa MOH"<kesbewaemoh@gmail.com>', // sender address
      to: user, // list of receivers
      subject: `Sceduled New Clinic - ${clinicData['clinic_title']}`, // Subject line
      html: `<h3>${clinicData['clinic_discription']}</h3><br>
      <h5>Emails has been sent by eMOH notification system</h5>`
    };
  
    // send mail with defined transport object
    let info = await transporter.sendMail(mailOptions);
  
    callback(info);
  }
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