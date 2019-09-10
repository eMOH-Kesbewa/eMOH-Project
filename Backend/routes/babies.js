var express = require('express');
var router = express.Router();

router.get('/add', async (req, res) => {

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

router.get('/view',(req,res)=>{
    res.send("Welcome");
})

module.exports = router;