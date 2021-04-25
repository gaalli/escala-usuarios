module.exports = app => {
    const formacao = require("../controllers/formacao.controller.js");
  
    var router = require("express").Router();
  
    // Retrieve all Jogadoras
      router.get("/", formacao.findAll);
      
      router.get("/:id", formacao.findOne);
  
    app.use('/api/formacao', router);
  };
  