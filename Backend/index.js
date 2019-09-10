var ObjectId = require('mongoose').Types.ObjectId;
var express = require('express');
var app = express();
var connection = require('./connection');

var ApprovedFamily = require('./Schemas/ApprovedFamiliesSchema');

var Mother_baby = require('./Schemas/MotherBabyJoined');
var Notification = require('./Schemas/NotificationSchema');

var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())

app.use(require('./routes'));






app.get('/insert_motherbaby', async (req, res) => {

    try {
        const filter = req.query;
        const update = req.body;

        mongoose.set('useFindAndModify', false);
        await MotherBabyJoined.countDocuments(filter); // 0

        let doc = await MotherBabyJoined.findOneAndUpdate(filter, update, {
            new: true,
            upsert: true // Make this update into an upsert
        });
        console.log(doc);
    } catch (error) {
        res.status(500).send(error);
        console.log(error);
    }

});

app.get('/insert_weightheight', async (req, res) => {

    try {
        const filter = req.query;
        const update = req.body;

        mongoose.set('useFindAndModify', false);
        await WeightHeight.countDocuments(filter); // 0

        let doc = await WeightHeight.findOneAndUpdate(filter, update, {
            new: true,
            upsert: true // Make this update into an upsert
        });
        console.log(doc);
    } catch (error) {
        res.status(500).send(error);
        console.log(error);
    }

});


app.post('/insertmother', (req, res) => {
    console.log(req.body);
    var data = new Mother(req.body);
    data.save();
    console.log("Completed");
});

app.post('/insertmotherandbaby', (req, res) => {
    console.log(req.body);
    var data = new Mother_baby(req.body);
    data.save(); ++
        console.log("Completed");
});

app.post('/', (req, res) => {
    console.log(req.body);
    var data = new ApprovedFamily(req.body);
    data.save();
    console.log("Completed");
});






app.listen(3000);