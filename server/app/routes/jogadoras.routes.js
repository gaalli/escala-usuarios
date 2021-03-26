module.exports = app => {
  const jogadoras = require("../controllers/jogadoras.controller.js");

  var router = require("express").Router();

  // Retrieve all Jogadoras
	router.get("/", jogadoras.findAll);
	
	router.get("/:id", jogadoras.findOne);

  app.use('/api/jogadoras', router);
};
