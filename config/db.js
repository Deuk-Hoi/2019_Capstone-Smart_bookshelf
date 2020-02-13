// 데이터베이스 기본 설정 파일
var mysql = require('mysql');

var db_config = {
    host     : 'localhost', // 외부에서 db 접속 시 localhost 가 아닌 서버pc의 ip 입력
    user     : 'root',
    password : 'kyj123',
    database : 'book_shelf',
    multipleStatements: true
};
var db = mysql.createConnection(db_config);

handleDisconnect(db);

function handleDisconnect(client){
    client.on('error', function (error) {
       if(!error.fatal) return;
       if (error.code !== 'PROTOCOL_CONNECTION_LOST') throw err;

        console.error('> Re-connecting lost MySQL connection: ' + error.stack);

        db = mysql.createConnection(client.config);
        handleDisconnect(db);
        db.connect();
    });
}
/*
db.connect(function (err) {
    if(err){
        console.log(err);
    }
}); //데이터베이스 연결
*/

module.exports = db;

// mysql timeout으로 발생하는 오류를 수정해야함
// mysql pool 이나 에러 핸들링을 통해 해결요함