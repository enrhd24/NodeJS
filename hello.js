const http = require("http")
const url = require("url")
const express = require("express")

const app = express();
const port = 3000;


app.listen(port,()=>{
    console.log(`START SERVER : use ${port}`);
})

app.get("/", (_,res)=> res.end("HOME"));
app.get("/first",first);
app.get("/second", second);

function first(req,res){
    const first = url.parse(req.url, true).query;
    res.json(`[first] name : ${first.name}, age : ${first.age}`);
}

function second(_, res){
    res.json(
        `<ul>
            <li>picture1</li>
            <li>picture2</li>
            <li>picture3</li>
        </ul>`
    );
}


http
.createServer((req, res)=>{
    const path = url.parse(req.url,true).pathname;
    res.setHeader("Content-Type", "text/html");
    if(path in urlMap){
        urlMap[path](req,res);
    }else{
        notFound(req,res);
        }
    })
        .listen("8000", ()=> console.log("라우터를 만들어보자!"));

const user = (req, res) => {
    const userInfo = url.parse(req.url, true).query;
    res.end(`[user] name: ${userInfo.name}, age: ${userInfo.age}`);
};

const feed = (req,res)=> {
    res.end(`<ul>
                <li>picture1</li>
                <li>picture2</li>
                <li>picture3</li>
            </ul>`
            );
};

const notFound = (req,res) => {
    res.statusCode = 404;
    res.end("404 page not found");
;}

const urlMap={
    "/":(req,res) => res.end("HOME"),
    "/user":user,
    "/feed":feed,
};