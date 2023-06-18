const express = require('express')
const cors = require('cors')

const app = express()
const port = 3000

app.use(cors())

app.get('/', function (req, res) {
  res.send('Hello World')
})

app.get('/user/:id', function (req, res) {
    // const p = req.params
    // res.send({'userid':p.id})

    const {id} = req.query
    res.send({"userq":id.q, "username":id.name, "userage":id.age})
    //http://localhost:3000/user/asdf?q=enrhd&name=job&age=20
    
})

app.get('/sound/:name', function (req, res) {
    const {name} = req.params
    if(name == name) res.json({'sound':name})
    else {res.json({"sound":'NULL'})}
    
})

app.listen(port, ()=> {
    console.log(`Example app listen ${port}`)
})

//setTimeout(()=>{console.log("1초"),1000});
