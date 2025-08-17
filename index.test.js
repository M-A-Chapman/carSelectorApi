// Health Check
const request = require("supertest");
const { app, server } = require("./index.js");
const expectedMakesResponse = require("./test/expectedMakes");
const expectedModelsResponse = require("./test/expectedModels");
const expectedSubmodelsResponse = require("./test/expectedSubmodels");

describe("Health Check", () => {
    // Test GET / endpoint
    it("GET / - success", async () => {
        const response = await request(app).get("/");
        expect(response.status).toBe(200);
        expect(response.text).toEqual('Hello World!');
    });
});

describe("Makes", () => {
    // Test GET /makes endpoint
    it("GET /makes - success", async () => {
        const response = await request(app).get("/makes");
        expect(response.status).toBe(200);
        expect(response.body).toEqual(expectedMakesResponse);
    });

    // Test GET /makes endpoint
    it("GET /makes/:makeName - success", async () => {
        const response = await request(app).get("/makes/mitsubishi");
        expect(response.status).toBe(200);
        expect(response.body).toEqual([expectedMakesResponse.makes[34]]);
    });
});

describe("Models", () => {
    // Test GET /makes endpoint
    it("GET /models - success", async () => {
        const response = await request(app).get("/models");
        expect(response.status).toBe(200);
        expect(response.body).toEqual(expectedModelsResponse);
    });

    // Test GET /makes endpoint
    it("GET /models/:makeName - success", async () => {
        const response = await request(app).get("/models/mitsubishi");
        expect(response.status).toBe(200);
        expect(response.body).toEqual([expectedModelsResponse.models[34]]);
    });
});

describe("Submodels", () => {
    // Test GET /makes endpoint
    it("GET /submodels - success", async () => {
        const response = await request(app).get("/submodels");
        expect(response.status).toBe(200);
        expect(response.body).toEqual(expectedSubmodelsResponse);
    });

    // Test GET /makes endpoint
    it("GET /submodels/:modelName - success", async () => {
        const response = await request(app).get("/submodels/mitsubishi");
        expect(response.status).toBe(200);
        expect(response.body).toEqual([expectedSubmodelsResponse.models[34]]);
    });
});

afterAll((done) => {
    server.close(done); // Close the server after all tests are complete
});