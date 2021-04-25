module.exports = app => {
    const usuario = require("../controllers/usuario.controller.js");
  
    var router = require("express").Router();
  
    // Retrieve all Jogadoras
      router.get("/", usuario.findAll);
      
      router.get("/:id", usuario.findOne);
  
    app.use('/api/usuario', router);
  };
  