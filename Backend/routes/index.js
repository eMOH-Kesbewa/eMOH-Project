var express = require('express');
var router = express.Router();

router.use('/babies',require('./babies.js'));
router.use('/families',require('./families'));
//router.use('/clinics',require('./clinics'));
router.use('/mothers',require('./mothers'));
router.use('/login',require('./login'));
module.exports = router;