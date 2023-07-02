const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');

const app = express();


const db = new Map();
const USER_COOKIE_KEY = 'USER';

app.use(express.static(path.join(__dirname, 'public')));
app.use(cookieParser());
app.use(express.urlencoded({ extended: true }));

app.listen(3000, () => {
    console.log('server is running at 3000');
});

app.post('/signup', (req, res) => {
    const { username, name, password } = req.body;
    const exists = db.get(username);

    if (exists) {
        res.status(400).send(`duplicate username: ${username}`);
        return;
    }
    const newUser = {
        username,
        name,
        password,
    };
    db.set(username, newUser);
    res.cookie(USER_COOKIE_KEY, JSON.stringify(newUser));
    res.redirect('/');
});

app.get('/', (req, res) => {
    const user = req.cookies[USER_COOKIE_KEY];
    
    if (user) {
        const userData = JSON.parse(user);
        if (db.get(userData.username)) {
            res.status(200).send(`
                <a href="/logout">Log Out</a>
                <h1>id: ${userData.username}, name: ${userData.name}, password: ${userData.password}</h1>
            `);
            return;
        }
    }
    res.status(200).send(`
        <a href="/login.html">Log In</a>
        <a href="/signup.html">Sign Up</a>
        <h1>Not Logged In</h1>
    `);
});

app.get('/logout', (req, res) => {
    res.clearCookie(USER_COOKIE_KEY);
    res.redirect('/');
});

