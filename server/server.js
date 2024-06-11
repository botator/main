const express = require('express')
const app = express()
const mysql = require('mysql2')
const http = require('http')
const cors = require('cors')

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: "",
    database: "webotthon"
});


app.use(cors())

app.post('/api/items', (req, res) => {

    db.query('SELECT * FROM itemek', (err, rows) => {
        if (err) { throw err }
        res.json(rows)
    })

})

http.createServer(app).listen(8080, () => {
    console.log("http szerver fut")
})

db.connect(err => {
    if (err) { throw err }
    console.log("adatbázis kapcsolat létrejött")
});

app.get('/api/faj/:nev', (req, res) => {

    const name = req.params.nev
    db.query('SELECT * FROM `itemek` WHERE itemek.faj ="'+name+'"', (err, rows) => {
        if (err) { throw err }
        res.json(rows)

    })

})
