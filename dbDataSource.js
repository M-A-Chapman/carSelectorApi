const mysql = require('mysql');
const dummyMakes = require('./data/dummyMakes.json');
const dummyModels = require('./data/dummyModels.json');
const dummySubmodels = require('./data/dummySubmodels.json');

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: 'cars'
});

// TO DO - fix DB connection & querying

module.exports = () => {
    async function getMakes() {
        return dummyMakes;
        const sql = `SELECT * FROM makes`;

        connection.connect((err) => {
            if (err) return console.error(err.message);

            const results = connection.query(sql, [true], (error, results, fields) => {
                if (error) return console.error(error.message);
                return results
            });

            // close the database connection
            connection.end();
            return results;
        });
    };

    async function getMakeByName(makeName = '*') {
        return dummyMakes.makes.filter((make) => make.MakeName.toLowerCase() === makeName);
        const sql = `
        SELECT makeId 
        FROM makes 
        WHERE makeName = ?`
        const response = connection.query(sql, [makeName]);
        connection.end();
        return response;
    };

    async function getModels() {
        return dummyModels;
    }

    async function getModelsByMakeName(makeName = '*') {
        return dummyModels.models.filter((model) => model.MakeName.toLowerCase() === makeName);
    }


    async function getSubmodels() {
        return dummySubmodels;
    }

    async function getSubmodelsByModelName(modelName = '*') {
        return dummySubmodels.submodels.filter((submodel) => submodel.ModelName.toLowerCase() === modelName);
    }


    return { getMakes, getMakeByName, getModels, getModelsByMakeName, getSubmodels, getSubmodelsByModelName };
};
