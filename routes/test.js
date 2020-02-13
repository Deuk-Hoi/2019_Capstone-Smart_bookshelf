var express = require('express');
var db = require('../config/db');
var router = express.Router();

/* GET home page. */

router.get('/test', function(req, res, next) {
    res.render('test');
});
module.exports = router;