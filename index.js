const express = require('express');
const app = express();
const mysql = require('mysql');
const PORT = process.env.port || 8000;
const cors = require('cors');

const con = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'1q2w3e',
    database:'account',
});

let corsOptions = {
    origin: "*", // 출처 허용 옵션
    credential: true, // 사용자 인증이 필요한 리소스(쿠키 ..등) 접근
  };
  
  app.use(cors(corsOptions));

con.connect();

con.query('INSERT INTO user(nickname,password) VALUES("Enrhd", "1q2w3e");'
        , ['id','nickname', 'password']
        , function (error, results, fields) {
    if (error)
        throw error;
    let member_no = results.insertId;
    console.log('The new member_no: ', member_no);

    connection.end();
});
   

app.get("/",(req,res)=>{
        res.send("success!");
    });

app.get("/list", (req, res) => {
    const sqlQuery = "SELECT *FROM user;";
    con.query(sqlQuery, (err, result) => {
      res.send(result);
    });
  });

app.listen(PORT, ()=>{
    console.log(`running on port ${PORT}`);
})