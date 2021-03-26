module.exports = app => {
  const escalacao = require("../controllers/escalacao.controller.js");

  var router = require("express").Router();

  // Retrieve all Jogadoras
	router.get("/", escalacao.findAll);
	
	router.get("/:id", escalacao.findOne);

  app.use('/api/escalacao', router);
};
