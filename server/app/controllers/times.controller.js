const db = require("../models");
const Time = db.Time;
const Usuario = db.Usuario;
const Op = db.Sequelize.Op;


// Retrieve Classificacao from the database.
exports.getClassificacao = (req, res) => {

  Time.findAll(
		{
			order: [
				['pontuacao', 'DESC']
			],
      include: Usuario
		}
	)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving tutorials."
      });
    });
};

exports.findAll = (req, res) => {
  const usuarioId = req.query.usuarioId;
  var condition = usuarioId ? { usuarioId: usuarioId}  : null;

  Time.findAll({ where: condition })
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving times."
      });
    });
};

exports.findOne = (req, res) => {

  const usuarioId = req.query.usuarioId;
  var condition = usuarioId ? { usuarioId: usuarioId}  : null;
  
  Time.findOne({ where: condition})
  .then( data => {
    res.send(data);
  })
  .catch( err => {
    res.status(500).send({
      message:
        err.message || "Some error occurred while retrieving times."
    });
  });

};

exports.create = (req, res) => {
  // Validate request
  if (!req.body.nome) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
    return;
  }

  // Save Time in the database
  Time.create({    
    nome: req.body.nomeDoTime,
    usuario : {
      nome: req.body.nome,
      email: req.body.email,
      telefone: req.body.telefone
    }
  }, {
    include: Usuario
  })
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the Tutorial."
      });
    });
};
