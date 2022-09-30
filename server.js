'use strict';

const express = require('express');

// constants
const PORT = 8080;
const HOST = '0.0.0.0';

// app
const app = express();
app.get('/', (req, res) => {
    res.json("Hello world");
});

app.listen(PORT, HOST, () => {
    console.log(`Running server on http://${HOST}:${PORT}`);
});