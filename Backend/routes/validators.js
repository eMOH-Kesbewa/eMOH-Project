const express = require('express');
const router =  express.Router();
const validators = require('../scripts/validators');

router.post('/idValidator',(req,res)=>{
    const userid = req.body;
    res.json(validators.idValidation(userid));
});

router.post('/usernameValidator',(req,res)=>{
    const username = req.body;
    const p = validators.usernameValidation(username);
    p.then(
        val =>res.json(val),
        () => {

        },
    );
});

router.post('/pwdValidator',(req,res)=>{
    const pwd = req.body;
    res.json(validators.pwdValidation(pwd));
});

router.post('/roleValidator',(req,res)=>{
    const role = req.body;
    res.json(validators.roleValidation(role));
});

router.post('/areaidValidator',(req,res)=>{
    const areaid = req.body;
    res.json(validators.areaidValidation(areaid));
});

module.exports = router;