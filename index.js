const express = require('express');
const dbDataSource = require('./dbDataSource');
const app = express();
const port = 3000;

// TO DO: Fix db.query not returning results

app.use('/makes/:makeName', async (req, res) => {
    try {
        const response = await dbDataSource().getMakeByName(req.params?.makeName.toLowerCase());
        res.status(200).send(response);
    } catch (err) {
        res.status(500).send(err);
    }
});

app.use('/makes', async (req, res) => {
    try {
        const result = await dbDataSource().getMakes();
        res.status(200).send(result);
    } catch (err) {
        res.status(500).send(err);
    }
});

app.use('/models/:makeName', async (req, res) => {
    try {
        const response = await dbDataSource().getModelsByMakeName(req.params?.makeName.toLowerCase());
        res.status(200).send(response);
    } catch (err) {
        res.status(500).send(err);
    }
});

app.use('/models', async (req, res) => {
    try {
        const result = await dbDataSource().getModels();
        res.status(200).send(result);
    } catch (err) {
        res.status(500).send(err);
    }
});

app.use('/submodels/:modelName', async (req, res) => {
    try {
        const response = await dbDataSource().getSubmodelsByModelName(req.params?.modelName.toLowerCase());
        res.status(200).send(response);
    } catch (err) {
        res.status(500).send(err);
    }
});

app.use('/submodels', async (req, res) => {
    try {
        const result = await dbDataSource().getSubmodels();
        res.status(200).send(result);
    } catch (err) {
        res.status(500).send(err);
    }
});

app.use('/', (req, res) => {
    res.send('Hello World!');
});

const server = app.listen(port, () => {
    console.log(`Example app listening on port ${port}`);
});

module.exports = { app, server };