var express = require('express');
var db = require('../config/db');
var router = express.Router();

/* GET home page. */
router.get(['/', '/index'], function(req, res, next) {
  db.query(`select * from all_data ORDER BY book_value DESC;`, function (error, fields) {
    if(error){
      throw error;
    }
    var bd = fields;
    db.query(`select * from borrow ORDER BY borrow_value DESC;`, function (error, fields1) {
      if(error){
        throw error;
      }
      var bd1 = fields1;
      db.query(`SELECT SUBSTRING(end_date, 1, 10) AS ExtractString FROM borrow ORDER BY borrow_value DESC;`, function (error, day_value) {
        if(error){
          throw error;
        }
        var dv = day_value;
        const ip = req.headers['x-forwarded-for'] ||  req.connection.remoteAddress;
        console.log(ip);
        res.render('index', {'book_data': bd, 'borrow_data':fields1, 'find_book':0, 'dv':dv});
      });
    });
  });
});

router.get('/information', function(req, res, next) {
  res.render('information');
});
router.get('/elements', function(req, res, next) {
  res.render('elements');
});

router.get('/special', function(req, res, next) {
  res.render('special_thanks');
});
module.exports = router;