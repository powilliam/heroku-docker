import express from "express";

const app = express();

const state: any[] = [];

app.get("/", (request, response) => response.json({ state }));

app.post("/", (request, response) => {
  state.push(request.body);

  return response.json({ state });
});

app.listen(process.env.PORT || 8080);
