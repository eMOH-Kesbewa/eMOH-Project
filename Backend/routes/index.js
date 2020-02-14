var express = require('express');
const app = express();
var router = express.Router();


router.use('/babies',require('./babies.js'));
router.use('/families',require('./families'));
router.use('/clinics',require('./clinics'));
router.use('/mothers',require('./mothers'));
router.use('/reports',require('./reports'));
router.use('/phms',require('./phms'));
router.use('/specialAttention',require('./specialAttention'));
const user = router.use('/users',require('./users'));
app.use('/user',user);



module.exports = router;

