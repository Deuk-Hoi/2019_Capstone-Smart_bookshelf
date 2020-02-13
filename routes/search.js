var express = require('express');
var db = require('../config/db');
var router = express.Router();
var s_select;
var s_data;
var recheck=0;

/* GET home page. */
router.get('/', function(req, res, next) {
    recheck=0;
    res.redirect('search/page/1');
});

router.get('/page/:num', function(req, res, next) {
    if(recheck==0){
        db.query('select * from all_data ORDER BY book_value DESC', function (error, fields) {
            if(error){
                throw error;
            }

            res.render('search_main', {'book_data': fields, 'page_num' : req.params.num});
        });
    }
    else{
        var query1 = 'select * from all_data where ';
        var query2 = ' like "%';
        var query3 = '%" ORDER BY book_value DESC;';
        var fin = query1 + s_select + query2 + s_data + query3;
        db.query(fin, function (error, fields) {
            if(error){
                throw error;
            }
            res.render('search_main', {'book_data': fields, 'page_num' : req.params.num});
        });
    }
});

router.post('/page/:num', function(req, res, next) {
    recheck=1;
    s_select = req.body.category;
    s_data = req.body.search_data;
    console.log("셀렉트 값 : " + s_select);
    console.log("일반 값 : " + s_data);
    if(s_select==0){
       var fin = 'select * from all_data ORDER BY book_value DESC;';
    }
    else{
        var query1 = 'select * from all_data where ';
        var query2 = ' like "%';
        var query3 = '%" ORDER BY book_value DESC;';
        var fin = query1 + s_select + query2 + s_data + query3;
    }
    console.log(fin);
    db.query(fin, function (error, fields) {
        if(error){
            throw error;
        }
        res.render('search_main', {'book_data': fields, 'page_num' : 1});
    });
});

router.get('/detail/:num', function(req, res, next) {
    db.query(`select * from all_data where book_value = ?`, req.params.num, function (error, fields) {
        if(error){
            throw error;
        }
        res.render('search_detail', {'book_data': fields});
    });
});

router.get('/find_book_first/:num', function(req, res, next) {
    db.query(`select * from all_data where book_value = ?`, req.params.num, function (error, fields) {
        if(error){
            throw error;
        }
        res.render('find_book_first', {'book_data': fields});
    });
});

router.get('/find_book/:num', function(req, res, next) {
    console.log("")
    db.query(`select * from all_data where book_value = ?`, req.params.num, function (error, fields) {
        if(error){
            throw error;
        }
        res.render('find_book', {'book_data': fields});
    });
});
router.get('/find_result', function(req, res, next) {
    res.render('find_result');
});
router.get('/borrow/:num', function(req, res, next) {
    db.query(`select * from all_data where book_value = ?`, req.params.num, function (error, fields) {
        if(error){
            throw error;
        }
        res.render('borrow', {'book_data': fields});
    });
});
router.post('/borrow/:num', function(req, res, next) {
    var qd = "INSERT INTO `borrow`(book_value,stunum,stuname, start_date,end_date) VALUES ("+req.params.num+",'"+req.body.inputnum+"','"+req.body.inputname+"',now(), date_add(now(),INTERVAL 14 DAY));";
    console.log("asdf : " + req.params.num);
    console.log("asdf : " + req.body.inputnum);
    console.log("asdf : " + req.body.inputname);
    db.query(qd, function (error, field) {
        if(error){
            throw error;
        }
        db.query(`update all_data set QoB_state=QoB_state-1 where book_value=?`, req.params.num, function (error, QoB_data) {
            if(error){
                throw error;
            }
        });
    });

});

// router.post('/', function(req, res, next) {
//     db.query(`select * from all_data`, function (error, fields) {
//         if(error){
//             throw error;
//         }
//         console.log("1번:"+req.body.uid);
//         console.log("2번:" +req.body.uid2);
//         var i = 0;
//         var check = 0;
//         for(i = 0 ; i<fields.length; i++){
//             if(req.body.uid == fields[i].RFID_value){
//                 console.log("이 책의 이름은 : " + fields[i].title);
//                 res.write('ok', function () {
//                     res.end();
//                 });
//             }
//             if(req.body.uid2 == fields[i].RFID_value){
//                 console.log("이 책의 이름은 : " + fields[i].title);
//                 res.write('ok', function () {
//                     res.end();
//                 });
//             }
//         }
//     });
// });
module.exports = router;