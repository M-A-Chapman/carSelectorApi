const mysql = require('mysql');
const dummyMakes = require('./data/dummyMakes.json')

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

            connection.query(sql, [true], (error, results, fields) => {
                if (error) return console.error(error.message);
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
        const response = connection.query(sql, [make]);
        connection.end();
        return response;
    };

    async function getModels() {
        return dummyModels;
    }

    async function getModelsByMakeName() {
        return dummyModels.models.filter((model) => model.MakeName.toLowerCase() === makeName);
    }


    async function getSubmodels() {
        return dummySubModels;
    }

    async function getSubmodelsByModelName() {
        return dummyModels.submodels.filter((submodel) => submodel.modelName.toLowerCase() === modelName);
    }


    return { getMakes, getMakeByName, getModels, getModelsByMakeName, getSubmodels, getSubmodelsByModelName };
};
