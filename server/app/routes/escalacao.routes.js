module.exports = app => {
  const escalacao = require("../controllers/escalacao.controller.js");

  var router = require("express").Router();

	router.get("/", escalacao.findAll);
	
	router.get("/byId/:id", escalacao.findByPk);

  router.get("/byRodada/", escalacao.findOne);

  router.post("/", escalacao.create);

  router.put("/:id", escalacao.update);

  app.use('/api/escalacao', router);
};
