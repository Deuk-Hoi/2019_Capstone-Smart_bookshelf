var express = require('express');
var db = require('../config/db');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
    res.render('mailpage');
});

router.post('/', function(req, res, next) {
  var nodemailer = require('nodemailer');
  var smtpTransport = require('nodemailer-smtp-transport');

var transporter = nodemailer.createTransport(smtpTransport({
  service: 'gmail',
  host: 'smtp.gmail.com',
  auth: {
    user: 'uitlab421s@gmail.com',
    pass: 'hoseouniv.'
  }
}));

var mailOptions = {
  from: 'uitlab421s@gmail.com',
  to: 'uitlab421s@gmail.com',
  subject: req.body.title,
  text: '연락받을 이메일 : ' + req.body.email + '\n \n내용 : '+req.body.message
};

transporter.sendMail(mailOptions, function(error, info){
  if (error) {
    console.log(error);
  } else {
    console.log('Email sent: ' + info.response);
  }
});
res.redirect('/');
});
module.exports = router;
