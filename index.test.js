// Health Check
const request = require("supertest");
const { app, server } = require("./index.js");

describe("Health Check", () => {
    afterAll((done) => {
        server.close(done); // Close the server after all tests are complete
    });

    // Test GET /api/user endpoint
    it("GET / - success", async () => {
        const response = await request(app).get("/");
        expect(response.status).toBe(200);
        expect(response.text).toEqual('Hello World!');
    });
});