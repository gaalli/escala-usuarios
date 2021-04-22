module.exports = app => {
    const equipes = require("../controllers/equipes.controller.js");
  
    var router = require("express").Router();
  
    // Retrieve all Jogadoras
      router.get("/", equipes.findAll);
      
      router.get("/:id", equipes.findOne);
  
    app.use('/api/equipes', router);
  };
  