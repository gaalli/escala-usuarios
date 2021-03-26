module.exports = app => {
  const times = require("../controllers/times.controller.js");

  var router = require("express").Router();

  // Retrieve all Times
	router.get("/", times.findAll);
	// Retrieve Classificacao
	router.get("/classificacao", times.getClassificacao);


  app.use('/api/times', router);
};
