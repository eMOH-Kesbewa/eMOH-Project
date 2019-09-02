var express = require('express')
var app = express()
var connection = require('./connection');

var ApprovedFamily = require('./Schemas/ApprovedFamiliesSchema');
var Mother = require('./Schemas/MotherSchema');

var bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())


app.post('/', function(req, res) {

    var userlogindetails = req.body;

    var password = req.body.password;
    ApprovedFamily.find({ username: req.body.username }, (err, docs) => {
        if (!err) {
            var flag = 0;
            docs.forEach((key) => {
                console.log(key.username);
                if (password == key.password) {
                    res.send("Welcome");
                    flag = 1;
                }
            });
            if (flag == 0) res.send("Login Error");

        } else {
            res.send(JSON.stringify(err, undefined, 2));
        }

    });

});



app.post('/insert', (req, res) => {
    console.log(req.body);
    var data = new ApprovedFamily(req.body);
    data.save();
    console.log("Completed");
});

app.post('/insertmother', (req, res) => {
    console.log(req.body);
    var data = new Mother(req.body);
    data.save();
    console.log("Completed");
});

app.post('/insertmother', (req, res) => {
    console.log(req.body);
    var data = new Mother(req.body);
    data.save();
    console.log("Completed");
});

app.post('/', (req, res) => {
    console.log(req.body);
    var data = new ApprovedFamily(req.body);
    data.save();
    console.log("Completed");
});

app.get('/', (req, res) => {
    ApprovedFamily.find((err, doc) => {
        res.send(doc)
    })
});
app.listen(3000);